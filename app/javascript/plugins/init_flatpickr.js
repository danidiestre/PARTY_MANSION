import flatpickr from "flatpickr";


const initFlatpickr = () => {
    const availabilityElement = document.getElementById('availabilities');
    if (availabilityElement) {
        const availabilities = JSON.parse(availabilityElement.dataset.availabilities);
        flatpickr(".datepicker", { mode: "range", disable: availabilities, dateFormat: "Y-m-d"});
    }
};

export {initFlatpickr}