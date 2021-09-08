import 'question.dart';
int _questionNumber = 0;
bool isOn = true;

class QuiZBrain{
  List <Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slugs blood is green.', true)
  ];

  void nextQuestion(){
    if(_questionNumber < _questions.length-1){
      _questionNumber++;
    }else{
      isOn = false;
    }
  }

  bool isOnGet(){
      return  isOn;
  }

  void reset_val(){
    isOn = true;
    _questionNumber = 0;
  }

  String getQuestionText(){
    return _questions[_questionNumber].questionText;
  }
  bool getAnswerText(){
    return _questions[_questionNumber].answerText;
  }
}