import 'package:quiz_app/models/questions.dart';

const questions_data = [
  QuestionFormat(
    'What are the main building blocks of Flutter UIs?',
    ['Widgets', 'Functions', 'Components', 'Blocks'],
  ),
  QuestionFormat(
    'What is the purpose of the "BuildContext" parameter?',
    [
      'To provide access to the widget tree',
      'To handle user input',
      'To store data',
      'To manage state'
    ],
  ),
  QuestionFormat(
    'What is the command used to create a new Flutter project?',
    ['flutter create', 'flutter new', 'flutter init', 'flutter project'],
  ),
  QuestionFormat(
    'What is the purpose of the "pubspec.yaml" file in a Flutter project?',
    [
      'To declare project dependencies and configuration',
      'To create UI layouts',
      'To store user data',
      'To manage routing'
    ],
  ),
  QuestionFormat(
    'Which package is commonly used for state management in Flutter?',
    ['Provider', 'http', 'shared_preferences', 'intl'],
  ),
];
