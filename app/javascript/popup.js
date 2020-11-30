window.onload = function() {
    var popup = document.getElementById('shift_form');
    var overlay = document.getElementById('overlay');

    overlay.addEventListener("click", togglePopup);
    document.addEventListener("keydown", togglePopup);


    function togglePopup() {
        popup.classList.toggle("hidden");
        overlay.classList.toggle("hidden");
    }

    function closePopup() {
        popup.classList.add("hidden");
        overlay.classList.add("hidden");
    }
}
