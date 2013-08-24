$(document).ready(function() {
	$('form').on('submit', function(event) {
		event.preventDefault();

		var url = event.target.action;

		$.ajax({
			url: url,
			type: "POST",
			dataType: "json",
			data: $(this).serialize(),
			success: function(response) {
				console.log(event.target)
				var $friend_button = $(event.target).find(".friend_submit_button").toggleClass('hidden');
				var $unfriend_button = $(event.target).parent().find(".unfriend_submit_button").toggleClass('hidden');
				// $friend_button.fadeToggle();
				console.log($unfriend_button)

				// $unfriend_button.fadeToggle();
				// console.log("friend deleted")
			}
		})
	})
});