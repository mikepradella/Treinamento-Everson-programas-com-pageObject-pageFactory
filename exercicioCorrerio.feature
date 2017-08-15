#language: pt
#uft-8
Funcionalidade: Busca de endere�os 
		Eu como cliente dos correios	
		Quero pesquisar endere�o  e cep cadastrados nos correios
		e devera se todos endere�os cadastrados no sistema dos correios
			
	Contexto: Dado que esteja no site do correios
			  E entro na tela de busca de cep/correio
		  

	Cenario: Buscar por endere�o	
		 Quando preencho o campo de endere�o "avenida yara"
		 E seleciono Cep "todos"
		 Entao devera ser apresentado os "DADOS ENCONTRADOS COM SUCESSO"

	Cenario:Busca por Cep e endere�o
		Quando preencho o campo de <cep/endere�o>
				|cep/endere�o|
				|06028100	|
				|avenida yara|

		E seleciono  <opcao>
				|opcao|
				|todos|
				|localidade/logradouro|
				
		Entao devera ser apresentado "DADOS ENCONTRADOS COM SUCESSO"
	
	# Cenario: Buscar por endere�o /localidade e logradouro
	# 	 Quando preencho o campo de endere�o "tambore"
	# 	 E seleciono "localidade/logradouro"
	# 	 Entao devera ser apresentado "DADOS ENCONTRADOS COM SUCESSO"
	
	Cenario: Busca com endere�o vazio
		 Quando nao preencho o campo de endere�o/Cep
		 E seleciono "localidade/logradouro"
		 Entao devera ser apresentado "Informe o Endere�o !"

	Cenario: Busca com endere�o ou Cep
		 Quando nao preencho o campo de endere�o/Cep
		 E seleciono "Unidade operacional"
		 Entao devera ser apresentado "DADOS NAO ENCONTRADOS"




#language:pt
#UFT-8

Feature: Pre�o e Prazo			
		Eu como cliente do correios
		Quero buscar pre�os e prazos 
		De modo que posso C�lculo de pre�os e prazos de entrega
		
		Parametros necessarios para busca:
			.Calculador de pre�os e prazos	
			.Destina��o	
			.Servi�o
			
		filtros para tipos de servi�os:
		
		.carta registrada
		.carta simples
		.sedex
		.sedex 10 etc
		
	

		Background:	Logar na pagina de pre�os e prazos	
				  Given que esteja ja tela dos correios
				  When clicar no botao "Pre�os e Prazos"
				  Then devo visualizar a tela "Pre�os e Prazos"			
				

		Scenario: Calcular envio de cartao registrada
				  When preencho data da postagem
				  And destina��o
				  And cep de destino 
				  And tipo do servi�o
				  And clicar em enviar da tela pre�os e prazos	
				  Then devera ser validado ulr da pagina http://www2.correios.com.br/sistemas/precosPrazos/prazos.cfm			
					
		Scenario: Calcular envio de  aerograma
				  When preencho data da postagem
				  And destina��o
				  And cep de destino 
				  And tipo do servi�o aerograma
				  And clicar em enviar da tela pre�os e prazos	
				  Then devera ser validado mensagem "Resultado do C�lculo"
		
		 Scenario: Calcular envio de sedex 10
				  When preencho data da postagem
				  And destina��o
				  And cep de destino 
				  And tipo do servi�o como sedex
				  And selecionar envelope
			      And selecionar objeto "Embalagem dos correios"
				  And selecionar peso estimado 1
				  And selecionar Envelope bolha grande 		
				  And clicar em enviar da tela pre�os e prazos	
				  Then devera ser validado mensagem "Prazo de entrega"
		
		 Scenario: Calcular envio de cartao via internet
				  When preencho data da postagem
				  And destina��o
				  And cep de destino 
				  And tipo do servi�o via internet
				  And clicar em enviar da tela pre�os e prazos	
				  Then devera ser validado mensagem "Carta Via Internet"
				  
				  
		 Scenario: Calcular envio de e-sedex
				  When preencho data da postagem
				  And destina��o
				  And cep de destino 
				  And tipo do servi�o e-sedex
				  And selecionar opcao "comparar "Comparar com todos os servi�os de encomendas dispon�veis"
				  And clicar em enviar da tela pre�os e prazos					  
				  Then devera ser validado mensagem "Servi�o indispon�vel para o trecho informado."