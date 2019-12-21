'use strict';
$(document).ready(function(){
    // Bootstrap switch
    $.each($('.make-switch'), function () {
        $(this).bootstrapSwitch({
            onText: $(this).data('onText'),
            offText: $(this).data('offText'),
            onColor: $(this).data('onColor'),
            offColor: $(this).data('offColor'),
            size: $(this).data('size'),
            labelText: $(this).data('labelText')
        });
    });

    // Switchery
    new Switchery(document.querySelector('.sm_toggle'), { size: 'small', color: '#00c0ef', jackColor: '#fff' });
    new Switchery(document.querySelector('.sm_toggle_checked'), { size: 'small', color: '#ff8080', jackColor: '#fff' });
    new Switchery(document.querySelector('.sm_disable'), { size: 'small', disabled: true });

    new Switchery(document.querySelector('.sm_disable_checked'), { size: 'small', disabled: true, color:'#0fb0c0',  jackColor: '#fff' });

    new Switchery(document.querySelector('.md_toggle'), { color: '#0fb0c0', secondaryColor: '#ffb300',jackColor: '#fff' });
    new Switchery(document.querySelector('.md_toggle_checked'), { color: '#00c0ef', jackColor: '#fff' });
    new Switchery(document.querySelector('.md_disable'), { disabled: true });
    new Switchery(document.querySelector('.md_disable_checked'), { color: '#668cff', jackColor: '#fff', disabled: true });

    new Switchery(document.querySelector('.md_colored'),{ color: '#0fb0c0', secondaryColor: '#ffb300', jackColor: '#fff', jackSecondaryColor: '#0fb0c0' });

});