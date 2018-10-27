function hacer(imagen) {
 onVrViewLoad(imagen);
  var dialog = document.querySelector('#dialog');
  if (!dialog.showModal) {
    dialogPolyfill.registerDialog(dialog);
  }
  dialog.showModal();
  dialog.querySelector('button:not([disabled])').addEventListener('click', function() {
    dialog.close();
  });

}

function onVrViewLoad(imagen) {
  let link = (imagen!='null')?imagen :  "https://image.ibb.co/d2gM1V/1a.png";
  document.getElementById('panorama').innerHTML ="";

  pannellum.viewer('panorama', {
    "type": "equirectangular",
    "panorama": link
});
}
