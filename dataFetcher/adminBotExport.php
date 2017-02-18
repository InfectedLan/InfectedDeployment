<?php
echo "%%% ADMIN BOT DATA EXPORTER %%%\n";

//Config
$db_username = "user";
$db_password = "pass";
$db_database = "db";
$db_host = "localhost";

$api_url = "https://crew.infected.no/api";
$api_key = "";
$compo_id = 9;

mysql_connect($db_host, $db_username, $db_password) or die("Failed to connect to db");
mysql_select_db($db_database) or die("Failed to select db");

mysql_set_charset("utf8") or die("Failed to set charset");


// Load shit
echo "Sql connected. Reading data\n";

$server_result = mysql_query('SELECT * FROM `servers`;');

echo mysql_error();
$servers = [];

while($row = mysql_fetch_array($server_result)) {
    print_r($row);
    $servers[] = $row;
}

echo "Read " . count($servers) . " servers.\n";

$match_result = mysql_query('SELECT * FROM `matchs` WHERE `status` != 0;');

$matches = [];

while($row = mysql_fetch_array($match_result)) {
    print_r($row);
    $matches[] = $row;
}

echo "Read " . count($matches) . " matches.\n";

//Functions
function getServer($id) {
    //echo "Getting server for id " . $id;
    global $servers;
    foreach($servers as $server) {
        //echo "Checking " . $id . " for ";
        //print_r($server);
        if($server["id"]==$id) {
            return $server;
        }
    }
}

function getRelevantMatches() {
    global $matches;
    return $matches;
}
//Generate json
$jsonObj = [];

$relevantMatches = getRelevantMatches();

echo "Got " . count($relevantMatches) . " relevant matches.\n";

foreach($relevantMatches as $match) {
    $jsonPushable = [];
    //Add properties
    $jsonPushable["toornamentId"] = explode(".", $match["identifier_id"])[1];
    $jsonServer = getServer($match["server_id"]);
    $jsonPushable["ip"] = $jsonServer["ip"];
    $jsonPushable["password"] = $match["config_password"];
    $jsonPushable["participants"] = [$match["team_a_name"], $match["team_b_name"]];

    $jsonObj[] = $jsonPushable;
}

echo "Finished generating data. JSON: <br /><br />\n\n";
echo json_encode($jsonObj, JSON_PRETTY_PRINT) . "\n";
//echo "Packed data: " . json_encode($jsonObj) . "\n";

echo "Uploading to " . $api_url . "\n";

$curlSess = curl_init();

curl_setopt($curlSess, CURLOPT_URL, $api_url . "/json/compo/importMatches.php?id=" . $compo_id . "&api_k\
ey=" . $api_key);
curl_setopt($curlSess, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curlSess, CURLOPT_POSTFIELDS, json_encode($jsonObj));

$result = curl_exec($curlSess);
$headers = curl_getinfo($curlSess);
curl_close($curlSess);
echo "Got server response: " . $result . "\n";
if($headers["http_code"]==200) {
    echo "Transfer success!\n";
} else {
    echo "CRITICAL: An internal error ocurred\n";
    echo "Headers: ";
    print_r($headers);
    echo "\n";
}
?>


