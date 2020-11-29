import { Calendar} from '@fullcalendar/core';

import interactionPlugin from '@fullcalendar/interaction';
import timeGridPlugin from "@fullcalendar/timegrid";
import dayGridPlugin from "@fullcalendar/daygrid";

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

document.addEventListener('turbolinks:load', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new Calendar(calendarEl, {
        plugins: [ timeGridPlugin, dayGridPlugin, interactionPlugin ],
        events: gon.events,
        timeZone: false,
        selectable: true,
        selectMirror: true,
        selectMinDistance: 1,
        editable: true,
        allDaySlot: false,
        displayEventTime: false,
        headerToolbar: {
            start:'prev',
            center:'title',
            end:'next',
        },
        footerToolbar: {
            start: 'custom1',
        },

        select: function(selectionInfo) {
            sessionStorage.setItem("newShift", true);
            sessionStorage.setItem("date", format(selectionInfo.start, "date"));
            sessionStorage.setItem("start", format(selectionInfo.start, "time"));
            sessionStorage.setItem("end", format(selectionInfo.end, "time"));
            window.open(gon.new_shift, "_self");
        },

        customButtons: {
            custom1: {
                text: 'Add Shift',
                click: function () {
                    window.open(gon.new_shift_path,"_self");
                },
            },
            // custom2: {
            //     text: 'Delete Shifts',
            //     click: function () {
            //         calendar.removeAllEvents();
            //     }
            // }
        },
    });

    calendar.render();
    console.log(calendar.events());
    // console.log(calendar.getEventById(10));
});