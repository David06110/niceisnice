import { Controller } from "stimulus"

export default class extends Controller {
  connect(){
    
  }

  submit(){
    document.querySelector(".spinner-bg").classList.remove("d-none")
    this.element.submit()
  }
}
