window.addEventListener('click', function() {
  var upload_image = document.getElementById('dog_avatar');
  var segment_compact = document.getElementById("segment-preview-image");

  upload_image.addEventListener('click', function() {

    this.addEventListener('change', () => {

      if (this.files && this.files[0]) {
        var img = document.querySelector('img');  // $('img')[0]      
        img.src = URL.createObjectURL(this.files[0]); // set src to file url
      }

          segment_compact.removeAttribute("hidden");
     });
  })
})

