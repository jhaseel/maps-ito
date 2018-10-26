function hacer(imagen) {
 onVrViewLoad();
  var dialog = document.querySelector('#dialog');
  if (!dialog.showModal) {
    dialogPolyfill.registerDialog(dialog);
  }
  dialog.showModal();
  dialog.querySelector('button:not([disabled])').addEventListener('click', function() {
    dialog.close();
  });

}

function onVrViewLoad() {
  document.getElementById('vrview').innerHTML = "";
  var vrView = new VRView.Player('#vrview', {
    image: 'https://image.ibb.co/d2gM1V/1a.png',
    is_stereo: true,
    width: "500px",
    height:"500px"
  });
}
