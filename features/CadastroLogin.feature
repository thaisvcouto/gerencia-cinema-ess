Feature: fazer cadastro e login de clientes e funcionários
    
    AS A usuário do sistema
    I WANT TO cadastrar e efetuar login de um cliente ou funcionário
    SO THAT I possa ser cadastrado no sistema e seja capaz de efetuar operações  

Scenario: Cadastrar um cliente
GIVEN a cliente "Izadora Francisca" com CPF "06799700695" está na página "cadastro de cliente"
AND ela fornece seu nome, "Izadora Francisca", CPF "06799700695", email "izachica@gmail.com", endereço "Rua Joaquina, número 2", telefone "81993844490" e senha "teamocatita"
AND CPF "06799700695" e email "izachica@gmail.com" são inéditos no banco de dados
WHEN a cliente finaliza o cadastro
THEN o cadastro da cliente é efetuado com sucesso
AND a mensagem "Cadastro efetuado com sucesso!" aparece na tela
AND a cliente é direcionada para a área de "login"

Scenario: Cadastrar um funcionario
GIVEN o funcionário "Eattron Lhipada" com CPF "12300399456" está na página "cadastro do funcionário"
AND ele fornece seu nome, "Eattron Lhipada", CPF "12300399456", email "eattronlhipada@gmail.com", endereço "Rua Valentina de Jesus, número 13", telefone "8199203948" e senha "euamolol"
AND CPF "12300399456" e email "eattronlhipada@gmail.com" são inéditos no banco de dados
WHEN o funcionário finaliza o cadastro
THEN o cadastro do funcionário é efetuado com sucesso
AND a mensagem "Cadastro efetuado com sucesso!" aparece na tela
AND o funcionário é direcionado para a área de "login"

Scenario: Cadastro de um usuário que não preencheu todos os campos
GIVEN a usuária "Ana Catarina" está na "área de cadastro"
AND a usuária "Ana Catarina" não fornece todas as informações necessárias
WHEN a usuária tenta finalizar o cadastro
THEN o cadastro da usuária não é efetuado com sucesso
AND a mensagem "um ou mais campos não foram preenchidos!" aparece na tela
AND a usuária retorna à "área de cadastro"

Scenario: Cadastro de um usuário com CPF ou email já cadastrado na plataforma
GIVEN a usuária já cadastrada "Izadora Francisca" com CPF "06799700695" está na "área de cadastro"
AND a usuária "Izadora Francisca" fornece CPF "06799700695" ou email "izachica@gmail.com", ambos já cadastrados
WHEN a usuária tenta finalizar o cadastro
THEN o cadastro não é efetuado com sucesso
AND a mensagem "CPF/email já cadastrado!" aparece na tela
AND a usuária retorna à "área de cadastro"

Scenario: Login bem sucedido
GIVEN a usuário "Izadora Francisca" está na área de "login"
AND a usuário "Izadora Francisca" fornece CPF "06799700695" ou email "izachica@gmail.com" e senha "teamocatita"
WHEN a usuária "Izadora Francisca" efetua o login
THEN o login é efetuado com sucesso
AND a usuária "Izadora Francisca" está na "área do usuário"

Scenario: Dados de login incompletos
GIVEN a usuário "Izadora Francisca" está na área de "login"
AND a usuária "Izadora Francisca" fornece CPF "06799700695" ou email "izachica@gmail.com" mas não fornece a senha
WHEN a usuária "Izadora Francisca" efetua o login
THEN o login não é efetuado com sucesso
AND a mensagem "Não foi possível efetuar o login" aparece na tela
AND a usuária "Izadora Francisca" retorna à "área de login"

Scenario: Dados de login incorretos
GIVEN a usuário "Izadora Francisca" está na área de "login"
AND a usuária "Izadora Francisca" fornece CPF "06799700695" ou email "izachica@gmail.com" e senha "naogostodecatita"
WHEN a usuária "Izadora Francisca" efetua o login
THEN o login não é efetuado com sucesso
AND a mensagem "login ou senha incorretos" aparece na tela
AND a usuária "Izadora Francisca" retorna à "área de login"

# FEATURE 4: Cadastro/Login de cliente e funcionário. -> Cadastro/Login
# O sistema deverá ser capaz de realizar um cadastro 
# de um cliente ou funcionário (cada um deverá ter uma sessão diferente) com as informações de:
# Nome
# CPF
# Telefone
# email
# Endereço
# Senha
# Para o login do Cliente/Funcionário, deverá ser necessário o uso de  (CPF ou email) e senha
# Não pode existir o mesmo CPF ou email em cadastros de pessoas diferentes, 
# caso o cadastro tente ser executado, uma mensagem de erro: 
# “CPF/email já cadastrado” deverá ser mostrada e o cadastro não deverá ser concretizado.

# Página de cadastro: só pra cliente.
# No rodapé, opção "sou funcionário" ou "área de controle", algo assim. 
# E aí sim, teria cadastro e login de funcionário