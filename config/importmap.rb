# Pin npm packages by running ./bin/importmap

pin "application", preload: true

pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "mapbox-gl", to: "https://ga.jspm.io/npm:mapbox-gl@2.15.0/dist/mapbox-gl.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
# <iframe width='100%' height='400px' src="https://api.mapbox.com/styles/v1/jeanconseil/clm7h2a73011x01pf903120jl.html?title=false&access_token=pk.eyJ1IjoiamVhbmNvbnNlaWwiLCJhIjoiY2xsMHJjdmw5MWZleTNkbXpld2kyODRxdyJ9.NaQwgh3yg0uuyEtpHYu-GA&zoomwheel=false#4.21/48.14/1.47" title="Outdoors" style="border:none;"></iframe>
# pin "algoliasearch", to: "algoliasearch/dist/algoliasearch.umd.js"
