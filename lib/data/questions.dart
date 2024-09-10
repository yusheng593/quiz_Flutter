import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'Flutter UI 的主要建構塊是什麼？',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('Flutter UI 是如何建立的？', [
    '透過在程式碼中組合 Widgets',
    '透過在視覺編輯器中組合 Widgets',
    '透過在配置文件中定義 Widgets',
    '透過使用 XCode 用於 iOS 和 Android Studio 用於 Android',
  ]),
  QuizQuestion(
    'StatefulWidget 的目的是什麼？',
    [
      '當數據變化時更新 UI',
      '當 UI 變化時更新數據',
      '忽略數據變化',
      '渲染不依賴於數據的 UI',
    ],
  ),
  QuizQuestion(
    '你應該更常使用哪個 Widget：StatelessWidget 還是 StatefulWidget？',
    [
      'StatelessWidget',
      'StatefulWidget',
      '兩者都一樣好',
      '答案不在選項',
    ],
  ),
  QuizQuestion(
    '如果在 StatelessWidget 中更改數據會發生什麼？',
    [
      'UI 不會更新',
      'UI 會更新',
      '最近的 StatefulWidget 會更新',
      '任何嵌套的 StatefulWidgets 會更新',
    ],
  ),
  QuizQuestion(
    '應該如何在 StatefulWidgets 中更新數據？',
    [
      '通過調用 setState()',
      '通過調用 updateData()',
      '通過調用 updateUI()',
      '通過調用 updateState()',
    ],
  ),
];
