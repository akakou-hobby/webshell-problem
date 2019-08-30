<?php
    header("Access-Control-Allow-Origin: *");
?>

<h1>Image Sharing Service</h1>

<h2>Donate</h2>

<br>
Name：<input type='text' id='name' name="name"/>
<br>
Card Number：<input type='text' id='card_number' name="card_number"/>
<br>
Security Code：<input type='text' id='security_code' name="security_code"/>
<br>
Amount：<input type='text' id='amount' name='amount'>
<br>
<button onclick='submit()'>Donate</button>

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<script>
function submit() {
    var name = document.getElementById('name').value
    var card_number = document.getElementById('card_number').value
    var security_code = document.getElementById('security_code').value
    var amount = document.getElementById('amount').value

    payload = '?name=' + name 
        + '&card_number=' + card_number
        + '&security_code=' + security_code
        + '&amount=' + amount

    headers = {
        'Content-Type': 'application/json;charset=UTF-8',
        'Access-Control-Allow-Origin': '*',
    }

    axios.get('http://localhost:8000' + payload, { }, headers)
        .then(function (response) {
            alert(response.data)
        })
        .catch(function (error) {
            alert(error)
        })
}

</script>

