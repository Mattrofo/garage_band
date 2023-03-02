import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroller"
export default class extends Controller {
  static targets = ["container"]
  connect() {
    console.log("connected")
  }

  scroller() {
    this.containerTarget.scrollTo({
      top: 1000,
      behavior: 'smooth'
    })
  }
}
