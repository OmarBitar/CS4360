import { Calendar} from '@fullcalendar/core';

import interactionPlugin from '@fullcalendar/interaction';
import resourceCommonPlugin from '@fullcalendar/resource-common';
import resourceTimeGridPlugin from '@fullcalendar/resource-timegrid';

document.addEventListener('turbolinks:load', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new Calendar(calendarEl, {
        schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
        plugins: [ interactionPlugin, resourceCommonPlugin, resourceTimeGridPlugin],
        selectable: true,
        editable: true,
        events: [
            {
                title: 'An Event',
                start: '2020-11-27T07:00',
                end: '2020-11-27T17:00'
            },
            {
                title: 'Another Event',
                start: '2020-11-27T09:00',
                end: '2020-11-27T19:00'
            }
        ]
    });

    calendar.render();
});