// クランボックス
$(document).ready(function() {
  // executes when HTML-Document is loaded and DOM is ready
 
   
    if (location.hash !== '') $('a[href="' + location.hash + '"]').tab('show');
       return $('a[data-toggle="tab"]').on('shown', function(e) {
       return location.hash = $(e.target).attr('href').substr(1);
     });
   
   
 // document ready  
 });
 
// 画像プレビュー
$(function () {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
        $("#img_prev").attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#image-select-btn").change(function () {
    readURL(this);
  });
});