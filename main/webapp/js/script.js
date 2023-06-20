// Function to toggle the popup
function togglePopup() {
  var popup = document.getElementById("login-popup");
  popup.style.display = (popup.style.display === "none") ? "block" : "none";
}

const switchers = [...document.querySelectorAll('.switcher')]

switchers.forEach(item => {
  item.addEventListener('click', function () {
    switchers.forEach(item => item.parentElement.classList.remove('is-active'))
    this.parentElement.classList.add('is-active')
  })
})

function closePopup() {
  var popup = document.getElementById("login-popup");
  popup.style.display = "none";
}

// view booking schedule popup
function closeForm() {
  $('.form-popup-bg').removeClass('is-visible');
}

$(document).ready(function ($) {

  /* Contact Form Interactions */
  $('#btnOpenForm').on('click', function (event) {
    event.preventDefault();

    $('.form-popup-bg').addClass('is-visible');
  });

  //close popup when clicking x or off popup
  $('.form-popup-bg').on('click', function (event) {
    if ($(event.target).is('.form-popup-bg') || $(event.target).is('#btnCloseForm')) {
      event.preventDefault();
      $(this).removeClass('is-visible');
    }
  });



});
