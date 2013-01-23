$(document).ready(function() {
	// Load projects
	$.ajax({
		type: 'GET',
		url:  '/projects.json',
		success: function(projects) {
			$.each(projects,function(i,project) {
				console.log($(ich.project(project)))
				$('.items').append($(ich.project(project)));
			});

			$('.panel.image').toggle(function(){
				$(this).addClass('flip');
			},function(){
				$(this).removeClass('flip');
			});
		}
	})

	// Load blog posts


	// Load tweets
	//https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=chrismhs&count=2

})