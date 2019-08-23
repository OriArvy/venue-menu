import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelectorAll('.query');
  addressInput.forEach((input) => {
      places({ container: addressInput });
  })
};

const initAutocompleteById = () => {
  const addressInput = document.getElementById('query');
  if (addressInput) {
    places({ container: addressInput });
  }
};


export { initAutocomplete };
export { initAutocompleteById };

// initAutocomplete();

