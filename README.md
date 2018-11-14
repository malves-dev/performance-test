# Teste de Performance com Jmeter(POC)
Scripts de testes de performance para serem utilizados no VSTS atendendo a Alelo.
Neste momento estão sendo usados URLs não proprietárias da ALELO, no seu lugar usaremos URLS do Google e YaHOO, para darmos legalidade dos testes:

## Introdução
Prova de conceito(POC) envolvendo scripts de testes para análise da performance do site.

Ajustes de scripts, para prover os tipos de **testes de performance e assertivo**. 
- Scripts Google : **vsts/Performance-google.jmx**, **vsts/Assert-google.jmx**
- Scripts Yahoo : **vsts/Performance-yahoo.jmx**, **vsts/Assert-yahoo.jmx**

## Começando
Antes de ajustar os scripts de testes familiarize com o JMeter e utilize os scripts abaixo para testes na máquina local.
- Scripts Google : **local/Performance-prx-google.jmx**, **vsts/Assert-prx-google.jmx**
- Scripts Yahoo : **local/Performance-prx-yahoo.jmx**, **vsts/Assert-prx-yahoo.jmx**

Configure o Grupo de Usuários para:

Número de usuários virtuais(threads): 30

> Número de usuários

Tempo de inicialização: 120 

> Tempo de colocar todos as threads em funcionamento.

> Cada thread iniciará 4s \(120/30) após início da thread anterior.

Contador de iteração: 10

> Definir o número de vezes para executar o teste.

## Teste do script
No VSTS:

Ir para o Menu Test > Load Test > New > Apache JMeter Test, na página que aparece no item \'Test script\' escolha um dos scripts:
- Performance-google.jmx
- Performance-yahoo.jmx
- Assert-google.jmx
- Assert-yahoo.jmx

Para \'Number of agents\' escolha 1. 

Para \'Load duration\' escolha 10 minutes.

Para \'Load location\' escolha Brazil South \(Sao Paulo State).

## Contribuição
@msergio

## JMeter
- [Tutorial de plano de test do JMeter](http://jmeter.apache.org/usermanual/build-web-test-plan.html)

## Notas de versão
Versão inicial dos scripts 1.0.0