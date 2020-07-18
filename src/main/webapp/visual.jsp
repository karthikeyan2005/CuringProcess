<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Curing Temperature Monitoring
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link href="../assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>
<style>
#currentTime {
  font-size: 30px;
	color: black;
	display:inline-block;
	text-align: right;
}
</style>
<script>
window.onload = function() {
	  clock();  
	    function clock() {
	    var now = new Date();
	    var TwentyFourHour = now.getHours();
	    var hour = now.getHours();
	    var min = now.getMinutes();
	    var sec = now.getSeconds();
	    var mid = 'pm';
	    if (min < 10) {
	      min = "0" + min;
	    }
	    if (hour > 12) {
	      hour = hour - 12;
	    }    
	    if(hour==0){ 
	      hour=12;
	    }
	    if(TwentyFourHour < 12) {
	       mid = 'am';
	    }     
	  document.getElementById('currentTime').innerHTML =     hour+':'+min+':'+sec +' '+mid ;
	    setTimeout(clock, 1000);
	    }
	}
</script>
<body>
<jsp:include page="Index.jsp"></jsp:include>
    <div class="gfg"> Visualization</div>
  <div class="wrapper ">
      <div class="content">
        <div class="container-fluid">
        <div class="row">
          
            <div class="col-md-4">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">today</i>
                  </div>
                  <p class="card-category">Today Date</p>
                  <h3 class="card-title"><script> document.write(new Date().toLocaleDateString()); </script></h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">today</i>
                    Date
                </div>
              </div>
            </div>
            </div>
            <div class="col-md-4">
              <div class="card card-stats">
                <div class="card-header card-header-success card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">access_time</i>
                  </div>
                  <p class="card-category">Current Time</p>
                  <h3 class="card-title"><span id="currentTime"></span></h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i>Indian Standard Time(IST)
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card card-stats">
                <div class="card-header card-header-danger card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">N</i>
                  </div>
                  <p class="card-category">No of Bonders</p>
                  <h3 class="card-title">2</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">N</i>Bonder Count
                  </div>
                </div>
              </div>
            </div>
</div>
        <div class = bondername >Bonder 1</div>

                  <div class="row">
          
            <div class="col-lg-12 col-md-12">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">B</i>
                  </div>
                  <p class="card-category">Recent Operation</p>
                  <h3 class="card-title"><span id="bod"></h3>
                  <h3 class="card-title"><span id="bot"></span></h3>
                  <h3 class="card-title"><span id="bott"></span></h3>
                </div>
                <div><iframe width="304" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vS9SqAr20chfazSfCq7AmzQSJHWJjNXge7mvzmPGhXAJ7ekP-IlcSY7sNEO5eCdeI-70ei_7kkw0l6V/pubchart?oid=130060844&amp;format=interactive"></iframe>
                <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vS9SqAr20chfazSfCq7AmzQSJHWJjNXge7mvzmPGhXAJ7ekP-IlcSY7sNEO5eCdeI-70ei_7kkw0l6V/pubchart?oid=608448858&amp;format=interactive"></iframe></div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">B</i>
                    Bonder 1
                </div>
              </div>
            </div>
            </div>
            
</div>
<hr>
        <div class = bondername >Bonder 2</div>
                            <div class="row">
          
            <div class="col-lg-12 col-md-12">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">B</i>
                  </div>
                  <p class="card-category">Recent Operation</p>
                  <h3 class="card-title"><span id="btd"></h3>
                  <h3 class="card-title"><span id="btt"></span></h3>
                  <h3 class="card-title"><span id="bttt"></span></h3>
                </div>
                <div><iframe width="304" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTgLL8SDDpP-tDOfbwSoiAwbyeJ_ATtwbHu-nsF-HYk9WQuagJ8gXssHVnEhuR68UJEdLZbqoue5sWa/pubchart?oid=72458206&amp;format=interactive"></iframe>
                <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTgLL8SDDpP-tDOfbwSoiAwbyeJ_ATtwbHu-nsF-HYk9WQuagJ8gXssHVnEhuR68UJEdLZbqoue5sWa/pubchart?oid=2069255349&amp;format=interactive"></iframe></div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">B</i>
                    Bonder 1
                </div>
              </div>
            </div>
            </div>
            
</div>
</div>
<hr>
</div>
</div>
</div>
   <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script>
    
        $(document).ready( function () {
            getCurrentInvetory();
        });

        function getCurrentInvetory(){
            var spreadsheetID = "1QOpaCfroYyGULc_4AX_kdUvMfFio8XtzWCNywMX-1s0";
            var url = "https://spreadsheets.google.com/feeds/list/" + spreadsheetID + "/od6/public/values?alt=json";
            console.log(url);
            $.getJSON(url, function(data) {
                var entry = data.feed.entry;
                var length = entry.length;
                $(".inventory-item").remove();

                $(entry).each(function(index, element){

                    if (index === 0) {
                        $('#bod').text(this.gsx$date.$t);
                        $('#bot').text(this.gsx$time.$t);
                        $('#bott').text(this.gsx$temperature.$t);                       
                    }else{
                    	$('#btd').text(this.gsx$date.$t);
                        $('#btt').text(this.gsx$time.$t);
                        $('#bttt').text(this.gsx$temperature.$t);

                    }
                });
            });
            setTimeout(getCurrentInvetory, 1000);
        } 
 
        </script>

</body>

</html>