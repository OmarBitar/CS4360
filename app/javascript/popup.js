document.addEventListener('turbolinks:load', function() {

    var popup = document.getElementById('shift_form');
    var overlay = document.getElementById('overlay');
    var button = document.getElementById('button');

    function togglePopup() {
        popup.classList.toggle("hidden");
        overlay.classList.toggle("hidden");
    }

    function closePopup() {
        popup.classList.add("hidden");
        overlay.classList.add("hidden");
    }

    button.addEventListener("click", togglePopup);
    overlay.addEventListener("click", closePopup);
    document.addEventListener("keydown", closePopup);

});