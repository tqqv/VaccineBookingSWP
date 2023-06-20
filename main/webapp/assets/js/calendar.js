const daysTag = document.querySelector(".days"),
  currentDate = document.querySelector(".current-date"),
  prevNextIcon = document.querySelectorAll(".icons span");

let activateDate = "start";
// getting new date, current year and month
let date = new Date(),
  currYear = date.getFullYear(),
  currMonth = date.getMonth() + 1;
// storing full name of all months in array
const months = [
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December",
];
const renderCalendar = () => {
  console.log("hello");
  let firstDayofMonth = new Date(currYear, currMonth, 1).getDay(), // getting first day of month
    lastDateofMonth = new Date(currYear, currMonth + 1, 0).getDate(), // getting last date of month
    lastDayofMonth = new Date(currYear, currMonth, lastDateofMonth).getDay(), // getting last day of month
    lastDateofLastMonth = new Date(currYear, currMonth, 0).getDate(); // getting last date of previous month
  let liTag = "";
  for (let i = firstDayofMonth; i > 0; i--) {
    // creating li of previous month last days
    liTag += `<li class="inactive">${lastDateofLastMonth - i + 1}</li>`;
  }
  for (let i = 1; i <= lastDateofMonth; i++) {
    let j = 1;
    // creating li of all days of current month
    // adding active class to li if the current day, month, and year matched
    let isToday;
    if (
      i === date.getDate() &&
      currMonth === new Date().getMonth() + 1 &&
      currYear === new Date().getFullYear()
    ) {
      isToday = "active";
      console.warn("hehe bug: " + activateDate);
      if (activateDate == "start") {
        activateDate = i;
      }
      // getDataChoosenDate(activateDate);
      console.warn("hehe bug: " + activateDate);
    } else isToday = "";

    liTag += `<li id ="month_${currMonth}date_${i}" onclick="choosenDate(${i})" class="${isToday}">${i}</li>`;
  }
  for (let i = lastDayofMonth; i < 6; i++) {
    // creating li of next month first days
    liTag += `<li class="inactive">${i - lastDayofMonth + 1}</li>`;
  }
  currentDate.innerText = `${months[currMonth - 1]} ${currYear}`; // passing current mon and yr as currentDate text
  daysTag.innerHTML = liTag;
};
renderCalendar();
// getDataChoosenDate(activateDate);

// handle prev - next button on calendar

prevNextIcon.forEach((icon) => {
  // getting prev and next icons
  icon.addEventListener("click", () => {
    console.log("activateDate: " + activateDate);
    storeDataTimeAndVacine(activateDate);
    // storeDataCurrentDate(activateDate);
    activateDate = null;
    // adding click event on both icons
    // if clicked icon is previous icon then decrement current month by 1 else increment it by 1
    currMonth = icon.id === "prev" ? currMonth - 1 : currMonth + 1;
    if (currMonth < 0 || currMonth > 11) {
      // if current month is less than 0 or greater than 11
      // creating a new date of current year & month and pass it as date value
      date = new Date(currYear, currMonth, new Date().getDate());
      currYear = date.getFullYear(); // updating current year with new date year
      currMonth = date.getMonth() + 1; // updating current month with new date month
    } else {
      date = new Date(); // pass the current date as date value
    }
    renderCalendar(); // calling renderCalendar function

    choosenDate(1);

    console.log("currMonth " + currMonth);
  });
});

// mine custom
const choosenDate = function (i) {
  let dateTimes = readCookie("month_" + currMonth + "date_" + i);
  console.log("dateTimes: " + dateTimes);
  // handle css toglle active class properties
  changeDate(i);
  // if confirmed =>  handle current date with time range to store oncookie done
  console.log("Last activateDate " + activateDate);

  storeDataTimeAndVacine(activateDate);
  // storeDataCurrentDate(activateDate);
  // storeDataCurrentVaccine(activateDate);
  // reset activate to choosen date
  activateDate = i;
  console.log("Current activate " + activateDate);

  // 1. reset checkbox of time ranges
  resetDataTimeAndVaccine();
  // resetCheckboxTime();

  // handle choosen date
  if (dateTimes) {
    console.log("This day is set already");
    // already => get time ranges in cookie to set back to time range on browser!
    getDataChoosenDate(activateDate);
  } else {
    console.log(
      "There is no time ranges set for this date yet. Now create on cookie"
    );
    // clear checkbox of time ranges
  }
};

function readCookie(name) {
  var value = "; " + document.cookie;
  // var parts = value.split("; " + name + "=");
  return value.includes(name);
}

// pass activate date here

