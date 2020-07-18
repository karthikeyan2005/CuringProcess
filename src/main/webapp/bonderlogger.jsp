<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bonder Logger</title>
</head>

<body>
<jsp:include page="Index.jsp"></jsp:include>
    <div class="title">Bonder Details</div>
        <table class="list" id = "customers">
            <tr class="header">
                <th class="bondername-column">Bonder Name</th>
                <th class="id-column">Bonder Id</th>
                <th class="cap-column">Bonder Capacity</th>
                <th class="temp-column">Maximum Temperature</th>
                <th class="pre-column">Maximum Pressure</th>
                <th class="idate-column">Install Date</th>
                <th class="date-column">Recent Operated Date</th>
                <th class="time-column">Recent Operated Time</th>
                <th class="temperature-column">Recent Operated Temperature</th>
            </tr>
        </table>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script>
        $(document).ready( function () {
            getCurrentInvetory();
        });

        function getCurrentInvetory(){
            var spreadsheetID = "1oLoLf3acH51wJc4fzhQCgZowTuxrHeVQ7NxL4jt5aZM";
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
                            $(document.createElement('td')).text(this.gsx$bondername.$t).addClass('sheet-bondername')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$bonderid.$t).addClass('sheet-bonderid')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$bondercapacity.$t).addClass('sheet-capacity')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$maxtemperature.$t).addClass('sheet-mtemp')
                        );
                        inventoryItem.append(
                             $(document.createElement('td')).text(this.gsx$maxpressure.$t).addClass('sheet-mpre')
                        );
                        inventoryItem.append(
                             $(document.createElement('td')).text(this.gsx$installdate.$t).addClass('sheet-idate')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$recentoperationdate.$t).addClass('sheet-date')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$recentoperationtime.$t).addClass('sheet-time')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$recentoperationtemperature.$t).addClass('sheet-warningtemperature')
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
