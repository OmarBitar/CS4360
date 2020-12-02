import { Calendar} from '@fullcalendar/core';
import timeGridPlugin from "@fullcalendar/timegrid";

document.addEventListener('turbolinks:load', function() {
    let static_calendarEl = document.getElementById('static_calendar');

    let static_calendar = new Calendar(static_calendarEl, {
        plugins: [ timeGridPlugin ],
        events: gon.static_events,
        timeZone: false,
        initialView: 'timeGridWeek',
        allDaySlot: false,
        displayEventTime: true,
        headerToolbar: {
            start:'prev',
            center:'title',
            end:'next',
        },
    });
    static_calendar.render();
});
console.log(gon.static_events);