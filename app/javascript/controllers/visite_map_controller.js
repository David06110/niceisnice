import { Controller } from "stimulus"

export default class extends Controller {
  static values = {
    longitude: Number,
    latitude: Number
  }
  connect() {
    console.log("coucou")
  }
  
  openNativeMap() {
    if /* if we're on iOS, open in Apple Maps */
      ((navigator.platform.indexOf("iPhone") != -1) || 
      (navigator.platform.indexOf("iPad") != -1) || 
      (navigator.platform.indexOf("iPod") != -1)) {
      window.open(`maps://maps.google.com/maps?daddr=${this.longitudeValue},${this.latitudeValue},&amp;ll=`);
    }
    else { /* else use Google */
      window.open(`https://maps.google.com/maps?daddr=${this.longitudeValue},${this.latitudeValue},&amp;ll=`);
    }
  }
}
