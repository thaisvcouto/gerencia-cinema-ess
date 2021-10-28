Feature: fazer cadastro e login de clientes e funcionários
    
    AS A usuário do sistema
    I WANT TO cadastrar e efetuar login de um cliente ou funcionário
    SO THAT I possa ser cadastrado no sistema e seja capaz de efetuar operações  

Scenario: Cadastrar um cliente
Given o cliente está na área de cadastro de cliente
And o cliente fornece todos as informações necessárias corretamente
And CPF e Email são inéditos no banco de dados
When o cliente clica no botão de "Finalizar Cadastro"
Then o cadastro do cliente é efetuado com sucesso
And a mensagem "Cadastro efetuado com sucesso!" aparece na tela
And o cliente é direcionado para a área de login

Scenario: Cadastrar um funcionario
Given o funcionario está na área de cadastro do funcionário
And o funcionário fornece todos as informações necessárias corretamente
And CPF e Email são inéditos no banco de dados
When o funcionário clica no botão de "Finalizar Cadastro"
Then o cadastro do funcionário é efetuado com sucesso
And a mensagem "Cadastro efetuado com sucesso!" aparece na tela
And o funcionário é direcionado para a área de login

Scenario: Cadastro de um usuário que não preencheu todos os campos
Given o usuário está na área de cadastro
And o usuário não fornece todas as informações necessárias
When o usuário clica no botão de "Finalizar Cadastro"
Then o cadastro não é efetuado com sucesso
And a mensagem "um ou mais campos não foram preenchidos!" aparece na tela
And o usuário retorna à área de cadastro

Scenario: Cadastro de um usuário com CPF ou EMAIL já cadastrado na plataforma
Given o usuário está na área de cadastro
And o usuário fornece um CPF ou EMAIL já cadastrado
When o usuário clica no botão de "Finalizar Cadastro"
Then o cadastro não é efetuado com sucesso
And a mensagem "CPF/Email já cadastrado!"
And o usuário retorna à área de cadastro

Scenario: Login bem sucedido
Given o usuário está na área de login
And o usuário fornece preenche corretamente os campos de login (email ou cpf) e senha
When o usuário clica no botão de "Entrar"
Then o login é efetuado com sucesso
And o usuário está na área do usuário

Scenario: Dados de login incompletos
Given o usuário está na área de login
And o usuário fornece dados de login incompletos
When o usuário clica no botão de "Entrar"
Then o login não é efetuado com sucesso
And a mensagem "Não foi possível efetuar o login" aparece na tela
And o usuário retorna à área de login

Scenario: Dados de login incorretos
Given o usuário está na área de login
And o usuário fornece dados de login incorretos
When o usuário clica no botão de "Entrar"
Then o login não é efetuado com sucesso
And a mensagem "login ou senha incorretos" aparece na tela
And o usuário retorna à área de login

# FEATURE 4: Cadastro/Login de cliente e funcionário. -> Cadastro/Login
# O sistema deverá ser capaz de realizar um cadastro 
# de um cliente ou funcionário (cada um deverá ter uma sessão diferente) com as informações de:
# Nome
# CPF
# Telefone
# Email
# Endereço
# Senha
# Para o login do Cliente/Funcionário, deverá ser necessário o uso de  (CPF ou Email) e senha
# Não pode existir o mesmo CPF ou email em cadastros de pessoas diferentes, 
# caso o cadastro tente ser executado, uma mensagem de erro: 
# “CPF/email já cadastrado” deverá ser mostrada e o cadastro não deverá ser concretizado.

# Página de cadastro: só pra cliente.
# No rodapé, opção "sou funcionário" ou "área de controle", algo assim. 
# E aí sim, teria cadastro e login de funcionário