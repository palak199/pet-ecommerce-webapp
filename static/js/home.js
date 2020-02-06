$(document).ready(function(){
    console.log("kl");
    var meow=new Audio("Cute-cat-meowing-on-the-street.mp3");
    $("#cat-box").on('click',function(){
        meow.play();
    });
});
