import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="likebutton"
export default class extends Controller {
  static targets = ["button", "get-id"]

  heart(event) {
    console.log(this.element)
    // setTimeout(this.hideButton(), 1000)
    // this.buttonTarget.classList.add("fa-beat");
    this.buttonTarget.classList.replace("fa-regular", "fa-solid")

    // this.buttonTarget.classList.remove("fa-flip");
  }
}


