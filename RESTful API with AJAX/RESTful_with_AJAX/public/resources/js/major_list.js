$(document).ready(function () {
    $('#search_major_form').submit(function (event) {
        event.preventDefault();

        var $searchValue = $('#search_major_value');

        $.ajax({
            url: "/search?search_major=" + $searchValue.val(),
            type: "GET",
            contentType: "application/json",
            success: function (data) {
                // empty current table body
                $('#major_table_body').empty();

                // add row to table
                $.each(data, function (i, major) {
                    var row = '<tr><td>' + major.id + '</td><td>' + major.name + '</td></tr>';
                    $('#major_table').find('tbody').append(row);
                });
            }
        });
    });
});