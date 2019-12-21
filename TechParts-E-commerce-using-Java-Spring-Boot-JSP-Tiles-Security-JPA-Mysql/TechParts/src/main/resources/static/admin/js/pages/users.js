'use strict';
$(document).ready(function() {
    var table = $('#editable_table');
    table.DataTable({
        dom: '<"text-xs-right"B><f>lr<"table-responsive"t>ip',
        buttons: [
            'copy', 'csv', 'print'
        ]
    });
    var tableWrapper = $("#editable_table_wrapper");
    tableWrapper.find(".dataTables_length select").select2({
        showSearchInput: false //hide search box with special css class
    }); // initialize select2 dropdown
    $("#editable_table_wrapper .dt-buttons .btn").addClass('btn-secondary').removeClass('btn-default');
});
