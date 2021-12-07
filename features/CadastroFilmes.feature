Feature: cadastrar filmes

    AS A funcionário
    I WANT TO cadastrar um filme
    SO THAT I possa disponibilizar os filmes para serem comprados

#CENÁRIO 1
Scenario: funcionário cadastra um novo filme
GIVEN a filme "Duna" pelo funcionário "Eattron Lhipada", de CPF "12300399456", na página "cadastro de filmes"
AND sua classificação etária, "16 anos", sua categoria, "ficção científica" e o tempo de duração, "2h35m, 155m"
AND suas informações secundárias; seus atores principais "Thimotee Chalamet e Zendaya", prêmios e indicações "Oscar"
AND sua sinopse "X"
AND ele é "dublado", fica na sala "1", "3D" e os horários das suas sessões são "15:30", "18:40" e "21:20"
WHEN o funcionário tenta finalizar o cadastro
THEN o filme é cadastrado com sucesso
AND o filme "Duna" agora pode ser visto na lista de filmes em cartaz

#CENÁRIO 2
Scenario: funcionário tenta cadastrar um filme já cadastrado
GIVEN a filme "Duna" pelo funcionário "Eattron Lhipada", de CPF "12300399456", na página "cadastro de filmes"
AND sua classificação etária, "16 anos", sua categoria, "ficção científica" e o tempo de duração, "2h35m, 155m"
AND suas informações secundárias; seus atores principais "Thimotee Chalamet e Zendaya", prêmios e indicações "Oscar"
AND sua sinopse "X"
AND ele é "dublado", fica na sala "1", "3D" e os horários das suas sessões são "15:30", "18:40" e "21:20"
AND a filme "Duna", "dublado", na sala "1", "3D", nos horários de "15:30", "18:40" e "21:20" já foi cadastrado antes
WHEN o funcionário tenta finalizar o cadastro
THEN o cadastro não é efetuado
AND a mensagem "FILME JÁ CADASTRADO" aparece na tela
AND o funcionário retorna à tela de "cadastro de filmes"

#CENÁRIO 3
Scenario: funcionário tenta cadastrar um filme sem todas as informações
GIVEN a filme "Duna", pelo funcionário "Eattron Lhipada", de CPF "12300399456", na página "cadastro de filmes"
AND sua classificação etária, "16 anos", sua categoria, "ficção científica" e o tempo de duração, "2h35m, 155m"
AND o funcionário "Eattron Lhipada" não coloca as informações secundárias, ou seja, os campos "atores principais", "prêmios e indicações"
AND sua sinopse "X"
AND ele é "dublado" e os horários das suas sessões são "15:30", "18:40" e "21:20"
AND o funcionário "Eattron Lhipada" não coloca "número da sala" e "tipo da sala" nos campos de informação
WHEN o funcionário tenta finalizar o cadastro
THEN o cadastro não é efetuado
AND a mensagem "CADASTRO INCOMPLETO" aparece na tela
AND suas informações secundárias são preenchidas com um "-", mas a informação da sala é essencial e deve ser preenchida pelo funcionário
AND as opções de "Salvar rascunho" ou "Voltar" aparecem na tela
AND o funcionário salva o rascunho ou retorna à tela de "cadastro de filmes" para continuar preencendo as informações do filme

#CENÁRIO 4
Scenario: funcionário tenta cadastrar um filme com conflito
GIVEN a filme "Duna", pelo funcionário "Eattron Lhipada", de CPF "12300399456", na página "cadastro de filmes"
AND sua classificação etária, "16 anos", sua categoria, "ficção científica" e o tempo de duração, "2h35m, 155m"
AND suas informações secundárias; seus atores principais "Thimotee Chalamet e Zendaya", prêmios e indicações "Oscar"
AND sua sinopse "X"
AND ele é "dublado", fica na sala "1", "3D" e os horários das suas sessões são "15:30", "18:00" e "21:20"
WHEN o funcionário tenta finalizar o cadastro
THEN o cadastro não é efetuado, pois os horários "15:30" e "18:00" se sobrepõem
AND a mensagem "CONFLITO DE HORÁRIOS" aparece na tela
AND o funcionário retorna à tela de "cadastro de filmes" para continuar preencendo as informações do filme