function hacer() {
  load360();
  var dialog = document.querySelector('#dialog');
  if (!dialog.showModal) {
    dialogPolyfill.registerDialog(dialog);
  }
  dialog.showModal();
  dialog.querySelector('button:not([disabled])').addEventListener('click', function() {
    dialog.close();
  });

}

function load360() {
  pannellum.viewer('panorama', {
      "type": "equirectangular",
      "panorama": "http://cine-digital.com/wp-content/uploads/2017/05/360_videos-1288x724.jpg"
  });
}
