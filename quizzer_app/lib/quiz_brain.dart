import 'question.dart';

//Every logic of the app should be here.
class QuizBrain {
  int _questionNumber = 0;
//  a quizbrain should have questions
  List<Question> _questionBank = [
    Question(q: 'The human body has 89 tissues', a: false),
    Question(q: 'Accra is the capital city of Ghana', a: true),
    Question(q: 'Ghana has 10 regions', a: false),
    Question(q: 'Nana Addo is the president of Ghana', a: true),
    Question(q: 'Ghana scored portugal in the world cup', a: false),
    Question(q: 'little salt kills flesh', a: false),
    Question(q: 'Money is the root of all evil', a: false),
    Question(q: 'mice is the plural for mouse', a: true),
    Question(q: 'Ghana has 10 regions', a: false),
    Question(q: 'Ghana has 10 regions', a: false),
    Question(q: 'Ghana has 10 regions', a: false),
    Question(q: 'Ghana has 10 regions', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      //the - 1 is because question number starts from 0 while length is 14
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
