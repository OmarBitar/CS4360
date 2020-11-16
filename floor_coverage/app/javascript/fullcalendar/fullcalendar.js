import { Calendar } from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import interactionPlugin from '@fullcalendar/interaction'; // for selectable
import timeGridPlugin from '@fullcalendar/timegrid';
document.addEventListener('turbolinks:load', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new Calendar(calendarEl, {
        timeZone: 'UTC',
        events: [
            {
                id: 'a',
                title: 'my event',
                start: '2018-09-01'
            }
        ],
        selectable: true,
        headerToolbar: { left: 'custom1',
            center: 'title'
        },

        dateClick: function(info) {
            alert('clicked ' + info.dateStr);
        },
        footerToolbar: {left: 'dayGridMonth,timeGridWeek,timeGridDay'
        },
        customButtons: {
            custom1: {
                text: 'Add Shift',
                click: function () {
                    var title = prompt('Enter the name of your shift');
                    var shiftName = new String(shiftStr);

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



        plugins: [ interactionPlugin,dayGridPlugin,timeGridPlugin ],
        initialView: 'dayGridMonth',



    });




    calendar.render();
});
