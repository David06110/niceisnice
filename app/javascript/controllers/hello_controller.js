import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
  }
  
  openNativeMap() {
    if /* if we're on iOS, open in Apple Maps */
      ((navigator.platform.indexOf("iPhone") != -1) || 
      (navigator.platform.indexOf("iPad") != -1) || 
      (navigator.platform.indexOf("iPod") != -1)) {
      window.open("maps://maps.google.com/maps?daddr=43.70321627151884,7.260438382784434,&amp;ll=");
    }
    else { /* else use Google */
      window.open("https://maps.google.com/maps?daddr=43.70321627151884,7.260438382784434,&amp;ll=");
    }
  }
}

