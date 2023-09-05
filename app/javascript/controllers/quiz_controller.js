import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quiz"
export default class extends Controller {
  static targets = ["answer"];
  static classes = ["correctAnswer", "incorrectAnswer"];

  answer(event) {
    const selectedAnswer = event.currentTarget;
    const isCorrectAnswer = selectedAnswer.dataset.isCorrect === "true";

    // Remove the "correct-answer" and "incorrect-answer" classes from all answers
    this.answerTargets.forEach(answer => {
      answer.classList.remove("correct-answer");
      answer.classList.remove("incorrect-answer");
    });

    if (isCorrectAnswer) {
      // Green halo for the correct answer
      selectedAnswer.classList.add("correct-answer");
    } else {
      // Red halo for the wrong answer
      selectedAnswer.classList.add("incorrect-answer");

      // Find the correct answer div and give it a green halo
      const correctAnswerDiv = this.answerTargets.find(
        answer => answer.dataset.isCorrect === "true"
      );

      if (correctAnswerDiv) {
        correctAnswerDiv.classList.add("correct-answer");
      }
    }
  }
}

// answer(event) {
//   const selectedAnswer = event.currentTarget;
//   const isCorrectAnswer = selectedAnswer.dataset.isCorrect === "true";

//   if (isCorrectAnswer) {
//     selectedAnswer.classList.add("correct-answer");
//   } else {
//     selectedAnswer.classList.add("incorrect-answer");
//   }
// }

// export default class extends Controller {
//   static targets = ["answer"];

//   answer(event) {
//     const selectedAnswer = event.currentTarget;
//     const isCorrectAnswer = selectedAnswer.dataset.isCorrect === "true";

//     // Remove the "correct-answer" and "incorrect-answer" classes from all answers
//     this.answerTargets.forEach(answer => {
//       answer.classList.remove("correct-answer");
//       answer.classList.remove("incorrect-answer");
//     });

//     if (isCorrectAnswer) {
//       // Green halo for the correct answer
//       selectedAnswer.classList.add("correct-answer");
//     } else {
//       // Red halo for the wrong answer
//       selectedAnswer.classList.add("incorrect-answer");

//       // Find the correct answer div and give it a green halo
//       const correctAnswerDiv = this.answerTargets.find(
//         answer => answer.dataset.isCorrect === "true"
//       );

//       if (correctAnswerDiv) {
//         correctAnswerDiv.classList.add("correct-answer");
//       }
//     }
//   }
// }

// static targets = ["answer"];
// static classes = ["correctAnswer", "incorrectAnswer"];

// answer(event) {
//   const selectedAnswer = event.currentTarget;
//   const isCorrectAnswer = selectedAnswer.dataset.isCorrect === "true";

//   // Remove the "correct-answer" and "incorrect-answer" classes from all answers
//   this.answerTargets.forEach(answer => {
//     this.correctAnswerClass.remove(answer);
//     this.incorrectAnswerClass.remove(answer);
//   });

//   if (isCorrectAnswer) {
//     // Green halo for the correct answer
//     this.correctAnswerClass.add(selectedAnswer);
//   } else {
//     // Red halo for the wrong answer
//     this.incorrectAnswerClass.add(selectedAnswer);

//     // Find the correct answer div and give it a green halo
//     const correctAnswerDiv = this.answerTargets.find(
//       answer => answer.dataset.isCorrect === "true"
//     );

//     if (correctAnswerDiv) {
//       this.correctAnswerClass.add(correctAnswerDiv);
//     }
//   }
// }
