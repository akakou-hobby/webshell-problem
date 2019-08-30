while :
do
    curl http://web \
        -H 'Connection: keep-alive' \
        -H 'Cache-Control: max-age=0' \
        -H 'Upgrade-Insecure-Requests: 1' \
        -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36' \
        -H 'Sec-Fetch-Mode: navigate' \
        -H 'Sec-Fetch-User: ?1' \
        -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
        -H 'Sec-Fetch-Site: none' \
        -H 'Accept-Encoding: gzip, deflate, br' \
        -H 'Accept-Language: ja,en-US;q=0.9,en;q=0.8' 
    sleep 10

    curl -X POST http://web/upload.php -F "file=@/root/image.png" \
        -H 'Connection: keep-alive' \
        -H 'Cache-Control: max-age=0' \
        -H 'Upgrade-Insecure-Requests: 1' \
        -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36' \
        -H 'Sec-Fetch-Mode: navigate' \
        -H 'Sec-Fetch-User: ?1' \
        -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
        -H 'Sec-Fetch-Site: none' \
        -H 'Accept-Encoding: gzip, deflate, br' \
        -H 'Accept-Language: ja,en-US;q=0.9,en;q=0.8' 
    
    curl http://web \
        -H 'Connection: keep-alive' \
        -H 'Cache-Control: max-age=0' \
        -H 'Upgrade-Insecure-Requests: 1' \
        -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36' \
        -H 'Sec-Fetch-Mode: navigate' \
        -H 'Sec-Fetch-User: ?1' \
        -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
        -H 'Sec-Fetch-Site: none' \
        -H 'Accept-Encoding: gzip, deflate, br' \
        -H 'Accept-Language: ja,en-US;q=0.9,en;q=0.8' 
    sleep 6
done
