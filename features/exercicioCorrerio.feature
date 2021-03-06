Funcionalidade: Busca de enderešos 
		Eu como cliente dos correios	
		Quero pesquisar enderešo  e cep cadastrados nos correios
		e devera se todos enderešos cadastrados no sistema dos correios
			
	Contexto: Dado que esteja no site do correios
			  E entro na tela de busca de cep/correio
		  

	Cenario: Buscar por enderešo	
		 Quando preencho o campo de enderešo "avenida yara"
		 E seleciono Cep "todos"
		 Entao devera ser apresentado os "DADOS ENCONTRADOS COM SUCESSO"

	Cenario:Busca por Cep e enderešo
		Quando preencho o campo de <cep/enderešo>
				|cep/enderešo|
				|06028100	|
				|avenida yara|

		E seleciono  <opcao>
				|opcao|
				|todos|
				|localidade/logradouro|
				
		Entao devera ser apresentado "DADOS ENCONTRADOS COM SUCESSO"
	
	# Cenario: Buscar por enderešo /localidade e logradouro
	# 	 Quando preencho o campo de enderešo "tambore"
	# 	 E seleciono "localidade/logradouro"
	# 	 Entao devera ser apresentado "DADOS ENCONTRADOS COM SUCESSO"
	
	Cenario: Busca com enderešo vazio
		 Quando nao preencho o campo de enderešo/Cep
		 E seleciono "localidade/logradouro"
		 Entao devera ser apresentado "Informe o Enderešo !"

	Cenario: Busca com enderešo ou Cep
		 Quando nao preencho o campo de enderešo/Cep
		 E seleciono "Unidade operacional"
		 Entao devera ser apresentado "DADOS NAO ENCONTRADOS"