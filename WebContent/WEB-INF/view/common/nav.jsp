<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/lavalamp.css" />
<script src="js/lavalamp.js"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
h3 {
	padding: 15px;
	margin: 10px;
}

.chart {
	background-color: transparent;
}
</style>





<h3>Select Menu</h3>

<nav style="width: 500">
	<div class="container-fluid">
		<ul class="nav nav-pills nav-stacked">
			<li class=" btn-success  "><a href="/main" style="color: white;">Pupu</a></li>
			<li class="dropdown"><a class="dropdown-toggle" href="#">Home</a>

			</li>
			<li><a href="#">Popular</a></li>
			<li><a href="/user/top3">Recommend</a></li>
			<li><a href="#">Map</a></li>
			<li><a id="chart">Chart</a></li>
		</ul>
	</div>
</nav>

<!-- 80% size Modal -->
<div class="modal fade" id="mychartmodal" tabindex="-1" role="dialog"
	aria-labelledby="my80sizeModalLabel">
	<div class="" role="document">
		<div class="">
			<div class="" id="myModalLabel">
				<div class="chart" id="piechart_3d"
					style="width: 900; height: 500px;"></div>
			</div>

		</div>
	</div>
</div>


<nav style="width: 500">
	<div class="container-fluid">
		<ul class="nav nav-pills nav-stacked">
			<li class=" btn-success  "><a href="/main" style="color: white;">Pupu</a></li>
			<li class="dropdown"><a class="dropdown-toggle" href="#">Home</a>

			</li>
			<li><a href="#">Popular</a></li>
			<li><a href="/user/top3">Recommend</a></li>
			<li><a href="#">Map</a></li>
			<li><a id="js1">Cate</a></li>

			<li><a href="/cate?catesel=test1" id="port2"
				style="display: none;">Cate1</a></li>
			<li><a href="/cate?catesel=test2" id="port3"
				style="display: none;">Cate2</a></li>
			<li><a href="/cate?catesel=test3" id="port4"
				style="display: none;">Cate3</a></li>
			<li><a href="/cate?catesel=test4" id="port5"
				style="display: none;">Cate4</a></li>
		</ul>
	</div>
</nav>
<script>
	$("#js1").click(function() {
		$("#port2").fadeToggle();
		$("#port3").fadeToggle();
		$("#port4").fadeToggle();
		$("#port5").fadeToggle();
	});
</script>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['test1',     ${t1}],
          ['test2',     ${t2}],
          ['test3',     ${t3}],
          ['test4',     ${t4}],
        ]);

        var options = {
          title: '카테고리',
          width : 700,
      	  height : 500,
      	 
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
<script>
$("#chart").mouseover(function() {
	$("#mychartmodal").modal();
})
</script>

