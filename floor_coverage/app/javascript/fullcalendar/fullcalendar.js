import { Calendar } from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import interactionPlugin from '@fullcalendar/interaction'; // for selectable
import timeGridPlugin from '@fullcalendar/timegrid';
document.addEventListener('turbolinks:load', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new Calendar(calendarEl, {
        selectable: true,
        headerToolbar: { left: 'custom1',
            center: 'title'
        },
        dateClick: function(info) {
            alert('clicked ' + info.dateStr);
        },
        select: function(info) {
            alert('selected ' + info.startStr + ' to ' + info.endStr);
        },
        footerToolbar: {left: 'dayGridMonth,dayGridWeek, '
        },
        customButtons: {
            custom1: {
                text: 'Add Shift',
                click: function () {
                    var shiftStr = prompt('Enter the name of your shift');
                    var shiftName = new String(shiftStr + 'T00:00:00');

                    if (!isNaN(date.valueOf())) { // valid?
                        calendar.addEvent({
                            title: 'shiftName',
                            start: date,
                            allDay: true
                        });
                        alert('Great. Now, update your database...');
                    } else {
                        alert('Invalid date.');
                    }
                }
            },
        },



        plugins: [ interactionPlugin,dayGridPlugin ],
        initialView: 'dayGridWeek',



    });




    calendar.render();
});
