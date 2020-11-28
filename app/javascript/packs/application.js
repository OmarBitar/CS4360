// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


import { Calendar} from '@fullcalendar/core';

import interactionPlugin from '@fullcalendar/interaction';
import resourceCommonPlugin from '@fullcalendar/resource-common';
import resourceTimeGridPlugin from '@fullcalendar/resource-timegrid';

document.addEventListener('DOMContentLoaded', function() {
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