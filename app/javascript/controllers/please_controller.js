import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="please"
export default class extends Controller {
  connect() {
    alert("test")
  }
}
