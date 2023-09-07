import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/jeanconseil/clm7h2a73011x01pf903120jl"
      // style: "mapbox://styles/mapbox/satellite-v9"
      //api.mapbox.com/styles/v1/jeanconseil/clm7h2a73011x01pf903120jl.html?title=view&access_token=pk.eyJ1IjoiamVhbmNvbnNlaWwiLCJhIjoiY2xsMHJjdmw5MWZleTNkbXpld2kyODRxdyJ9.NaQwgh3yg0uuyEtpHYu-GA&zoomwheel=true&fresh=true#2.41/22.76/90.44
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)

      // Create a HTML element for your custom marker
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html

      // Pass the element as an argument to the new marker
      new mapboxgl.Marker(customMarker)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
  // #addMarkersToMap() {
  //   this.markersValue.forEach((marker) => {
  //     const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
  //     new mapboxgl.Marker()
  //       .setLngLat([ marker.lng, marker.lat ])
  //       .setPopup(popup)
  //       .addTo(this.map)
  //   })
  // }
}
