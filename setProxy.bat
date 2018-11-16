
@REM Limpa os proxys
git config --local --unset http.proxy
git config --local --unset https.proxy

@REM Ajusta os proxys
git config --local https.proxy https://proxylatam.indra.es:8080
git config --local http.proxy http://proxylatam.indra.es:8080
