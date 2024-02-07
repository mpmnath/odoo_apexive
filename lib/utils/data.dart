import 'package:odoo_apexive/models/project_model.dart';
import 'package:odoo_apexive/models/task_model.dart';
import 'package:odoo_apexive/models/timer_model.dart';

List<TimerModel> inMemoryTimers = [];

final List<ProjectModel> projectList = [
  ProjectModel(
    id: '1',
    name: 'Apexive: Content Planning',
    tasks: [
      TaskModel(
        id: '11',
        name: 'Develop content calendar',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '12',
        name: 'Create blog posts',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '13',
        name: 'Plan social media content',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
    ],
  ),
  ProjectModel(
    id: '2',
    name: 'Apexive: Marketing Strategy',
    tasks: [
      TaskModel(
        id: '21',
        name: 'Conduct market research',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '22',
        name: 'Define target audience',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '23',
        name: 'Develop marketing campaigns',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
    ],
  ),
  ProjectModel(
    id: '3',
    name: 'Apexive: Website Redesign',
    tasks: [
      TaskModel(
        id: '31',
        name: 'Wireframe website layout',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '32',
        name: 'Design user interface',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '33',
        name: 'Implement responsive design',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
    ],
  ),
  ProjectModel(
    id: '4',
    name: 'Apexive: Social Media Campaign',
    tasks: [
      TaskModel(
        id: '41',
        name: 'Create engaging posts',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '42',
        name: 'Schedule posts',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '43',
        name: 'Monitor social media analytics',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
    ],
  ),
  ProjectModel(
    id: '5',
    name: 'Apexive: Video Production',
    tasks: [
      TaskModel(
        id: '51',
        name: 'Script creation',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '52',
        name: 'Video shooting',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '53',
        name: 'Editing and post-production',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
    ],
  ),
  ProjectModel(
    id: '6',
    name: 'Apexive: Product Launch',
    tasks: [
      TaskModel(
        id: '61',
        name: 'Develop launch strategy',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '62',
        name: 'Create promotional materials',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '63',
        name: 'Plan launch event',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
    ],
  ),
  ProjectModel(
    id: '7',
    name: 'Apexive: SEO Optimization',
    tasks: [
      TaskModel(
        id: '71',
        name: 'Keyword research',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '72',
        name: 'On-page optimization',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '73',
        name: 'Backlink building',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
    ],
  ),
  ProjectModel(
    id: '8',
    name: 'Apexive: Email Marketing',
    tasks: [
      TaskModel(
        id: '81',
        name: 'Build subscriber list',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '82',
        name: 'Design email templates',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '83',
        name: 'Analyze campaign performance',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
    ],
  ),
  ProjectModel(
    id: '9',
    name: 'Apexive: Branding Overhaul',
    tasks: [
      TaskModel(
        id: '91',
        name: 'Redesign logo',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '92',
        name: 'Update brand guidelines',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
      TaskModel(
        id: '93',
        name: 'Implement new branding across platforms',
        duration: const Duration(minutes: 8),
        deadline: DateTime.now().add(const Duration(days: 3)),
      ),
    ],
  ),
];

// Test data
final List<String> projects = [
  'Apexive: Content Planning',
  'Apexive: Marketing Strategy',
  'Apexive: Website Redesign',
  'Apexive: Social Media Campaign',
  'Apexive: Video Production',
  'Apexive: Product Launch',
  'Apexive: SEO Optimization',
  'Apexive: Email Marketing',
  'Apexive: Branding Overhaul',
  'Apexive: Event Coordination',
];

final Map<String, List<String>> tasks = {
  'Apexive: Content Planning': [
    'Develop content calendar',
    'Create blog posts',
    'Plan social media content',
  ],
  'Apexive: Marketing Strategy': [
    'Conduct market research',
    'Define target audience',
    'Develop marketing campaigns',
  ],
  'Apexive: Website Redesign': [
    'Wireframe website layout',
    'Design user interface',
    'Implement responsive design',
  ],
  'Apexive: Social Media Campaign': [
    'Create engaging posts',
    'Schedule posts',
    'Monitor social media analytics',
  ],
  'Apexive: Video Production': [
    'Script creation',
    'Video shooting',
    'Editing and post-production',
  ],
  'Apexive: Product Launch': [
    'Develop launch strategy',
    'Create promotional materials',
    'Plan launch event',
  ],
  'Apexive: SEO Optimization': [
    'Keyword research',
    'On-page optimization',
    'Backlink building',
  ],
  'Apexive: Email Marketing': [
    'Build subscriber list',
    'Design email templates',
    'Analyze campaign performance',
  ],
  'Apexive: Branding Overhaul': [
    'Redesign logo',
    'Update brand guidelines',
    'Implement new branding across platforms',
  ],
  'Apexive: Event Coordination': [
    'Plan event logistics',
    'Coordinate speakers and sponsors',
    'Execute event day activities',
  ],
};
