import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quiz"
export default class extends Controller {
  static targets = ["answer"];
  static classes = ["correctAnswer", "incorrectAnswer"];

  answer(event) {
    const selectedAnswer = event.currentTarget;
    const isCorrectAnswer = selectedAnswer.dataset.isCorrect === "true";

    this.answerTargets.forEach(answer => {
      answer.classList.remove("correct-answer");
      answer.classList.remove("incorrect-answer");
    });

    if (isCorrectAnswer) {
      selectedAnswer.classList.add("correct-answer");
    } else {
      selectedAnswer.classList.add("incorrect-answer");

      const correctAnswerDiv = this.answerTargets.find(
        answer => answer.dataset.isCorrect === "true"
      );

      if (correctAnswerDiv) {
        correctAnswerDiv.classList.add("correct-answer");
      }
    }
  }
}
