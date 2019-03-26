
@REM Limpa os proxys
git config --local --unset http.proxy
git config --local --unset https.proxy

@REM Ajusta os proxys
git config --local https.proxy https://dominio.site.info:8080
git config --local http.proxy http://dominio.site.info:8080
