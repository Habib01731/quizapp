class Quiz {
  final String question;
  final List<Answer> answerList;
  Quiz({required this.question, required this.answerList});
}

class Answer {
  final String answer;
  final bool iscorrect;
  Answer({required this.answer, required this.iscorrect});
}

List<Quiz> allQuiz = [
  Quiz(question: 'what is the national animal of bangladesh', answerList: [
    Answer(answer: 'Rb tigar', iscorrect: true),
    Answer(answer: 'dog', iscorrect: false),
    Answer(answer: 'cat', iscorrect: false),
    Answer(answer: 'goat', iscorrect: false),
  ]),
  Quiz(question: 'what is the national fruit of bangladesh', answerList: [
    Answer(answer: 'jackfruit', iscorrect: true),
    Answer(answer: 'apply', iscorrect: false),
    Answer(answer: 'benana', iscorrect: false),
    Answer(answer: 'mango', iscorrect: false),
    Answer(answer: 'dalim', iscorrect: false),
  ]),
  Quiz(question: 'what is the national Fish of bangladesh', answerList: [
    Answer(answer: 'carp', iscorrect: false),
    Answer(answer: 'চিংড়ী মাছ', iscorrect: false),
    Answer(answer: 'hilsha', iscorrect: true),
    Answer(answer: 'কৈ মাছ', iscorrect: false),
  ]),
  Quiz(question: 'what is the national ফুল of bangladesh', answerList: [
    Answer(answer: 'হাসনা হেনা', iscorrect: false),
    Answer(answer: 'শাপলা', iscorrect: true),
    Answer(answer: 'পদ্মা', iscorrect: false),
    Answer(answer: 'গোলাফ', iscorrect: false),
  ]),
  Quiz(question: 'what is the national গান of bangladesh', answerList: [
    Answer(answer: 'আমার সোনার বাংলা', iscorrect: true),
    Answer(answer: 'ও নদীরে ', iscorrect: false),
    Answer(answer: 'ইঞ্জি ইঞ্জি মাটি', iscorrect: false),
    Answer(answer: 'কবর যায়গা ভালো নয়', iscorrect: false),
  ]),
];

// var name = allQuiz[1].answerList[2].iscorrect == true;
