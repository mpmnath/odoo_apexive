import 'package:flutter/material.dart';

class ColorPalette {
  const ColorPalette();

  //light theme colors
  static const Color lightPrimary = Color(0xffffffff);
  static const Color lightOnPrimary = Color(0xff000000);
  static const Color lightPrimaryContainer = Color(0xffffffff);
  static const Color lightOnPrimaryContainer = Color(0xff000000);
  static const Color lightSecondary = Color(0x29ffffff);
  static const Color lightOnSecondary = Color(0xffffffff);
  static const Color lightSecondaryContainer = Color(0x29ffffff);
  static const Color lightOnSecondaryContainer = Color(0xffffffff);
  static const Color lightTertiary = Color(0x52ffffff);
  static const Color lightOnTertiary = Color(0xff000000);
  static const Color lightTertiaryContainer = Color(0x52ffffff);
  static const Color lightOnTertiaryContainer = Color(0xff000000);
  static const LinearGradient lightSurface = LinearGradient(
    colors: [
      Color(0xff0C1d4d),
      Color(0xff214ecc),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  static const Color lightOnSurface = Color(0xffffffff);
  static const Color lightSurfaceVariant = Color(0x03000000);
  static const Color lightOnSurfaceVariant = Color(0xffffffff);
  static const LinearGradient lightBackground = LinearGradient(
    colors: [
      Color(0xff0C1d4d),
      Color(0xff214ecc),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  static const Color lightOnBackground = Color(0xffffffff);
  static const Color lightError = Color(0xffcc3c21);
  static const Color lightOnerror = Color(0xffffffff);
  static const Color lightErrorContainer = Color(0x52cc3c21);
  static const Color lightOnErrorContainer = Color(0xffcc3c21);
  static const Color lightOutline = Color(0x29ffffff);
  static const Color lightOutlinevariant = Color(0x7affffff);
  static const Color lightSurfaceat1 = Color(0x14ffffff);
  static const Color lightSurfaceat2 = Color(0x29ffffff);
  static const Color lightSurfaceat3 = Color(0x3dffffff);
  static const Color lightSurfaceat4 = Color(0x52ffffff);
  static const Color lightSurfaceat5 = Color(0x7affffff);

  //dark theme colors
  static const Color darkPrimary = Color(0xff000000);
  static const Color darkOnPrimary = Color(0xffffffff);
  static const Color darkPrimaryContainer = Color(0xffffffff);
  static const Color darkOnPrimaryContainer = Color(0xff000000);
  static const Color darkSecondary = Color(0x29ffffff);
  static const Color darkOnSecondary = Color(0xffffffff);
  static const Color darkSecondaryContainer = Color(0x3dffffff);
  static const Color darkOnSecondaryContainer = Color(0xffffffff);
  static const Color darkTertiary = Color(0x52ffffff);
  static const Color darkOnTertiary = Color(0xffffffff);
  static const Color darkTertiaryContainer = Color(0x7affffff);
  static const Color darkOnTertiaryContainer = Color(0xffffffff);
  static const Color darkError = Color(0xffcc3c21);
  static const Color darkOnError = Color(0xffffffff);
  static const Color darkErrorContainer = Color(0x52cc3c21);
  static const Color darkOnErrorContainer = Color(0xffcc3c21);
  static const Color darkBackground = Color(0xff000000);
  static const Color darkOnBackground = Color(0xffffffff);
  static const LinearGradient darkSurface = LinearGradient(
    colors: [
      Color(0xff000000),
      Color(0xff292929),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  static const Color darkOnSurface = Color(0xffffffff);
  static const Color darkSurfaceVariant = Color(0xff000000);
  static const Color darkOnSurfaceVariant = Color(0xffffffff);
  static const Color darkOutline = Color(0x29ffffff);
  static const Color darkOutlinevariant = Color(0x7affffff);
  static const Color darkSurfaceat1 = Color(0x1fffffff);
  static const Color darkSurfaceat2 = Color(0x33ffffff);
  static const Color darkSurfaceat3 = Color(0x47ffffff);
  static const Color darkSurfaceat4 = Color(0x5cffffff);
  static const Color darkSurfaceat5 = Color(0x85ffffff);

  //material theme
  static const Color materialthemewhite = Color(0xffffffff);
  static const Color materialthemeblack = Color(0xff000000);

  //material theme - sys light
  static const Color materialthemesyslightprimary = Color(0xff6750a4);
  static const Color materialthemesyslightonprimary = Color(0xffffffff);
  static const Color materialthemesyslightprimarycontainer = Color(0xffeaddff);
  static const Color materialthemesyslightonprimarycontainer =
      Color(0xff21005d);
  static const Color materialthemesyslightprimaryfixed = Color(0xffeaddff);
  static const Color materialthemesyslightonprimaryfixed = Color(0xff21005d);
  static const Color materialthemesyslightprimaryfixeddim = Color(0xffd0bcff);
  static const Color materialthemesyslightonprimaryfixedvariant =
      Color(0xff4f378b);
  static const Color materialthemesyslightsecondary = Color(0xff625b71);
  static const Color materialthemesyslightonsecondary = Color(0xffffffff);
  static const Color materialthemesyslightsecondarycontainer =
      Color(0xffe8def8);
  static const Color materialthemesyslightonsecondarycontainer =
      Color(0xff1d192b);
  static const Color materialthemesyslightsecondaryfixed = Color(0xffe8def8);
  static const Color materialthemesyslightonsecondaryfixed = Color(0xff1d192b);
  static const Color materialthemesyslightsecondaryfixeddim = Color(0xffccc2dc);
  static const Color materialthemesyslightonsecondaryfixedvariant =
      Color(0xff4a4458);
  static const Color materialthemesyslighttertiary = Color(0xff7d5260);
  static const Color materialthemesyslightontertiary = Color(0xffffffff);
  static const Color materialthemesyslighttertiarycontainer = Color(0xffffd8e4);
  static const Color materialthemesyslightontertiarycontainer =
      Color(0xff31111d);
  static const Color materialthemesyslighttertiaryfixed = Color(0xffffd8e4);
  static const Color materialthemesyslightontertiaryfixed = Color(0xff31111d);
  static const Color materialthemesyslighttertiaryfixeddim = Color(0xffefb8c8);
  static const Color materialthemesyslightontertiaryfixedvariant =
      Color(0xff633b48);
  static const Color materialthemesyslighterror = Color(0xffb3261e);
  static const Color materialthemesyslightonerror = Color(0xffffffff);
  static const Color materialthemesyslighterrorcontainer = Color(0xfff9dedc);
  static const Color materialthemesyslightonerrorcontainer = Color(0xff410e0b);
  static const Color materialthemesyslightoutline = Color(0xff79747e);
  static const Color materialthemesyslightbackground = Color(0xfffef7ff);
  static const Color materialthemesyslightonbackground = Color(0xff1d1b20);
  static const Color materialthemesyslightsurface = Color(0xfffef7ff);
  static const Color materialthemesyslightonsurface = Color(0xff1d1b20);
  static const Color materialthemesyslightsurfacevariant = Color(0xffe7e0ec);
  static const Color materialthemesyslightonsurfacevariant = Color(0xff49454f);
  static const Color materialthemesyslightinversesurface = Color(0xff322f35);
  static const Color materialthemesyslightinverseonsurface = Color(0xfff5eff7);
  static const Color materialthemesyslightinverseprimary = Color(0xffd0bcff);
  static const Color materialthemesyslightshadow = Color(0xff000000);
  static const Color materialthemesyslightsurfacetint = Color(0xff6750a4);
  static const Color materialthemesyslightoutlinevariant = Color(0xffcac4d0);
  static const Color materialthemesyslightscrim = Color(0xff000000);
  static const Color materialthemesyslightsurfacecontainerhighest =
      Color(0xffe6e0e9);
  static const Color materialthemesyslightsurfacecontainerhigh =
      Color(0xffece6f0);
  static const Color materialthemesyslightsurfacecontainer = Color(0xfff3edf7);
  static const Color materialthemesyslightsurfacecontainerlow =
      Color(0xfff7f2fa);
  static const Color materialthemesyslightsurfacecontainerlowest =
      Color(0xffffffff);
  static const Color materialthemesyslightsurfacebright = Color(0xfffef7ff);
  static const Color materialthemesyslightsurfacedim = Color(0xffded8e1);

  //material theme - sys dark
  static const Color materialthemesysdarkprimary = Color(0xffd0bcff);
  static const Color materialthemesysdarkonprimary = Color(0xff381e72);
  static const Color materialthemesysdarkprimarycontainer = Color(0xff4f378b);
  static const Color materialthemesysdarkonprimarycontainer = Color(0xffeaddff);
  static const Color materialthemesysdarkprimaryfixed = Color(0xffeaddff);
  static const Color materialthemesysdarkonprimaryfixed = Color(0xff21005d);
  static const Color materialthemesysdarkprimaryfixeddim = Color(0xffd0bcff);
  static const Color materialthemesysdarkonprimaryfixedvariant =
      Color(0xff4f378b);
  static const Color materialthemesysdarksecondary = Color(0xffccc2dc);
  static const Color materialthemesysdarkonsecondary = Color(0xff332d41);
  static const Color materialthemesysdarksecondarycontainer = Color(0xff4a4458);
  static const Color materialthemesysdarkonsecondarycontainer =
      Color(0xffe8def8);
  static const Color materialthemesysdarksecondaryfixed = Color(0xffe8def8);
  static const Color materialthemesysdarkonsecondaryfixed = Color(0xff1d192b);
  static const Color materialthemesysdarksecondaryfixeddim = Color(0xffccc2dc);
  static const Color materialthemesysdarkonsecondaryfixedvariant =
      Color(0xff4a4458);
  static const Color materialthemesysdarktertiary = Color(0xffefb8c8);
  static const Color materialthemesysdarkontertiary = Color(0xff492532);
  static const Color materialthemesysdarktertiarycontainer = Color(0xff633b48);
  static const Color materialthemesysdarkontertiarycontainer =
      Color(0xffffd8e4);
  static const Color materialthemesysdarktertiaryfixed = Color(0xffffd8e4);
  static const Color materialthemesysdarkontertiaryfixed = Color(0xff31111d);
  static const Color materialthemesysdarktertiaryfixeddim = Color(0xffefb8c8);
  static const Color materialthemesysdarkontertiaryfixedvariant =
      Color(0xff633b48);
  static const Color materialthemesysdarkerror = Color(0xfff2b8b5);
  static const Color materialthemesysdarkonerror = Color(0xff601410);
  static const Color materialthemesysdarkerrorcontainer = Color(0xff8c1d18);
  static const Color materialthemesysdarkonerrorcontainer = Color(0xfff9dedc);
  static const Color materialthemesysdarkoutline = Color(0xff938f99);
  static const Color materialthemesysdarkbackground = Color(0xff141218);
  static const Color materialthemesysdarkonbackground = Color(0xffe6e0e9);
  static const Color materialthemesysdarksurface = Color(0xff141218);
  static const Color materialthemesysdarkonsurface = Color(0xffe6e0e9);
  static const Color materialthemesysdarksurfacevariant = Color(0xff49454f);
  static const Color materialthemesysdarkonsurfacevariant = Color(0xffcac4d0);
  static const Color materialthemesysdarkinversesurface = Color(0xffe6e0e9);
  static const Color materialthemesysdarkinverseonsurface = Color(0xff322f35);
  static const Color materialthemesysdarkinverseprimary = Color(0xff6750a4);
  static const Color materialthemesysdarkshadow = Color(0xff000000);
  static const Color materialthemesysdarksurfacetint = Color(0xffd0bcff);
  static const Color materialthemesysdarkoutlinevariant = Color(0xff49454f);
  static const Color materialthemesysdarkscrim = Color(0xff000000);
  static const Color materialthemesysdarksurfacecontainerhighest =
      Color(0xff36343b);
  static const Color materialthemesysdarksurfacecontainerhigh =
      Color(0xff2b2930);
  static const Color materialthemesysdarksurfacecontainer = Color(0xff211f26);
  static const Color materialthemesysdarksurfacecontainerlow =
      Color(0xff1d1b20);
  static const Color materialthemesysdarksurfacecontainerlowest =
      Color(0xff0f0d13);
  static const Color materialthemesysdarksurfacebright = Color(0xff3b383e);
  static const Color materialthemesysdarksurfacedim = Color(0xff141218);

  //material theme - ref
  static const Color materialthemerefprimaryprimary0 = Color(0xff000000);
  static const Color materialthemerefprimaryprimary10 = Color(0xff21005d);
  static const Color materialthemerefprimaryprimary20 = Color(0xff381e72);
  static const Color materialthemerefprimaryprimary30 = Color(0xff4f378b);
  static const Color materialthemerefprimaryprimary40 = Color(0xff6750a4);
  static const Color materialthemerefprimaryprimary50 = Color(0xff7f67be);
  static const Color materialthemerefprimaryprimary60 = Color(0xff9a82db);
  static const Color materialthemerefprimaryprimary70 = Color(0xffb69df8);
  static const Color materialthemerefprimaryprimary80 = Color(0xffd0bcff);
  static const Color materialthemerefprimaryprimary90 = Color(0xffeaddff);
  static const Color materialthemerefprimaryprimary95 = Color(0xfff6edff);
  static const Color materialthemerefprimaryprimary99 = Color(0xfffffbfe);
  static const Color materialthemerefprimaryprimary100 = Color(0xffffffff);
  static const Color materialthemerefsecondarysecondary0 = Color(0xff000000);
  static const Color materialthemerefsecondarysecondary10 = Color(0xff1d192b);
  static const Color materialthemerefsecondarysecondary20 = Color(0xff332d41);
  static const Color materialthemerefsecondarysecondary30 = Color(0xff4a4458);
  static const Color materialthemerefsecondarysecondary40 = Color(0xff625b71);
  static const Color materialthemerefsecondarysecondary50 = Color(0xff7a7289);
  static const Color materialthemerefsecondarysecondary60 = Color(0xff958da5);
  static const Color materialthemerefsecondarysecondary70 = Color(0xffb0a7c0);
  static const Color materialthemerefsecondarysecondary80 = Color(0xffccc2dc);
  static const Color materialthemerefsecondarysecondary90 = Color(0xffe8def8);
  static const Color materialthemerefsecondarysecondary95 = Color(0xfff6edff);
  static const Color materialthemerefsecondarysecondary99 = Color(0xfffffbfe);
  static const Color materialthemerefsecondarysecondary100 = Color(0xffffffff);
  static const Color materialthemereftertiarytertiary0 = Color(0xff000000);
  static const Color materialthemereftertiarytertiary10 = Color(0xff31111d);
  static const Color materialthemereftertiarytertiary20 = Color(0xff492532);
  static const Color materialthemereftertiarytertiary30 = Color(0xff633b48);
  static const Color materialthemereftertiarytertiary40 = Color(0xff7d5260);
  static const Color materialthemereftertiarytertiary50 = Color(0xff986977);
  static const Color materialthemereftertiarytertiary60 = Color(0xffb58392);
  static const Color materialthemereftertiarytertiary70 = Color(0xffd29dac);
  static const Color materialthemereftertiarytertiary80 = Color(0xffefb8c8);
  static const Color materialthemereftertiarytertiary90 = Color(0xffffd8e4);
  static const Color materialthemereftertiarytertiary95 = Color(0xffffecf1);
  static const Color materialthemereftertiarytertiary99 = Color(0xfffffbfa);
  static const Color materialthemereftertiarytertiary100 = Color(0xffffffff);
  static const Color materialthemereferrorerror0 = Color(0xff000000);
  static const Color materialthemereferrorerror10 = Color(0xff410e0b);
  static const Color materialthemereferrorerror20 = Color(0xff601410);
  static const Color materialthemereferrorerror30 = Color(0xff8c1d18);
  static const Color materialthemereferrorerror40 = Color(0xffb3261e);
  static const Color materialthemereferrorerror50 = Color(0xffdc362e);
  static const Color materialthemereferrorerror60 = Color(0xffe46962);
  static const Color materialthemereferrorerror70 = Color(0xffec928e);
  static const Color materialthemereferrorerror80 = Color(0xfff2b8b5);
  static const Color materialthemereferrorerror90 = Color(0xfff9dedc);
  static const Color materialthemereferrorerror95 = Color(0xfffceeee);
  static const Color materialthemereferrorerror99 = Color(0xfffffbf9);
  static const Color materialthemereferrorerror100 = Color(0xffffffff);
  static const Color materialthemerefneutralneutral0 = Color(0xff000000);
  static const Color materialthemerefneutralneutral4 = Color(0xff0f0d13);
  static const Color materialthemerefneutralneutral6 = Color(0xff141218);
  static const Color materialthemerefneutralneutral10 = Color(0xff1d1b20);
  static const Color materialthemerefneutralneutral12 = Color(0xff211f26);
  static const Color materialthemerefneutralneutral17 = Color(0xff2b2930);
  static const Color materialthemerefneutralneutral20 = Color(0xff322f35);
  static const Color materialthemerefneutralneutral22 = Color(0xff36343b);
  static const Color materialthemerefneutralneutral24 = Color(0xff3b383e);
  static const Color materialthemerefneutralneutral30 = Color(0xff48464c);
  static const Color materialthemerefneutralneutral40 = Color(0xff605d64);
  static const Color materialthemerefneutralneutral50 = Color(0xff79767d);
  static const Color materialthemerefneutralneutral60 = Color(0xff938f96);
  static const Color materialthemerefneutralneutral70 = Color(0xffaea9b1);
  static const Color materialthemerefneutralneutral80 = Color(0xffcac5cd);
  static const Color materialthemerefneutralneutral87 = Color(0xffded8e1);
  static const Color materialthemerefneutralneutral90 = Color(0xffe6e0e9);
  static const Color materialthemerefneutralneutral92 = Color(0xffece6f0);
  static const Color materialthemerefneutralneutral94 = Color(0xfff3edf7);
  static const Color materialthemerefneutralneutral95 = Color(0xfff5eff7);
  static const Color materialthemerefneutralneutral96 = Color(0xfff7f2fa);
  static const Color materialthemerefneutralneutral99 = Color(0xfffffbff);
  static const Color materialthemerefneutralneutral100 = Color(0xffffffff);
  static const Color materialthemerefneutralvariantneutralvariant0 =
      Color(0xff000000);
  static const Color materialthemerefneutralvariantneutralvariant10 =
      Color(0xff1d1a22);
  static const Color materialthemerefneutralvariantneutralvariant20 =
      Color(0xff322f37);
  static const Color materialthemerefneutralvariantneutralvariant30 =
      Color(0xff49454f);
  static const Color materialthemerefneutralvariantneutralvariant40 =
      Color(0xff605d66);
  static const Color materialthemerefneutralvariantneutralvariant50 =
      Color(0xff79747e);
  static const Color materialthemerefneutralvariantneutralvariant60 =
      Color(0xff938f99);
  static const Color materialthemerefneutralvariantneutralvariant70 =
      Color(0xffaea9b4);
  static const Color materialthemerefneutralvariantneutralvariant80 =
      Color(0xffcac4d0);
  static const Color materialthemerefneutralvariantneutralvariant90 =
      Color(0xffe7e0ec);
  static const Color materialthemerefneutralvariantneutralvariant95 =
      Color(0xfff5eefa);
  static const Color materialthemerefneutralvariantneutralvariant99 =
      Color(0xfffffbfe);
  static const Color materialthemerefneutralvariantneutralvariant100 =
      Color(0xffffffff);

  //material theme - key color
  static const Color materialthemekeycolorsprimary = Color(0xff6750a4);

  //material theme - source
  static const Color materialthemesourceseed = Color(0xff6750a4);

  //material theme - static
  static const LinearGradient materialthemestaticsurface = LinearGradient(
    colors: [
      Color(0xff0C1d4d),
      Color(0xff214ecc),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  static const Color materialthemestaticprimary = Color(0xffffffff);
  static const Color materialthemestaticonprimary = Color(0xff000000);
  static const Color materialthemestaticprimarycontainer = Color(0xffffffff);
  static const Color materialthemestaticonprimarycontainer = Color(0xff000000);
  static const Color materialthemestaticsecondary = Color(0x29ffffff);
  static const Color materialthemestaticonsecondary = Color(0xffffffff);
  static const Color materialthemestaticsecondarycontainer = Color(0x29ffffff);
  static const Color materialthemestaticonsecondarycontainer =
      Color(0xffffffff);
  static const Color materialthemestatictertiary = Color(0x52ffffff);
  static const Color materialthemestaticontertiary = Color(0xff000000);
  static const Color materialthemestatictertiarycontainer = Color(0x52ffffff);
  static const Color materialthemestaticontertiarycontainer = Color(0xff000000);
  static const Color materialthemestaticerror = Color(0xffcc3c21);
  static const Color materialthemestaticonerror = Color(0xffffffff);
  static const Color materialthemestaticerrorcontainer = Color(0x52cc3c21);
  static const Color materialthemestaticonerrorcontainer = Color(0xffcc3c21);
  static const LinearGradient materialthemestaticbackground = LinearGradient(
    colors: [
      Color(0xff0C1d4d),
      Color(0xff214ecc),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  static const Color materialthemestaticonbackground = Color(0xffffffff);
  static const Color materialthemestaticonsurface = Color(0xffffffff);
  static const Color materialthemestaticsurfacevariant = Color(0x03000000);
  static const Color materialthemestaticonsurfacevariant = Color(0xffffffff);
  static const Color materialthemestaticoutline = Color(0x29ffffff);
  static const Color materialthemestaticoutlinevariant = Color(0x7affffff);
  static const Color materialthemestaticsurfaceat1 = Color(0x14ffffff);
  static const Color materialthemestaticsurfaceat2 = Color(0x29ffffff);
  static const Color materialthemestaticsurfaceat3 = Color(0x3dffffff);
  static const Color materialthemestaticsurfaceat4 = Color(0x52ffffff);
  static const Color materialthemestaticsurfaceat5 = Color(0x7affffff);
}
