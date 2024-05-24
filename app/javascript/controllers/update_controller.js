// app/javascript/controllers/update_controller.js

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.addEventListener('ajax:success', () => {
      location.reload();
    });
  }
}