# Teste de Performance com Jmeter(PoC)

Scripts de testes de performance para serem utilizados no VSTS atendendo a Alelo.
Neste momento estão sendo usados URLs não proprietárias da ALELO, no seu lugar usaremos URLS do Google, YaHOO e Azure, para darmos legalidade dos testes.

## Atenção

Os testes inicias serão realizados scripts para o Yahoo, Google e Azure, numa fase posterior serão realizados com scripts específicos da Alelo.

### Conceitos de testes de performance

Num **Teste de Performance** podemos avaliar a capacidade de:

- Carga
  Teste realizado para verificar se um sistema suporta uma determinada carga desejada.
  - Volume de tráfego para um determinado sistema.
    Geralmente medida em transações, requisições ou usuários.
    - Transação

      Operação completa no sistema. Exemplo: buscar um produto.
    - Requisição

      Requisição http realizada.
- Estresse
  
  Teste feito para determinar a capacidade máxima do sistema.

- Estabilidade

  Teste realizado para verificar se o sistema degrada o desempenho com o tempo.

## Introdução

Prova de conceito(PoC) envolvendo scripts de testes para análise da performance do site.

Ajustes de scripts, para prover os tipos de **Testes de performance, assertação**.

- Script Google: **vsts/Performance-google.jmx - vsts/Assertion-google.jmx**
- Script Yahoo: **vsts/Performance-yahoo.jmx - vsts/Assertion-yahoo.jmx**
- Script Azure: **vsts/Performance-azure-api-rest.jmx**

## Começando a realização dos testes

Antes de ajustar os scripts de testes familiarize com o JMeter e utilize os scripts abaixo para testes na máquina local.

### Plano de teste de Performance

- Script Google :
  - **local/Performance-prx-google.jmx**
    - [X] Testes de requisições
    - [X] Teste de asserções

- Script Yahoo :
  - **local/Performance-prx-yahoo.jmx**
    - [X] Testes de requisições
    - [X] Teste de asserções

- Script Azure:
  - **local/Performance-prx-azure-api-rest.jmx**
    - [X] Testes de requisições
    - [X] Teste de asserções
    - [X] Teste de API rest

- Script Local API:
  - **Performance-localhost-api-rest.jmx**
    - [X] Testes de requisições
    - [X] Teste de asserções
    - [X] Teste de API rest

Configure o Grupo de Usuários para:

Número de usuários virtuais(threads): 30

> Número de usuários

Tempo de inicialização: 120

> Tempo de colocar todos as threads em funcionamento.

> Cada thread iniciará 4s (120/30) após início da thread anterior.

Contador de iteração: 10

> Definir o número de vezes para executar o teste.

## Teste do script

No VSTS:

Ir para o Test Plans > Load Test > New > Apache JMeter Test, na página que aparece no item \'Test script\' escolha um dos scripts:

- Performance-google.jmx
- Assertion-google.jmx
- Performance-yahoo.jmx
- Assertion-yahoo.jmx
- Performance-azure-api-rest.jmx

> Para \'Number of agents\' escolha 1.

> Para \'Load duration\' escolha 10 minutes.

> Para \'Load location\' escolha Brazil South (Sao Paulo State).

## Colaboradores

@msergio

## JMeter

- [Tutorial de plano de test do JMeter](http://jmeter.apache.org/usermanual/build-web-test-plan.html)

## Notas de versão

Versão inicial dos scripts 1.0.0

- Testes com requisições google e yahoo.
- Testes de asserções google e yahoo.
