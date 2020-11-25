
export function get(which) {
    let data = []
    jQuery.ajax({
        type: 'GET',
        url: "/" + which + ".json",
        dataType: 'json',
        success: function(json) {
            data.push(json)
        }
    }).fail(function(json){ alert(JSON.stringify(json.responseJSON)); });
    return data;
}

export function push(which,data) {
    jQuery.ajax({
        type: 'POST',
        url: "/" + which,
        dataType: 'json',
        contentType: 'application/json',
        data: JSON.stringify(data),
        success: function(json) { }
    }).fail(function(json){ alert(JSON.stringify(json.responseJSON)); });
}

