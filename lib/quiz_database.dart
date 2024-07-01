import 'questions.dart';

int _questionsNumber = 0;
int _correctAnswersCount = 0;

class QuizDatabase {
  final List<Questions> _questionsBank = [
    Questions('Some cats are actually allergic to humans', true),
    Questions('You can lead a cow down stairs but not up stairs.', false),
    Questions(
        'Approximately one quarter of human bones are in the feet.', true),
    Questions('A slug\'s blood is green.', true),
    Questions('Buzz Aldrin\'s mother\'s maiden name was "Moon".', true),
    Questions('It is illegal to pee in the Ocean in Portugal.', true),
    Questions(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Questions(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Questions(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Questions(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Questions('Google was originally called "Backrub".', true),
    Questions(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Questions(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void newQuestion() {
    if (_questionsNumber < _questionsBank.length - 1) {
      _questionsNumber++;
    }
  }

  String getQuestionText() {
    return _questionsBank[_questionsNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionsBank[_questionsNumber].answerText;
  }

  bool isFinished() {
    if (_questionsNumber >= _questionsBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionsNumber = 0;
    _correctAnswersCount = 0;
  }

  void incrementCorrectAnswersCount() {
    _correctAnswersCount++;
  }

  int get correctAnswersCount => _correctAnswersCount;
  int get totalQuestions => _questionsBank.length;

  double get scorePercentage {
    if (totalQuestions == 0) {
      return 0;
    }
    return (_correctAnswersCount / totalQuestions) * 100;
  }
}
