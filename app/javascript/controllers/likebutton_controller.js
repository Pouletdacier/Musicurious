import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="likebutton"
export default class extends Controller {
  static targets = ["button", "get-id"]

  heart(event) {
    event.preventDefault()
    console.log(this.element)
    // setTimeout(this.hideButton(), 1000)
    this.buttonTarget.classList.add("fa-flip");
    this.buttonTarget.classList.replace("fa-regular", "fa-solid")
    
    // this.buttonTarget.classList.remove("fa-flip");
  }
}

// basic heart
// <i class="fa-regular fa-heart" style="color: #2a9d8f;"></i>

// clicked like
// <i class="fa-solid fa-heart fa-flip" style="color: #2a9d8f;"></i>

// liked
// <i class="fa-solid fa-heart" style="color: #2a9d8f;"></i>
