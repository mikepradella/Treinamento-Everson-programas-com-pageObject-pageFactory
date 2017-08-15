#language: pt
#uft-8
Funcionalidade: Busca de endereços 
		Eu como cliente dos correios	
		Quero pesquisar endereço  e cep cadastrados nos correios
		e devera se todos endereços cadastrados no sistema dos correios
			
	Contexto: Dado que esteja no site do correios
			  E entro na tela de busca de cep/correio
		  

	Cenario: Buscar por endereço	
		 Quando preencho o campo de endereço "avenida yara"
		 E seleciono Cep "todos"
		 Entao devera ser apresentado os "DADOS ENCONTRADOS COM SUCESSO"

	Cenario:Busca por Cep e endereço
		Quando preencho o campo de <cep/endereço>
				|cep/endereço|
				|06028100	|
				|avenida yara|

		E seleciono  <opcao>
				|opcao|
				|todos|
				|localidade/logradouro|
				
		Entao devera ser apresentado "DADOS ENCONTRADOS COM SUCESSO"
	
	# Cenario: Buscar por endereço /localidade e logradouro
	# 	 Quando preencho o campo de endereço "tambore"
	# 	 E seleciono "localidade/logradouro"
	# 	 Entao devera ser apresentado "DADOS ENCONTRADOS COM SUCESSO"
	
	Cenario: Busca com endereço vazio
		 Quando nao preencho o campo de endereço/Cep
		 E seleciono "localidade/logradouro"
		 Entao devera ser apresentado "Informe o Endereço !"

	Cenario: Busca com endereço ou Cep
		 Quando nao preencho o campo de endereço/Cep
		 E seleciono "Unidade operacional"
		 Entao devera ser apresentado "DADOS NAO ENCONTRADOS"




#language:pt
#UFT-8

Feature: Preço e Prazo			
		Eu como cliente do correios
		Quero buscar preços e prazos 
		De modo que posso Cálculo de preços e prazos de entrega
		
		Parametros necessarios para busca:
			.Calculador de preços e prazos	
			.Destinação	
			.Serviço
			
		filtros para tipos de serviços:
		
		.carta registrada
		.carta simples
		.sedex
		.sedex 10 etc
		
	

		Background:	Logar na pagina de preços e prazos	
				  Given que esteja ja tela dos correios
				  When clicar no botao "Preços e Prazos"
				  Then devo visualizar a tela "Preços e Prazos"			
				

		Scenario: Calcular envio de cartao registrada
				  When preencho data da postagem
				  And destinação
				  And cep de destino 
				  And tipo do serviço
				  And clicar em enviar da tela preços e prazos	
				  Then devera ser validado ulr da pagina http://www2.correios.com.br/sistemas/precosPrazos/prazos.cfm			
					
		Scenario: Calcular envio de  aerograma
				  When preencho data da postagem
				  And destinação
				  And cep de destino 
				  And tipo do serviço aerograma
				  And clicar em enviar da tela preços e prazos	
				  Then devera ser validado mensagem "Resultado do Cálculo"
		
		 Scenario: Calcular envio de sedex 10
				  When preencho data da postagem
				  And destinação
				  And cep de destino 
				  And tipo do serviço como sedex
				  And selecionar envelope
			      And selecionar objeto "Embalagem dos correios"
				  And selecionar peso estimado 1
				  And selecionar Envelope bolha grande 		
				  And clicar em enviar da tela preços e prazos	
				  Then devera ser validado mensagem "Prazo de entrega"
		
		 Scenario: Calcular envio de cartao via internet
				  When preencho data da postagem
				  And destinação
				  And cep de destino 
				  And tipo do serviço via internet
				  And clicar em enviar da tela preços e prazos	
				  Then devera ser validado mensagem "Carta Via Internet"
				  
				  
		 Scenario: Calcular envio de e-sedex
				  When preencho data da postagem
				  And destinação
				  And cep de destino 
				  And tipo do serviço e-sedex
				  And selecionar opcao "comparar "Comparar com todos os serviços de encomendas disponíveis"
				  And clicar em enviar da tela preços e prazos					  
				  Then devera ser validado mensagem "Serviço indisponível para o trecho informado."