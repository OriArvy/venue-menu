import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('query');
  // addressInput.forEach (query); {
    if (addressInput) {
      places({ container: addressInput });
    }
    // console.log(address.innerText);
  // }
};


export { initAutocomplete };

// initAutocomplete();

