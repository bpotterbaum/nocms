$ ->
  $(".edit").click ->
    $(".editable").attr "contenteditable", "true"

  $(".save").click ->
    editsObj = {}

    $(".editable").each ->
      editsObj[$(this).attr('id')] = escape($(this).html());

    $.ajax(
      url: '/pages'
      type: 'POST'
      dataType: 'JSON'
      data: {
        name:'Home-page',
        html: JSON.stringify(editsObj)
      }

    ).success (json) ->
      console.log(json)
      $(".editable").attr "contenteditable", "false"





