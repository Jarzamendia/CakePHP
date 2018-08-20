Write-Host "Iniciando build do COMPOSER..."

$proxy = "http://proxy.sgi.ms.gov.br:8081"

if($proxy -eq ""){
    docker build -t php-fpm-app .;
}

else {
    docker build --build-arg http_proxy=$proxy `
                 --build-arg https_proxy=$proxy `
                 -t composer .
}