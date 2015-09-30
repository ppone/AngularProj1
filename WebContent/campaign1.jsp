<!DOCTYPE html>
<html class="jelly-page">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Appointment-Cancellation-Broadcasts_New</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<style>
.navbar {
	border-radius: 0;
}
</style>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.angularjs.org/1.2.13/angular.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.8/angular-ui-router.min.js"></script>
<script src="js/sumiapp.js"></script>
<script src="js/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">

</head>
<body ng-app="sumiApp">
	<div class="main-wrap orangetheme ehx-cont">
		<div class="main-cont nomargin">
			<div class="blue-nav">
				<div class="blue-pad">
					<div class="dropdown referal-drop pull-left">
						<a href="#"><i class="icon icon-orgcal"></i> Open Access
							Activation <b class="caret"></b></a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
			<form class="form-horizontal" role="form">


				<div class="col-sm-12 fifth-scren nopadding">
					<div class="form-group nomarleft nomarright">
						<div class="col-sm-12 mt10">
							<h4 class="blue-header">
								<i class="icon icon-orghead"></i> Create Another Campaign
							</h4>
						</div>
					</div>
					<div class="col-sm-12 nopadding">
						<div id="subcontentpane">
							<nav class="navbar navbar-inverse" role="navigation">
								<div class="navbar-header">
									<a class="navbar-brand" ui-sref="#">AngularUI Router</a>
								</div>
								<ul class="nav navbar-nav">

									<li><a ui-sref="whentopublish">whentopublish</a></li>
									<li><a ui-sref="whotonotify">whotonotify</a></li>
									<li><a ui-sref="home">Home</a></li>
									<li><a ui-sref="sumilist">sumilist</a></li>
									<li><a ui-sref="sumiparagraph">sumiparagraph</a></li>


								</ul>
							</nav>
							<!-- <div class="tab-content12" href="#/views/whentopublish"></div> -->
							<div class="tab-content12" ui-view></div>

						</div>
					</div>
				</div>



			</form>
		</div>
		<div class="clearfix"></div>


	</div>


	<!-- Global Script Files
<script src="js/vendor/jquery-1.11.0.min.js"></script> 
<script src="js/vendor/bootstrap.min.js"></script> 
<script src="js/vendor/jquery-ui.js"></script> 
<script src="js/vendor/jscrollpane.js"></script> 
<script src="js/vendor/fx-table.js"></script> 
<script src="js/vendor/datatable.js"></script>
<script src="js/vendor/floatThead.js"></script>  
<script src="js/jquery-ui-timepicker-addon.js"></script> 
<script src="js/jquery.inputmask/jquery.inputmask.js"></script> 
<script src="js/jquery.inputmask/jquery.inputmask.extensions.js"></script> 
<script src="js/jquery.inputmask/jquery.inputmask.date.extensions.js"></script> 
<script src="js/main.js"></script> 
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>     
 -->
	<script>
		$(document).ready(function() {
			$(window).resize(function() {
				var fh = $('#filter').height();
				var th = $('html').height() - (170 + fh);
				$(".dash-height3").css('height', th + 'px');

				var th1 = $('html').height() - (185 + fh);
				$(".dash-height9").css('height', th1 + 'px');

				var th2 = $('html').height() - (280 + fh);
				$(".dash-height11").css('height', th2 + 'px');

				var ld = $('.first-scren');
				var ht = $('html');
				ld.css({
					top : (ht.height() - (ld.height() + 45)) / 2,
					left : (ht.width() - (ld.width())) / 2
				});

				var ld = $('.second-scren');
				var ht = $('html');
				ld.css({
					top : (ht.height() - (ld.height() + 45)) / 2,
					left : (ht.width() - (ld.width())) / 2
				});

				var cons = $('.consent-height');
				var ch = $('html').height() - 380;

				cons.height(ch);

				var hgt = $('.consent-height .hgt410');
				var geth = $('.consent-height').outerHeight() - 250;

				hgt.height(geth);

				var hgt445 = $('.consent-height .hgt445');
				var geth445 = $('.consent-height').outerHeight() - 215;

				hgt445.height(geth445);

				var hgt436 = $('.consent-height .hgt436');
				var geth436 = $('.consent-height').outerHeight() - 190;

				hgt436.height(geth436);

				var hgt431 = $('.consent-height .hgt431');
				var geth431 = $('.consent-height').outerHeight() - 185;

				hgt431.height(geth431);

				var np = $('.notify-panes');
				var npheight = $('html').height() - 243;

				np.height(npheight);

				var mt211 = $('.consent-height .mt211');
				var mth = $('.consent-height').height() / 2 - 100;

				mt211.css('margin-top', mth + 'px');

			});

			$(window).resize();
		});

		$('.popup-drop').hide();
		$('.lettr, .caret').on('click', function() {
			var _that = this;
			$('.popup-drop').toggle().animate({}, 100, function() {
				$(this).position({
					of : _that,
					my : 'right top',
					at : 'right+2 top+27',
					collision : "flipfit"
				//offset: '10 10'
				}).animate({
					"opacity" : 1
				}, 100)
			});
		});

		$('.qestionpopup').hide();
		$('.icon-orgquestion').on('click', function() {
			var _that1 = this;
			$('.qestionpopup').toggle().animate({}, 100, function() {
				$(this).position({
					of : _that1,
					my : 'right top',
					at : 'right-28 top-15',
					collision : "flipfit"
				//offset: '10 10'
				}).animate({
					"opacity" : 1
				}, 100)
			});
		});

		
		$('.ok-btn11').on('click', function() {
			$('.qestionpopup').hide();
		});
		$('.activate-btn').on('click', function(e) {
			$('.first-scren').hide();
			$('.second-scren').show();
		});

		$('.sign-btn').on('click', function(e) {
			$('.third-scren').show();
			$('.second-scren').hide();
		});
		$('.manage-btn').on('click', function(e) {
			$('.third-scren').hide();
			$('.fourth-scren').show();
		});
		$('.create-another').on('click', function(e) {
			$('.fifth-scren').show();
			$('.fourth-scren').hide();
		});

		
		$('#btnsaveproxy')
				.on(
						'click',
						function() {

							$('.grey-breadcrumb li').removeClass('active');
							$('#subcontentpane > .tab-content >.tab-pane')
									.removeClass('active');
							$('.grey-breadcrumb li:nth-child(2)').addClass(
									'active');
							$(
									'#subcontentpane > .tab-content > .tab-pane:nth-child(2)')
									.addClass('active');
							$('#Adolestart').prevAll('.tab-pane').addClass(
									'done');
							$('.grey-breadcrumb li.active').prevAll('li')
									.addClass('done');
						});
		$('#save-btn')
				.on(
						'click',
						function() {

							$('.grey-breadcrumb li').removeClass('active');
							$('#subcontentpane > .tab-content >.tab-pane')
									.removeClass('active');
							$('.grey-breadcrumb li:nth-child(3)').addClass(
									'active');
							$(
									'#subcontentpane > .tab-content > .tab-pane:nth-child(3)')
									.addClass('active');
							$('#Adolestart').prevAll('.tab-pane').addClass(
									'done');
							$('.grey-breadcrumb li.active').prevAll('li')
									.addClass('done');
						});
		$('#finish-btn').on('click', function() {
			$('.fourth-scren').show();
			$('.fifth-scren').hide();
		});
	</script>
</body>
</html>
