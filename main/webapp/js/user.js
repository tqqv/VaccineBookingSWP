var editProfileButton = document.getElementById("editProfileButton");
var popupForm = document.getElementById("popupForm");

// Function to show the popup form
function showPopupForm() {
    popupForm.style.display = "block";
}

// Function to hide the popup form
function hidePopupForm() {
    popupForm.style.display = "none";
}

// Add event listener to the button
editProfileButton.addEventListener("click", showPopupForm);