<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="icon" type="image/png" href="https://safevpn-app.duckdns.org/rocket.gif"/>

    <title>Safe VPN</title>

    <style>

        .center {

            display: block;

            margin-left: auto;

            margin-right: auto;

        }

        .btn {

            border-radius: 10px;

            margin-bottom: 10px;

            background-color:#3DC133;

            border: none;

            color: white;

            padding: 5px 5px;

            cursor: pointer;

            font-size: 20px;

        }

        /* Darker background on mouse-over */

        .btn:hover {

            background-color:#109c06;

        }

        #customers {

            margin-bottom: 1%;

            margin-top: 1%;

            font-family: Arial, Helvetica, sans-serif;

            border-collapse: collapse;

            width: 100%;

        }

        #customers td,

        #customers th {

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

            background-color: #3DC133;

            color: white;

        }

        #snackbar {

            visibility: hidden;

            min-width: 250px;

            margin-left: -125px;

            background-color: #333;

            color: #fff;

            text-align: center;

            border-radius: 2px;

            padding: 16px;

            position: fixed;

            z-index: 1;

            left: 50%;

            bottom: 30px;

            font-size: 17px;

        }

        #snackbar.show {

            visibility: visible;

            -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;

            animation: fadein 0.5s, fadeout 0.5s 2.5s;

        }

        @-webkit-keyframes fadein {

            from {

                bottom: 0;

                opacity: 0;

            }

            to {

                bottom: 30px;

                opacity: 1;

            }

        }

        @keyframes fadein {

            from {

                bottom: 0;

                opacity: 0;

            }

            to {

                bottom: 30px;

                opacity: 1;

            }

        }

        @-webkit-keyframes fadeout {

            from {

                bottom: 30px;

                opacity: 1;

            }

            to {

                bottom: 0;

                opacity: 0;

            }

        }

        @keyframes fadeout {

            from {

                bottom: 30px;

                opacity: 1;

            }

            to {

                bottom: 0;

                opacity: 0;

            }

        }

    </style>

</head>

<body>

    <div class="center">

        <img class="center" style="height: 130px;margin-top: 15%;"

            src="https://safevpn-app.duckdns.org/rocket.gif" />

        <table id="customers">

            <tr>

                <th>အမည်</th>

                <th>Safe VPN</th>

            </tr>

            <tr>

                <td>ဗားရှင်း</td>

                <td>1.0.3</td>

            </tr>

            <tr>

                <td>ဖိုင်ဆိုဒ်</td>

                <td id="file-size">9.40 MB</td>

            </tr>

            <tr>

                <td>အက်ပ်ဖန်တီးသူ</td>

                <td>Tint Aung Khaing</td>

            </tr>

        </table>

        <p style="text-align: center;color: red;"> </p>

        <button class="btn" style="width:100%" onclick="let_download('https://www.mediafire.com/file/njcnp0gmwml7u5b/Safe_VPN_V_1.0.3.apk/file');"> Download ရယူရန်</button>

        

        <script>

            function let_download(url) {

                window.open(url,"_blank");

            }

            function dl_drive(url) {

                url = get_drive_link(url);

                var anchor = document.createElement('a');

                anchor.setAttribute('href', url);

                anchor.setAttribute('download', document.title);

                anchor.style.display = 'none';

                document.body.appendChild(anchor);

                anchor.click();

                document.body.removeChild(anchor);

                showToast();

            }

            function showToast() {

                var x = document.getElementById("snackbar");

                x.className = "show";

                setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);

            }

            function get_drive_link(url){

                return "https://www.googleapis.com/drive/v3/files/"+get_drive_id(url)+"?alt=media&key=AIzaSyBFHimHWDyLOtcNJjA268KwRLhsBuckUxc";

            }

            function get_drive_id(url){

                return url.match(/[-\w]{25,}/);

            }

        </script>

    </div>

    <div id="snackbar">ရယူနေပါသည်။</div>

</body>

</html>