function storeDataTimeAndVacine(date) {
  console.log("date: " + date);
  let dates = "";
  // check if timerange exist or not
  //  if cheecked => store
  let currentCheckboxes = document.querySelectorAll('input[name="time"]');
  var arr = Array.prototype.slice.call(currentCheckboxes); // Now it's an Array.
  arr.forEach((box) => {
    if (box.checked) {
      dates += arr.indexOf(box) + 1 + ",";
    }
  });
  console.log("dates: " + dates);

  let vaccines = "|";
  let currentCheckboxeVaccines = document.querySelectorAll(
    'input[name="vaccine"]'
  );
  let currentVaccinesQuantity = document.querySelectorAll(
    'input[name="vaccine"]'
  );

  var arr = Array.prototype.slice.call(currentCheckboxeVaccines); // Now it's an Array.
  arr.forEach((box) => {
    if (box.checked) {
      let quantity = document.querySelector(
        `input[name = ${box.id}Quantity]`
      ).value;
      vaccines += box.id + "(" + quantity + ")" + ",";
    }
  });

  let cookieVal = JSON.stringify(
    `${dates.slice(0, -1) + vaccines.slice(0, -1)}`
  );
  document.cookie = `month_${currMonth}date_${date} = ${encodeURIComponent(
    cookieVal
  )} `;
}

function getDataChoosenDate(date) {
  let cookies = document.cookie.split(";");
  let timeOfChoosenDate = null;
  let vaccineChoosenDate = null;

  for (let time of cookies) {
    console.warn(time);
    if (time.includes(`month_${currMonth}date_${activateDate}=`)) {
      console.warn(time);
      console.warn(" Choosen date exist data " + time);
      timeOfChoosenDate = JSON.parse(
        decodeURIComponent(time.split("=")[1])
      ).split("|")[0];

      // timeOfChoosenDate = time.split("=")[1].split("|")[0];
      vaccineChoosenDate = JSON.parse(
        decodeURIComponent(time.split("=")[1])
      ).split("|")[1];

      // vaccineChoosenDate = time.split("=")[1].split("|")[1];
      console.warn("timeOfChoosenDate: --- : " + timeOfChoosenDate);
      console.warn("vaccineChoosenDate: --- : " + vaccineChoosenDate);
      break;
    }
  }
  //3. setback time
  console.log("Date_" + date + ": " + timeOfChoosenDate);
  timeOfChoosenDate.split(",").forEach((date) => {
    let checkbox = document.getElementById(`time${date}`);
    if (checkbox) checkbox.checked = true;
  });

  //3. setback vaccine
  // [vaccine1(1)], [vaccine2(2)]
  vaccineChoosenDate.split(",").forEach((vaccine) => {
    let vacName = vaccine.split("(")[0];
    document.getElementById(vacName).checked = true;
    let vacQuantity = vaccine.split("(")[1].slice(0, -1);
    console.log("vacQuan: " + vacQuantity);
    document.querySelector(`input[name = ${vacName}Quantity]`).value =
      vacQuantity;
  });
}

function resetDataTimeAndVaccine() {
  let currentCheckboxes = document.querySelectorAll('input[name="time"]');
  currentCheckboxes.forEach((checkbox) => (checkbox.checked = false));
  let currentCheckboxesVaccine = document.querySelectorAll(
    'input[name="vaccine"]'
  );
  currentCheckboxesVaccine.forEach((checkbox) => {
    checkbox.checked = false;
    document.querySelector(`input[name=${checkbox.id}Quantity]`).value = "";
  });
}

function changeDate(date) {
  // date == i
  let activeNodes = document.getElementsByClassName("active");
  let choosen = document.getElementById(`month_${currMonth}date_${date}`);

  // loop through the HTMLCollection and remove the 'active' class from each element
  for (let i = 0; i < activeNodes.length; i++) {
    activeNodes[i].classList.remove("active");
  }
  choosen.classList.add("active");
}

//  no more use
function resetCheckboxTime() {
  let currentCheckboxes = document.querySelectorAll('input[name="time"]');
  currentCheckboxes.forEach((checkbox) => (checkbox.checked = false));
}

function storeDataCurrentDate(date) {
  console.log("date: " + date);
  let dates = "";
  // check if timerange exist or not
  //  if cheecked => store
  let currentCheckboxes = document.querySelectorAll('input[name="time"]');
  var arr = Array.prototype.slice.call(currentCheckboxes); // Now it's an Array.
  arr.forEach((box) => {
    if (box.checked) {
      dates += arr.indexOf(box) + 1 + ",";
    }
  });
  console.log("dates: " + dates);

  // console.log(dates.slice(0, -1));
  document.cookie = `month_${currMonth}date_${date} = ${dates.slice(0, -1)}`;
}

function storeDataCurrentVaccine(date) {
  let vaccines = "|";
  let currentCheckboxeVaccines = document.querySelectorAll(
    'input[name="vaccine"]'
  );
  let currentVaccinesQuantity = document.querySelectorAll(
    'input[name="vaccine"]'
  );

  var arr = Array.prototype.slice.call(currentCheckboxeVaccines); // Now it's an Array.
  arr.forEach((box) => {
    if (box.checked) {
      let quantity = document.querySelector(
        `input[name = ${box.id}Quantity]`
      ).value;
      vaccines += box.id + "(" + quantity + ")" + " ,";
    }
  });
}
