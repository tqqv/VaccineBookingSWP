/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

$(document).ready(function () {
    $('#basic-data-table').DataTable({
        "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
    });
});

//Vaccine Choice
function showPopup() {
    var popup = document.getElementById("vaccinePopup");
    popup.style.display = "block";
}

function selectVaccine(vaccine) {
    var selectedVaccineInput = document.getElementById("selectedVaccineInput");
    selectedVaccineInput.value = vaccine;
    hidePopup();
}

function hidePopup() {
    var popup = document.getElementById("vaccinePopup");
    popup.style.display = "none";
}

function filterVaccineList() {
    var input, filter, ul, li, item, i;
    input = document.getElementById("searchVaccineInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("vaccineList");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        item = li[i];
        if (item.innerHTML.toUpperCase().indexOf(filter) > -1) {
            item.style.display = "";
        } else {
            item.style.display = "none";
        }
    }
}