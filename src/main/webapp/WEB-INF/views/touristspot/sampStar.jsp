<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>별점</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
 	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> 
<script type="text/javascript">
$(document).on('ready', function () {
    $('.kv-gly-star').rating({
        containerClass: 'is-star'
    });
    $('.kv-gly-heart').rating({
        containerClass: 'is-heart',
        defaultCaption: '{rating} hearts',
        starCaptions: function (rating) {
            return rating == 1 ? 'One heart' : rating + ' hearts';
        },
        filledStar: '<i class="glyphicon glyphicon-heart"></i>',
        emptyStar: '<i class="glyphicon glyphicon-heart-empty"></i>'
    });
    $('.kv-fa').rating({
        theme: 'krajee-fa',
        filledStar: '<i class="fa fa-star"></i>',
        emptyStar: '<i class="fa fa-star-o"></i>'
    });
    $('.kv-fa-heart').rating({
        defaultCaption: '{rating} hearts',
        starCaptions: function (rating) {
            return rating == 1 ? 'One heart' : rating + ' hearts';
        },
        theme: 'krajee-fa',
        filledStar: '<i class="fa fa-heart"></i>',
        emptyStar: '<i class="fa fa-heart-o"></i>'
    });
    $('.kv-uni-star').rating({
        theme: 'krajee-uni',
        filledStar: '&#x2605;',
        emptyStar: '&#x2606;'
    });
    $('.kv-uni-rook').rating({
        theme: 'krajee-uni',
        defaultCaption: '{rating} rooks',
        starCaptions: function (rating) {
            return rating == 1 ? 'One rook' : rating + ' rooks';
        },
        filledStar: '&#9820;',
        emptyStar: '&#9814;'
    });
    $('.kv-svg').rating({
        theme: 'krajee-svg',
        filledStar: '<span class="krajee-icon krajee-icon-star"></span>',
        emptyStar: '<span class="krajee-icon krajee-icon-star"></span>'
    });
    $('.kv-svg-heart').rating({
        theme: 'krajee-svg',
        filledStar: '<span class="krajee-icon krajee-icon-heart"></span>',
        emptyStar: '<span class="krajee-icon krajee-icon-heart"></span>',
        defaultCaption: '{rating} hearts',
        starCaptions: function (rating) {
            return rating == 1 ? 'One heart' : rating + ' hearts';
        },
        containerClass: 'is-heart'
    });

    $('.rating,.kv-gly-star,.kv-gly-heart,.kv-uni-star,.kv-uni-rook,.kv-fa,.kv-fa-heart,.kv-svg,.kv-svg-heart').on(
            'change', function () {
                console.log('Rating selected: ' + $(this).val());
            });
});

</script>

</head>
<body>
<input id="input-21b" value="4" type="number" class="rating" min=0 max=5 step=0.2 data-size="lg">

<br>
<input type="text" class="kv-gly-heart rating-loading" value="2" data-size="xs" title="">
</body>
</html>

