<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Warning Recipients</title>
</head>

<body>
<jsp:include page="Index.jsp"></jsp:include>
    <div class="title">Warning message Indication Persons</div>
        <table class="list" id = "customers">
            <tr class="header">
                <th class="name-column">Name</th>
                <th class="email-column">Email ID</th>
                <th class="phonr-column">Phone Number</th>
            </tr>
        </table>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script>
        $(document).ready( function () {
            getCurrentInvetory();
        });

        function getCurrentInvetory(){
            var spreadsheetID = "1rJC3lkM6p_e_kyQ8EM9n9-pXDMeJNgwt6PtiHIwhuLg";
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
                            $(document.createElement('td')).text(this.gsx$name.$t).addClass('sheet-name')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$email.$t).addClass('sheet-email')
                        );
                        inventoryItem.append(
                            $(document.createElement('td')).text(this.gsx$phonenumber.$t).addClass('sheet-number')
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
