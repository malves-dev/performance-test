# Introdução
Scripts de testes de performance, construidos com o JMeter. 
- Script Google : Performance-google.jmx
- Script Yahoo : Performance-yahoo.jmx

# Começando
Antes de efetuar os testes familiarize com o JMeter e configure o Grupo de Usuários para:

Número de usuários virtuais(threads): 30

> Número de usuários

Tempo de inicialização: 120 

> Tempo de colocar todos as threads em funcionamento.

> Cada thread iniciará 4s \(120/30) após início da thread anterior.

Contador de iteração: 10

> Definir o número de vezes para executar o teste.

- Script Yahoo : Performance-yahoo.jmx

Número de usuários virtuais(threads): 30

Tempo de inicialização: 120 

Contador de iteração: 10





# Teste do script
No VSTS:

Ir para o Menu Test > Load Test > New > Apache JMeter Test, na página que aparece no item \'Test script\' escolha o script:
- Performance-google.jmx
ou
- Performance-yahoo.jmx

Para \'Number of agents\' escolha 1. 

Para \'Load duration\' escolha 10 minutes.

Para \'Load location\' escola Brazil South \(Sao Paulo State).


# Contribuição
@msergio

# JMeter
- [Tutorial de plano de test do JMeter](http://jmeter.apache.org/usermanual/build-web-test-plan.html)