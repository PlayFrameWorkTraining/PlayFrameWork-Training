/**
 * Created by Thien on 8/23/2017.
 */

function SearchProduct() {
    var searchValue = $("#searchTerm").val();
    console.log("Here");
    console.log(searchValue);
    $.ajax({
        url: '/search?name=' + searchValue,
        method: 'GET',
        dataType: "JSON",
        success: function (data) {
            $('#studentResult').empty();
            $.each(data, function (i, item) {
                var html = '<tr><td>' + item.id + '</td><td>' + item.username + '</td><td>' + item.phone + '</td></tr>';
                $('#student_table').find('tbody').append(html);
            });
        }
    })
}