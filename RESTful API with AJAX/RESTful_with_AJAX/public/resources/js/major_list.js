$(document).ready(function () {
    $('#search_major_form').submit(function (event) {
        event.preventDefault();

        var $searchValue = $('#search_major_value');

        $.ajax({
            url: "/search?search_major=" + $searchValue.val(),
            type: "GET",
            contentType: "application/json",
            success: function (data) {
                $.each(data, function (i, major) {
                    console.log(major.name);
                });
            }
        });
    });
});