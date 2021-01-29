<script>
var data = null;

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("GET", "https://jsonplaceholder.typicode.com/users");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
</script>


<?php 
die;


        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Credentials: true");
        header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
        header("Access-Control-Allow-Headers: Content-Type,X-Auth-Token, Authorization,Origin");
        header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
        header("Cache-Control: post-check=0, pre-check=0", false);
        header("Pragma: no-cache");
        
        $ch = curl_init(); 

        curl_setopt($ch, CURLOPT_URL, "https://jsonplaceholder.typicode.com/users"); 
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

        $values = curl_exec($ch); 
        $values = json_decode($values); 
		
        $data=array();
		print_r($values);
        die;		
        foreach ($values as $value) {

                $d = new DateTime($value->updated_date);
                $dates = $d->format('M d, Y');
                
                $data[] = [
                                       
                        'nav_id' => $value->nav_id,
                        'fund_id' => $value->fund_id,
                        'fund_name' => $value->fund_name,
                        'nav_price' => $value->nav_price,
                        'offer_price' => $value->offer_price,
                        'redemption_price' => $value->redemption_price,
                        'market_closing' => $value->market_closing,       
                        'updated_date' => $dates
                ];
        }
        echo json_encode($data);
        curl_close($ch);      

?>