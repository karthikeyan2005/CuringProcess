<html>
  <head>
    <style type="text/css">
        .title{
            text-align: center;
            margin: 2rem;
            font-size: 2rem;
        }
        .list{
            margin: auto;
        }
        #customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
    </style>
     <title>Sheets Blog</title>
</head>
<body>
    <div class="title">Monitoring Temperature</div>
        <table class="list" id = "customers">
            <tr class="header">
                <th class="bonder-column">Bonder</th>
                <th class="date-column">Date</th>
                <th class="time-column">Time</th>
                <th class="temp-column"> Temperature</th>
            </tr>
        </table>

     <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    
   <script>
         
        $(document).ready( function () {
            getCurrentInvetory();
        });
        var chart = new google.visualization.Gauge(document.getElementById('chart_div'));

        chart.draw(data, options);

        function getCurrentInvetory(){
            var spreadsheetID = "1QOpaCfroYyGULc_4AX_kdUvMfFio8XtzWCNywMX-1s0";
            var url = "https://spreadsheets.google.com/feeds/list/" + spreadsheetID + "/od6/public/values?alt=json";
            console.log(url);
            $.getJSON(url, function(data) {
                var entry = data.feed.entry;
                var length = entry.length;
                $(".inventory-item").remove();

                $(entry).each(function(index, element){

                    if (index === (length)) {
                        $('#total').text(this.gsx$value.$t);
                    }else{
                        var inventoryItem = $('<tr class="inventory-item">').appendTo('.list');
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$bonder.$t).addClass('sheet-bonder')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$date.$t).addClass('sheet-date')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$time.$t).addClass('sheet-time')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$temperature.$t).addClass('sheet-temperature')
                            
                        );
                    }
                });
            });
            setTimeout(getCurrentInvetory, 1000);
        } 
   
   
    </script>
 
    <div id="chart_div" style="width: 400px; height: 120px;"></div>
  </body>
</html>