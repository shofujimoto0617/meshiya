/*Slide Toggle
------------------------------------------------------*/
$(document).on('turbolinks:load', () =>{
  $('.block-toggle__press .btn').on('click', event =>{
    $(event.currentTarget).parent('.block-toggle__press').next('.block-toggle__content').slideToggle(700);
  });
});

/*Image uplorader
------------------------------------------------------*/
$(document).on('turbolinks:load', () =>{

  const imgUplorader = new ImgUplorader;
  imgUplorader.copyToSaveInput();

});

class ImgUplorader{
  constructor(){
    this.selectorPreview = '.form-img-uploader__preview';
    this.selectorSave = '.form-img-uploader__save';
    this.selectorCache = '.form-img-uploader__cache';
    this.noPhotoImgPath = '/assets//images/no_image.jpg';// <= nophoto画像のパスを設置

  }

  /*
  * Change preview image to nophoto image when image is not selected
  * @param input : Element of current target
  */
  copyToSaveInput(){
    $(document).on('change', this.selectorSave, event => {

      const input = $(event.currentTarget);
      const filesLength = input[0].files.length;
      const cacheDefaultVal = $(input).next(this.selectorCache)[0].defaultValue;

      // Change preview image to nophoto image when image is not selected
      if (this.hasNotImg(filesLength)) {
        this.changeNoPhotoImg(input);
        return;
      }

      // Change preview image to selected image when image is selected
      this.changeSelectedImg(input);

    });
  }

  /*
   * Return true when input doesn't have file
   * @param filesLength : file length of input
   * @return bool
  */
  hasCacheDefaultImg(filesLength){
    if(filesLength == 0){
      return true;
    }

    return false;
  }

  /*
   * Return true when input doesn't have file
   * @param filesLength : file length of input
   * @return bool
  */
  hasNotImg(filesLength){
    if(filesLength == 0){
      return true;
    }

    return false;
  }

  /*
   * Change preview image to nophoto image when image is not selected
   * @param input : Element of current target
  */
  changeNoPhotoImg(input){
    $(input).prev(this.selectorImg).children('img').attr('src', this.noPhotoImgPath);
  }

  /*
   * Change preview image to selected image when image is selected
   * @param input : Element of current target
  */
  changeSelectedImg(input){
    const reader = new FileReader();
    reader.onload = (progressEvent) => {
      $(input).prev(this.selectorImg).children('img').attr('src', progressEvent.currentTarget.result);
    }

    const file = input[0].files[0];
    reader.readAsDataURL(file);
  }
}