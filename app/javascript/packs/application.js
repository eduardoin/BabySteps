import "bootstrap";
import flatpickr from  'flatpickr';
import swal from 'sweetalert';
import { initDrawer } from '../components/drawer'

// Set window components
window.swal = swal;

initDrawer();

$('.clipboard-btn').tooltip({
  trigger: 'click',
  placement: 'bottom'
});

function setTooltip(btn, message) {
  $(btn).tooltip('show')
    .attr('data-original-title', message)
    .tooltip('show');
}

function hideTooltip(btn) {
  setTimeout(function() {
    $(btn).tooltip('hide');
  }, 1000);
}

// Clipboard

var clipboard = new Clipboard('.clipboard-btn');

clipboard.on('success', function(e) {
  setTooltip(e.trigger, 'Copied!');
  hideTooltip(e.trigger);
});

clipboard.on('error', function(e) {
  setTooltip(e.trigger, 'Failed!');
  hideTooltip(e.trigger);
});



$('.flatpickr-input').flatpickr({
  enableTime: true
});
