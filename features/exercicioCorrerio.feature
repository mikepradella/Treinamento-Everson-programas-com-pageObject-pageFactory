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