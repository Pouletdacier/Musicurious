import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    toggleFilters() {
        let panel = document.getElementById('filtersPanel');
        if (panel.style.display === 'none' || panel.style.display === '') {
            panel.style.display = 'block';
        } else {
            panel.style.display = 'none';
        }
    }
}
