import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quiz"
export default class extends Controller {
  static targets = ["answer", "container", "next", "info"];
  static classes = ["correctAnswer", "incorrectAnswer"];
  // connect(){
  //   console.log(this.element)
  // }

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
    // setTimeout(() => {  console.log('World!'); }, 2000);
    setTimeout(() => {this.nextTarget.classList.remove("d-none"); }, 500);
  }

  next(){
    this.element.classList.add("d-none")
  }
}
