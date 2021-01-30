import { Controller } from 'stimulus';
import foodIcon from '../../assets/images/md/food.svg';
import productsIcon from '../../assets/images/md/products.svg';
import servicesIcon from '../../assets/images/md/services.svg';

export default class extends Controller {
  static targets = ['map', 'field', 'getCurrentLocation'];

  static values = {
    latitud: Number,
    longitud: Number,
  };

  connect() {
    if (typeof google !== 'undefined') {
      this.initializeMap();
    }
  }

  initializeMap() {
    this.map();
    this.marker();
    this.autocomplete();
    this.bussinessMarkers();
  }

  map() {
    if (this._map === undefined) {
      this._map = new google.maps.Map(this.mapTarget, {
        center: new google.maps.LatLng(19.265129, -103.710844),
        zoom: 16,
      });
    }
    return this._map;
  }

  marker() {
    if (this._marker === undefined) {
      this._marker = new google.maps.Marker({
        map: this.map(),
        anchorPoint: new google.maps.Point(0, 0),
      });
      const mapLocation = {
        lat: parseFloat(this.latitudValue),
        lng: parseFloat(this.longitudValue),
      };
      this._marker.setPosition(mapLocation);
      this._marker.setVisible(true);
    }
    return this._marker;
  }

  autocomplete() {
    if (this._autocomplete === undefined) {
      this._autocomplete = new google.maps.places.Autocomplete(this.fieldTarget);
      this._autocomplete.bindTo('bounds', this.map());
      this._autocomplete.setFields(['address_components', 'geometry', 'icon', 'name']);
      this._autocomplete.addListener('place_changed', this.locationChanged.bind(this));
    }
    return this._autocomplete;
  }

  locationChanged() {
    const place = this.autocomplete().getPlace();

    if (!place.geometry) {
      // User entered the name of a Place that was not suggested and
      // pressed the Enter key, or the Place Details request failed.
      window.alert(`No details available for input: '${place.name}'`);
      return;
    }

    this.map().fitBounds(place.geometry.viewport);
    this.map().setCenter(place.geometry.location);
    this.marker().setPosition(place.geometry.location);
    this.marker().setVisible(true);

    this.latitudValue = place.geometry.location.lat();
    this.longitudValue = place.geometry.location.lng();
  }

  preventSubmit(e) {
    if (e.key === 'Enter') {
      e.preventDefault();
    }
  }

  getCurrentLocation() {
    console.log('FUNCIONA!');
  }

  bussinessMarkers() {
    const icons = {
      food: {
        icon: foodIcon,
      },
      products: {
        icon: productsIcon,
      },
      services: {
        icon: servicesIcon,
      },
    };
    const store = [
      {
        position: new google.maps.LatLng(19.265129, -103.710844),
        type: 'food',
      },
      {
        position: new google.maps.LatLng(19.265129, -103.720844),
        type: 'products',
      },
      {
        position: new google.maps.LatLng(19.265129, -103.700844),
        type: 'services',
      },
      {
        position: new google.maps.LatLng(19.262129, -103.710844),
        type: 'food',
      },
      {
        position: new google.maps.LatLng(19.265129, -103.690844),
        type: 'products',
      },
      {
        position: new google.maps.LatLng(19.264129, -103.710844),
        type: 'services',
      },
    ];
    const contentString = '<p>La fonda de Doña Luisa</p><p>+Info -></p>';
    const infowindow = new google.maps.InfoWindow({
      content: contentString,
    });
    for (let i = 0; i < store.length; i += 1) {
      const marker = new google.maps.Marker({
        position: store[i].position,
        icon: icons[store[i].type].icon,
        map: this.map(),
      });
      marker.addListener('click', () => {
        infowindow.open(this.map(), marker);
      });
    }

    return this._marker;
  }
}
