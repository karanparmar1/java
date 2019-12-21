'use strict';
$(document).ready(function () {
    // Chosen
    $(".hide_search").chosen({disable_search_threshold: 10});
    $(".chzn-select").chosen({allow_single_deselect: true});
    $(".chzn-select-deselect,#select2_sample").chosen();
    // End of chosen

    // Input mask
    $("#phones").inputmask();
    $("#product").inputmask("a*-999-a999");
    $("#percent").inputmask("99%");
    $(".date_mask").inputmask("dd/mm/yyyy");
   // End of input mask

    //tags input
    $('#tags').tagsInput();
    $("#input-21").fileinput({
        theme: "fa",
        previewFileType: "image",
        browseClass: "btn btn-success",
        browseLabel: "Pick Image",
        removeClass: "btn btn-danger",
        removeLabel: "Delete"


    });
    $("#input-4").fileinput({showCaption: false,
        theme: "fa"});
    $("#input-22").fileinput({
        theme: "fa",
        previewFileType: "text",
        allowedFileExtensions: ["txt", "md", "ini", "text"],
        previewClass: "bg-warning"
    });
    $("#input-43").fileinput({
        theme: "fa",
        showPreview: false,
        allowedFileExtensions: ["zip", "rar", "gz", "tgz"],
        elErrorContainer: "#errorBlock"
    });
    $("#input-fa").fileinput({
        theme: "fa",
        uploadUrl: "/file-upload-batch/2"
    });

Admire.formGeneral() ;
});
