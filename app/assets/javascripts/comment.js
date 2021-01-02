$(function(){
  function buildHTML(comment){
    let html = `<div class="CommentText">
                ${comment.user_name}
                <p>:</p>
                ${comment.text}
                </div>`
    return html;
  }
  $('.New__comment').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.Contents').append(html);
      $('.New__comment__body').val('');
      $('.Comment__btn').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
})