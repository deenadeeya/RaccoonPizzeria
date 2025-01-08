// dropdown.js

document.addEventListener("DOMContentLoaded", function () {
    const personIcon = document.querySelector(".person-icon");
    const dropdownMenu = document.querySelector(".dropdown-menu");

    // Toggle dropdown menu visibility on icon click
    personIcon.addEventListener("click", function () {
        dropdownMenu.style.display =
            dropdownMenu.style.display === "block" ? "none" : "block";
    });

    // Hide dropdown menu when clicking outside
    document.addEventListener("click", function (event) {
        if (!personIcon.contains(event.target) && !dropdownMenu.contains(event.target)) {
            dropdownMenu.style.display = "none";
        }
    });
});
