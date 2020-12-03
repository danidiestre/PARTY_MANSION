import flatpickr from "flatpickr";


const initFlatpickr = () => {
    const availabilityElement = document.getElementById('availabilities');
    if (availabilityElement) {
        const availabilities = JSON.parse(availabilityElement.dataset.availabilities);
        flatpickr(".datepicker", { mode: "range", disable: availabilities, dateFormat: "Y-m-d", onChange: function(selectedDates, dateStr, instance) {
            const priceElement = document.getElementById('price');
            const startDate = Date.parse(selectedDates[0]);
            const endDate = Date.parse(selectedDates[1]);

            const totalDays = (endDate - startDate)/86400000 ; 
            console.log(totalDays)
            console.log(priceElement)

    
            const totalPrice = parseInt(priceElement.dataset.price, 10) * totalDays;
            priceElement.innerHTML = `<h6 class= price-card > € ${parseInt(priceElement.dataset.price, 10)} x ${totalDays} nights </h6> Total € ${totalPrice}`;
                 
        }});
    }

};

export {initFlatpickr}