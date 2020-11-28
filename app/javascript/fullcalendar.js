import { Calendar} from '@fullcalendar/core';

import interactionPlugin from '@fullcalendar/interaction';
import resourceCommonPlugin from '@fullcalendar/resource-common';
import resourceTimeGridPlugin from '@fullcalendar/resource-timegrid';

document.addEventListener('turbolinks:load', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new Calendar(calendarEl, {
        schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',

        plugins: [ interactionPlugin, resourceCommonPlugin, resourceTimeGridPlugin],
        timeZone: 'UTC',
        selectable: true,
        editable: true,
        events: gon.events,
    });
    calendar.render();
});