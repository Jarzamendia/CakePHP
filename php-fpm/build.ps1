Write-Host "Iniciando build do PHP FPM..."

$proxy = ""

if($proxy -eq ""){
    docker build -t cake-php-fpm .
}

else {
    docker build --build-arg http_proxy=$proxy `
                 --build-arg https_proxy=$proxy `
                 -t cake-php-fpm .
}