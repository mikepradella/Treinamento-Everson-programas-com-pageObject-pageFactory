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