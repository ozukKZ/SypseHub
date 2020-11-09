<?php
/*
 skidded whitelist from v3rm
 and also sypse hub logs your ip and hwid 
*/
$webhookurl = "https://discord.com/api/webhooks/771432627281330226/nXr0cmb0_81DEnUKGNmvHyjL72vwQG8wGq39HnbczaIav56nS-rdReDOuv5zqjDRLxCL";
$hwidTypes = array("Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint");

$database = array(
    "key_ITSYOURBOYSYPSEHERETORAPEYOURASS",
    "key_HhPB9eEAzF70Bi7uet6FCoduC3nTyndpx7sGho3FqBCjVR77cNMiIsms0Ixn6CXk",
    "key_NEnlCtg3hiDPksu6zcklNMKtnml8nbFar4OA8I6PLaZAlz4aK9nNW1CaVoSYfJ23",
    "key_qPefcts8doXHrxI7QexoSRoKKnUpYGkczdYajbzn55In32Kbew2vBeWRu7lhS2bS",
    "key_Pkk8tN05a7HppHcwQ7HBUhSWJFAav4YYHb3GdTtfNaWEoSgjAKf3JeBwRHt4kp01",
    "key_5gvx6TVP37i8VDZCStkJUp4sbhEhGOChYnYEDIyVn9vETqXzcI4Dq31cukyYZPr8",
    "key_hS07NxS0PQXMnnD64Whd0soc8nktBLlukR8BRf7fKeDdKnVabkZKDvty8ptgq8cz",
    "key_gwBe6V1snWclU2phIAzhF5dG6b1ZClrj0vuTGbmqMTlTYHJwNIpJlfo2LzbKiVvD",
    "key_nJolke6ZUeM2b8Ij1PuhRqm6HoUpNFM7nKHddI9NdJ3lQzUncOiEfGw2hHNitUDM",
    "key_EmIrIdFJzSolyY65YShMnc7yB6fZzsZ4w8ALyoJHavvUjfmuuryjXtDiE90CWCr7",
    "key_FHMYknVZ9TorgzYMRZkYfOdgFpHPlKxGm04aV4k1ukRmpgBEXLAPFl07NCnnnTAB",
    "key_EDggOKep5bbzdyP7hdUJOfjb793XJQL0uKim5IpC6cLBWYKLyYxqGUVOF9BLt9W1",
    "key_VeHDnVyiDNSLsC88tVYjVW6CyDYqtDnds4vWsxQ0DheJ8Z1GSKtf6A5frRtMx1Rp",
    "key_bmQ4y1cr3xebsoDnBcTmWNI79nD6iWm4wz6KivXO1gzM6WTYDVoikI2pakzGqog8",
    "key_cqvfcLGoW8CSCwmP8eG4b4ZK28qAFEHNiosUDq534k2ipAK818HIq7fqoxO7ploF",
    "key_RfHACwbmTvwBmWbQ0ABGBYMwwrBVVcWVJT52YmSlqPVxLZSOFdY840CerTUztlNI",
    "key_26dJOt95AxnxbA0RQPTwaZPMnMZpWCFwDYIsk63zHiHXcAqybmo4zst7bh7dHtAK",
    "key_67SCbEdGYcfznZ8vg7LLud54n979ZBaYb9awFdiFjsQkQMmRm4vb9zYL1FAp4VbN",
    "key_pRHU0sQ6BKh6m79jusaJIndABgW9qO9rB01mpFHHbHGtnsCYBc5NQmAaTiqypJpz",
    "key_NjLqwCV4laq6qAD1bUwk3do1Q4WzqKILDbvPuy1l9mplAC4Pt6utCC5QK7gYcLSA",
    "key_0PJ4W4kkfcaNL7PKCUsSs4T1LGcLVFE4YYydplPa5iwAVXUFeH99uynMAYuUaHtK",
    "key_7nKsImmy5UcJjygfzzLrODSUeyYe1mmmsrgOvF0TppeK1rdRjLuksgj9hG8FzVz4",
    "key_URgHg3QZ755z2jBHeSPqJ3HvMGEw4DNB9bDp9R0cHk3eBkVYxSeSwSmUCM7fhsDp",
    "key_xe5Tc4R6tZi0Ujhj5bXDSPy7luMi3m8rLk7CTPCsyEXcqpMLsiTPi982fDw4OakF",
    "key_TNe9dsDA4z6PePpzPs97a4Ajozz5AqHBYjE3kOgbBKgkQSIXJnnmkc6IzJ2xr71a",
    "key_HFuNcnw0ItO0tvsiD1Hu7TFNCeUPmHQVoYe7BGiqfsgOB43GZaZ7rnHvYfw5rcRs",
	"key_oOJwSm2jzUoj7zZc2rQKjiKg8K90LH0ZTafqQn02dV2kbV0fBnGJ2EcsF1tL3NQG",
);


$timestamp = date("c", strtotime("now"));

$ip = isset($_SERVER['REMOTE_ADDR']) ? $_SERVER['REMOTE_ADDR'] : 'not found ip';
$iklolimnoob = isset(getallheaders()["Syn-Fingerprint"]) ?getallheaders()["Syn-Fingerprint"] : 'couldnt get hwid (maybe snitch)'; //hwid
$kecccy = isset($_GET["key"]) ? $_GET["key"] : 'not found key';

$json_data = json_encode([
    "username" => "Sypse Hub Logger",
    "tts" => false,
    "embeds" => [
        [
            "description" => "Another user has used sypse hub :",
            "timestamp" => $timestamp,
            "color" => hexdec( "3366ff" ),
            "footer" => [
                "text" => "Sypse Hub"
            ],
            "author" => [
                "name" => "Sypse Hub"
            ],
            "fields" => [
                [
                    "name" => "key",
                    "value" => "key used : ". $kecccy,
                    "inline" => false
                ],
                [
                    "name" => "IP",
                    "value" => "IP Address : ". $ip,
                    "inline" => false
                ],
                [
                    "name" => "hwid",
                    "value" => "synapse hwid : ". $iklolimnoob,
                    "inline" => false
                ],
                [
                    "name" => "hwid checksum (ignore if hwid not found)",
                    "value" => "hwid checksum : ". crc32($iklolimnoob),
                    "inline" => false
                ],
            ]
        ]
    ]

], JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE );

$ch = curl_init( $webhookurl );
curl_setopt( $ch, CURLOPT_HTTPHEADER, array('Content-type: application/json'));
curl_setopt( $ch, CURLOPT_POST, 1);
curl_setopt( $ch, CURLOPT_POSTFIELDS, $json_data);
curl_setopt( $ch, CURLOPT_FOLLOWLOCATION, 1);
curl_setopt( $ch, CURLOPT_HEADER, 0);
curl_setopt( $ch, CURLOPT_RETURNTRANSFER, 1);

if (isset($_GET["key"])) {
		


	$response = curl_exec( $ch );
	// If you need to debug, or find out why you can't send message uncomment line below, and execute script.
	// echo $response;
	curl_close( $ch );
	$didUserPass = FALSE;
	$errorMsg = "fuck you";
	$key = $_GET["key"];

	foreach($database as $_ => $stored_key) {
		$key_matches = ($stored_key == $key);
		if ($key_matches) {
			$didUserPass = TRUE;
			echo(hash("sha256", $stored_key));
		};
	}

	if (!$didUserPass) {
		echo($errorMsg);
	};
} else {
	die("err401");
}

?>
