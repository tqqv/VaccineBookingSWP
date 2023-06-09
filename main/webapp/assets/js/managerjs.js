/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */


$(document).ready(function () {
    $('.nav-link').on('shown.bs.tab', function (e) {
        e.preventDefault();
        console.log(111);
        $(this).tab('show');
    });
});

// Đóng modal khi nhấp vào nút "Close" hoặc bên ngoài modal
document.addEventListener("DOMContentLoaded", function () {
    var closeButton = document.querySelector("#editModal .close");
    var modal = document.querySelector("#editModal");

    closeButton.addEventListener("click", function () {
        modal.style.display = "none";
    });

    window.addEventListener("click", function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    });
});
