import "bootstrap";
import flatpickr from  'flatpickr';
import swal from 'sweetalert';
import { initDrawer } from '../components/drawer'

// Set window components
window.swal = swal;

initDrawer();

$('.btn-share').tooltip({
  trigger: 'click',
  placement: 'top'
});

function setTooltip(btn, message) {
  $(btn).tooltip('show')
    .attr('data-original-title', message)
    .tooltip('show');
}

function hideTooltip(btn) {
  $(btn).tooltip('hide');
}

// Clipboard

var clipboard = new Clipboard('.btn-share');

clipboard.on('success', function(e) {
  setTooltip(e.trigger, 'Copied!');
  setTimeout(_ => hideTooltip(e.trigger), 1000)
});

clipboard.on('error', function(e) {
  setTooltip(e.trigger, 'Failed!');
  setTimeout(_ => hideTooltip(e.trigger), 1000)
});



$('.flatpickr-input').flatpickr({
  enableTime: true
});

$('.alert').delay(2000).fadeOut();
