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
// 非同期チャット <a href="/clans/${board.clan_id}/boards/${board.clan_id}?board_id=${board.id}" data-method="delete" rel="nofollow" data-confirm="本当に削除しますか?">削除</a>
$(function(){
  function buildHTML(board){  
    var html = `<div class="balloon_r">
                  <div class="faceicon">
                    <img src="${board.user_image.url}">
                  </div>
                  <div class="co-wrap">
                    <p class = "says">${board.content}</p>
                    <div style = "text-align: right;">
                      ${board.created_at}
                    </div>
                  </div>
                  
                </div>`
    return html;
  } 
  
  $('#new_board').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this); 
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false 
    })
    .done(function(data){  
      var html = buildHTML(data);
      $('.boards').append(html);
      
      $('.contentbox').val('');
      $('.form__submit').prop('disabled', false);
    })  
    .fail(function(){ 
      alert('error');
    }) 
  })
})
