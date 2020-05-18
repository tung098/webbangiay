$( document ).ready( function(){
	$('.blink')
		.focus(function(){
			if( $(this).attr('value') == $(this).attr('title') ) {
				$(this).attr({ 'value': '' });
			}
		})
		.blur(function(){
			if( $(this).attr('value') == '' || typeof($(this).attr('value')) == 'undefined') {
				$(this).attr({ 'value': $(this).attr('title') })
			}
		});
		
	$('#slider-holder ul').jcarousel({
		scroll: 1,
		wrap: 'both',
		initCallback: _init_carousel,
		buttonNextHTML: null,
		buttonPrevHTML: null
	});
	
	$('.tabs a').slide({
		'slide_selector' : '.tab-content'
	})
});
function _init_carousel(carousel) {
	$('#slider-nav .next').bind('click', function() {
		carousel.next();
		return false;
	});
	
	$('#slider-nav .prev').bind('click', function() {
		carousel.prev();
		return false;
	});
};

var _hoten;
var _sdt;
var _email;
var _c_email = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
var _diachi;
var _thanhtoan;

function check() {
    var hoten = document.fDK.hoten.value;
    var sdt = document.fDK.sdt.value;
    var email = document.fDK.email.value;
    var diachi = document.fDK.diachi.value;
    var thanhtoan = document.fDK.thanhtoan.value;

    if (hoten == '') {
        document.getElementById("c-hoten").innerHTML = "Họ tên không được để trống.";
        _hoten = false;
    }
    else {
        document.getElementById("c-hoten").innerHTML = "";
        _hoten = true;
    }

    if (sdt == '') {
        document.getElementById("c-sdt").innerHTML = "Điện thoại không được để trống.";
        _sdt = false;
    }
    else {
        document.getElementById("c-sdt").innerHTML = "";
        _sdt = true;
    }

    if (email == '') {
        document.getElementById("c-email").innerHTML = "Email không được để trống.";
        _email = false;
    }
    else if (!_c_email.test(email))
    {
        document.getElementById("c-email").innerHTML = "Hãy nhập email hợp lệ.";
        _email = false;
    }
    else {
        document.getElementById("c-email").innerHTML = "";
        _email = true;
    }

    if (diachi == '') {
        document.getElementById("c-diachi").innerHTML = "Địa chỉ không được để trống.";
        _diachi = false;
    }
    else {
        document.getElementById("c-diachi").innerHTML = "";
        _diachi = true;
    }

    if (thanhtoan == '') {
        document.getElementById("c-thanhtoan").innerHTML = "Bạn chưa chọn phương thức thanh toán.";
        _thanhtoan = false;
    }
    else {
        document.getElementById("c-thanhtoan").innerHTML = "";
        _thanhtoan = true;
    }

    if (_hoten == true && _sdt == true && _email == true && _diachi == true && _thanhtoan == true) {
        alert("Đặt hàng thành công. Thông tin đơn hàng được gửi vào Email của bạn !");
        sleep(1000);
        return true;
    }
    else
        return false;
}

function sleep(milliseconds) {
    var start = new Date().getTime();
    for (var i = 0; i < 1e7; i++) {
        if ((new Date().getTime() - start) > milliseconds) {
            break;
        }
    }
}