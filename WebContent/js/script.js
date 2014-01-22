$('table tbody tr').mouseover(function(){
	$(this).addClass('odd');
}).mouseout(function(){
	$(this).removeClass('odd');
});

//$('table tbody tr td a.delete').click(function(){
//	if(confirm("Tem certeza que deseja excluir?")){
//		var that = $(this)
//		$.ajax({
//			url: that.attr('href'),
//			success: function(){
//				that.parents('tr').fadeOut('slow',function(){
//					$(this).remove();
//				});
//			}
//		});
//	}
//	return false;
//});
