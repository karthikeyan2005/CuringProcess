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
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
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
</body>
</html>
