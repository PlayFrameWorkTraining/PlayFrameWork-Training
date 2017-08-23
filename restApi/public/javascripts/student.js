/**
 * Created by Thien on 8/23/2017.
 */

$(document).ready(function(){
    var search = function() {
        var searchValue = document.getElementById("searchTerm").value;
        var url = "/search?name=" + searchValue;
        $.get(url, function (data) {
           $.get('/studentTemplate', function (template) {
               var newStudentBox = Mustache.render(template, data);
               $("#studentResult").html(newStudentBox);
           })
        });
    };
    document.getElementById("searchButton").addEventListener('click', search);
    search();
});