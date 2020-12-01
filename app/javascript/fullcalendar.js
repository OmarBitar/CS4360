import { Calendar} from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
import timeGridPlugin from "@fullcalendar/timegrid";


document.addEventListener('turbolinks:load', function() {
    let calendarEl = document.getElementById('calendar');

    let calendar = new Calendar(calendarEl, {
        plugins: [ interactionPlugin, timeGridPlugin ],
        events: gon.events,
        timeZone: false,
        initialView: 'timeGridWeek',
        selectable: true,
        selectMirror: true,
        selectMinDistance: 1,
        allDaySlot: false,
        displayEventTime: true,
        headerToolbar: {
            start:'prev',
            center:'title',
            end:'next',
        },
        footerToolbar: {
            start: 'addShift',
        },

        // Passes the formatted start and end times to the new shifts form
        select: function(selection) {
            if (selection.start.getUTCDate() === (selection.end.getUTCDate())) {
                // newShift tells the form to override the default values
                sessionStorage.setItem("newShift", true);
                sessionStorage.setItem("date", format(selection.start, "date"));
                sessionStorage.setItem("start", format(selection.start, "time"));
                sessionStorage.setItem("end", format(selection.end, "time"));
                window.open(gon.new_shift, "_self");
            }
            else {
                alert("Overnight shifts are not supported.");
                calendar.unselect();
            }
        },

        customButtons: {
            addShift: {
                text: 'Add Shift',
                click: function () {
                    window.open(gon.new_shift,"_self");
                },
            },
        },
    });
    calendar.render();
});


// takes a time object and returns a string of HH:MM or YYYY-MM-DD
function format (time, type) {
    switch(type) {
        case "time":
            var hours, minutes;
            hours = time.getUTCHours();
            minutes = time.getUTCMinutes();
            if (hours < 10) hours = "0" + hours;
            if (minutes < 10) minutes = "0" + minutes;
            return hours + ":" + minutes;

        case "date":
            var year, month, day;
            year = time.getUTCFullYear();
            month = time.getUTCMonth() + 1;
            day = time.getUTCDate();
            if (month < 10) month = "0" + month;
            if (day < 10) day = "0" + day;
            return year + "-" + month + "-" + day;
    }
}