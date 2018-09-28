# Teste de Performance com Jmeter(POC)
Modelagem dos Scripts de testes de performance para serem utilizados no VSTS atendendo a Alelo.

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
Prova de conceito(POC) envolvendo scripts de testes para análise da performance do site.

Ajustes de scripts, para prover os tipos de **testes de performance**. 
- Script Google : **vsts/Performance-google.jmx**
- Script Yahoo : **vsts/Performance-yahoo.jmx**

## Começando
Antes de ajustar os scripts de testes familiarize com o JMeter e utilize os scripts abaixo para testes na máquina local.
- Script Google : **local/Performance-prx-google.jmx**
- Script Yahoo : **local/Performance-prx-yahoo.jmx**

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

Para \'Number of agents\' escolha 1. 

Para \'Load duration\' escolha 10 minutes.

Para \'Load location\' escolha Brazil South \(Sao Paulo State).

## Contribuição
@msergio

## JMeter
- [Tutorial de plano de test do JMeter](http://jmeter.apache.org/usermanual/build-web-test-plan.html)

## Notas de versão
Versão inicial dos scripts 1.0.0