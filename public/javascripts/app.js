//JAVASCRIPT CODE GOES HERE
$(document).ready(function() {
  $("#joinMeetup").on("click", function(event){
    event.preventDefault();

    // var member_avatar = $('.avatar').attr("src");
    // var member_username = $('.username').text();
    var meetup_id = window.location.pathname.match(/\d+/)[0];

    var request = $.ajax({
      method: "POST",
      url: "/join/" + meetup_id,
      // data: {avatar: member_avatar, username: member_username}
    });

    request.done(function(current_user) {
      var obj = jQuery.parseJSON( current_user );
      var string = '<li><img src="' + obj.user.avatar_url + '" class="avatar"><p class="username">' + obj.user.username + '</p></li>'
      $(".memberList").append(string)
    });

  })
});
