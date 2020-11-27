import { Calendar } from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import interactionPlugin from '@fullcalendar/interaction'; // for selectable
import timeGridPlugin from '@fullcalendar/timegrid';
import { get,push } from '../api_ajax'
document.addEventListener('turbolinks:load', function() {
    var calendarEl = document.getElementById('calendar');

    //Template for pushing and get data
	var fetched_items = get('roles');
	console.log(fetched_items);
	//push('roles',{ name: "Yehuda", priority: 1 });
	
    var calendar = new Calendar(calendarEl, {
        selectable: true,
		selectHelper: true,
		editable: true,
		nowIndicator: true,
		allDaySlot: false,
        headerToolbar: { left: 'custom1',
            center: 'title',
			right: 'custom2'
        },
	
	eventClick: function(info) {
		var eventObj = info.event;

			if (eventObj.url) {
				alert(
				'Clicked ' + eventObj.title + '.\n' +
				'Will open ' + eventObj.url + ' in a new tab'
				);

			window.open(eventObj.url);

			info.jsEvent.preventDefault(); // prevents browser from following link in current tab.
			} 
			else {
				var addRoles = window.confirm('The user id is ' + gon.user_id);
				// var addRoles = window.confirm('Would you like to add roles to this shift?');
			}
	},
        select: function(info) {
			var sNewShift = window.confirm('Would you like to make a shift?');
			if (sNewShift) {
				var sshiftStr = prompt('Enter the name of your shift');
				var sshiftName = new String (sshiftStr);
				var sShiftDateString = info.start;
				var sShiftDateHourStart = (info.start.getHours() + 24) %12 || 12;
				var sShiftDateMinutesStart = (info.start.getMinutes()<10?'0':'') + info.start.getMinutes();
				var ampmStart = info.start.getHours() >= 12 ? 'pm' : 'am';
				var sShiftDateHourEnd = (info.end.getHours() + 24) %12 || 12;
				var sShiftDateMinutesEnd = (info.end.getMinutes()<10?'0':'') + info.end.getMinutes();
				var ampmEnd = info.end.getHours() >= 12 ? 'pm' : 'am';
				var sShiftStart = window.confirm('Start shift at: ' + sShiftDateHourStart + ":" + sShiftDateMinutesStart + ampmStart + '?');
				var sShiftEnd = window.confirm('End shift at: ' + sShiftDateHourEnd + ":" + sShiftDateMinutesEnd + ampmEnd + '?');
				
				if (sShiftStart && sShiftEnd) {
						var sdateStart = info.start;
						var sdateEnd = info.end;
						calendar.addEvent({
							id: sshiftName,
							allDay: false,
							editable: true,
							title: sshiftName,
							start: sdateStart,
							end: sdateEnd
						});
						var scurrentEvent = calendar.getEventById(sshiftName);
						console.log(scurrentEvent);
						push('shifts',{ date: scurrentEvent.start, start: scurrentEvent.start, end: scurrentEvent.end, employee: 1, role: 2 });
					}
					else {
					}
			}
			else {
			}			
        },
        footerToolbar: {left: 'timeGridWeek'
        },
        customButtons: {
            custom1: {
                text: 'Add Shift',
                click: function () {
                    var shiftStr = prompt('Enter the name of your shift');
					if (shiftStr == null) {
						return;
					}
                    var shiftName = new String(shiftStr);
					var currentDate = new Date();
					var dateStrDay = prompt('Enter the two digit starting day');
					var startTime = prompt('Enter a start time in hh:mm format');
					var startampm = prompt('am or pm?');
					if (startampm == 'pm') {
						var time = (startTime + ' PM');
						var hours = Number(time.match(/^(\d+)/)[1]);
						var minutes = Number(time.match(/:(\d+)/)[1]);
						var AMPM = time.match(/\s(.*)$/)[1].toLowerCase();

						if (AMPM == "pm" && hours < 12) hours = hours + 12;
						if (AMPM == "am" && hours == 12) hours = hours - 12;
						var sHours = hours.toString();
						var sMinutes = minutes.toString();
						if (hours < 10) sHours = "0" + sHours;
						if (minutes < 10) sMinutes = "0" + sMinutes;
						var startTime = sHours + ':' + sMinutes
					}
					else {
					}
					var endTime = prompt('Enter an end time in hh:mm format');
					var endampm = prompt('am or pm?');
					if (endampm == 'pm') {
						var etime = (endTime + ' PM');
						var ehours = Number(etime.match(/^(\d+)/)[1]);
						var eminutes = Number(etime.match(/:(\d+)/)[1]);
						var eAMPM = etime.match(/\s(.*)$/)[1].toLowerCase();

						if (eAMPM == "pm" && ehours < 12) ehours = ehours + 12;
						if (eAMPM == "am" && ehours == 12) ehours = ehours - 12;
						var seHours = ehours.toString();
						var seMinutes = eminutes.toString();
						if (ehours < 10) seHours = "0" + seHours;
						if (eminutes < 10) seMinutes = "0" + seMinutes;
						var endTime = seHours + ':' + seMinutes
					}
					var date = new Date(currentDate.getFullYear() + '-' + (currentDate.getMonth() +1) + '-' + dateStrDay + 'T' + startTime + ':00');
					var end = new Date(currentDate.getFullYear() + '-' +  (currentDate.getMonth() +1) + '-' + dateStrDay + 'T' + endTime + ':00');
								
                    if (!isNaN(date.valueOf())) { // valid start time
                        calendar.addEvent({
							id: shiftName,
							allDay: false,
							editable: true,
                            title: shiftName,
							start: date,
							end: end
                        });
						var currentEvent = calendar.getEventById(shiftName);
						push('shifts',{ date: currentEvent.start, start: currentEvent.start, end: currentEvent.end, employee: 1, role: 2 });

                    } else {
                        alert('Invalid date.');
                    }
                }
            },
			custom2: {
				text: 'Delete Shifts',
				click: function () {
					calendar.removeAllEvents();
				}
			}
        },
		



        plugins: [ timeGridPlugin, dayGridPlugin, interactionPlugin ],
        initialView: 'timeGridWeek',



    });




    calendar.render();
});