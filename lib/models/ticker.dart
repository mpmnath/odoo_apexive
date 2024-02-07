import 'dart:async';

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) {
      print('tick: ${ticks - x - 1}');
      return ticks - x - 1;
    }).take(ticks);
  }

  Future<int> getCurrentTick() async {
    final completer = Completer<int>();

    tick(ticks: 1).listen((tick) {
      completer.complete(tick);
    });

    return completer.future;
  }
}
