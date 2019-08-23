import "bootstrap";
import flatpickr from "flatpickr";
import { initStarRating } from '../plugins/init_star_rating';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import 'flatpickr/dist/flatpickr.css'
import { initMapbox } from '../plugins/init_mapbox';
import { previewImageOnFileSelect } from '../components/photo_preview'
import { initAutocomplete } from '../plugins/init_autocomplete'
previewImageOnFileSelect();
initMapbox();
initStarRating();
initAutocomplete();
flatpickr("#booking_check_in", { defaultDate: "today", altInput: true, altFormat: "F j, Y", dateFormat: "Y-m-d", });
flatpickr("#booking_check_out", { defaultDate: "today",altInput: true, altFormat: "F j, Y", dateFormat: "Y-m-d", });
