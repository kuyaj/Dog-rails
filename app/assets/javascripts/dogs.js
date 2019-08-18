document.addEventListener('turbolinks:load', function(){
  var upload_image = document.getElementById('dog_avatar');
  var segment_compact = document.getElementById('segment-preview-image');
  var create_dog = document.getElementById('create-dog')
  const allowed_image_types = ['jpg', 'jpeg', 'png'];
  
  upload_image.addEventListener('click', function() {
    this.addEventListener('change', () => {
      var file_extension = this.files[0].type.split("/").pop(); // get image file extension e.g png, jpeg
      if (allowed_image_types.includes(file_extension)) {
        console.log("Image is allowed.")
        if (this.files && this.files[0]) {
          var image = document.querySelector('img');  // $('img')[0] 
          image.src = URL.createObjectURL(this.files[0]); // set src to file url
        }
        segment_compact.removeAttribute("hidden");
        create_dog.removeAttribute('disabled');
      }
      else{
        alert("The image you uploaded is not allowed.")
      }
     });
  })
});
