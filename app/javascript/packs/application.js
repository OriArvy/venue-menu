import "bootstrap";

import { initStarRating } from '../plugins/init_star_rating';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { previewImageOnFileSelect } from '../components/photo_preview'
import { initAutocomplete } from '../plugins/init_autocomplete'
import { initAutocompleteById } from '../plugins/init_autocomplete'
previewImageOnFileSelect();
initMapbox();
initStarRating();
initAutocomplete();
initAutocompleteById();
