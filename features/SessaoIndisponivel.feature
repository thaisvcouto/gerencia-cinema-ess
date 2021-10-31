Feature: Categorizar uma sessão como indisponível

    AS A funcionário
    I WANT TO mostrar para os clientes que a sessão não está disponível para compra
    SO THAT eles saibam antecipadamente e escolham uma sessão disponível

Scenario: Cliente tenta comprar mais ingressos do que o disponível
GIVEN a cliente "Ana Catarina" está na tela "filmes"
AND ela seleciona o filme "Duna"
AND o filme tem "3" lugares disponíveis  
AND a cliente "Ana Catarina" tenta comprar "6" ingressos para o filme "Duna"
WHEN ela confirma a compra
THEN a compra não é efetuada com sucesso
AND a mensagem "Compra negada, assentos insuficientes." aparecerá na tela
AND a cliente "Ana Catarina" volta para a tela "filmes"

Scenario: Sala lota durante a compra
GIVEN a cliente "Ana Catarina" está na tela "filmes" 
AND o filme "Train to Busan" na tela "filmes" acabou de lotar 
WHEN a cliente "Ana Catarina" navega na tela "filmes"
THEN O filme "Train to Busan", que acabou de lotar, some da tela "filmes"

Scenario: Mostrar sala indisponível
GIVEN o filme "If I can't have love, I want power" estão à mostra na tela "filmes"
AND a sala do filme "If I can't have love, I want power" fica indisponível
WHEN um usuário acessa a tela "filmes"
THEN a frase "Sessão Indisponível" aparece do lado do nome do filme "If I can't have love, I want power"

Scenario: Cliente escolhe uma cadeira que foi ocupada durante a compra
GIVEN a cliente "Ana Catarina" está na tela "filmes"
AND ela seleciona o filme "Duna"
AND ela entra na tela "Escolha de assentos"
AND ela tenta comprar "6" ingressos para o filme "Duna", uma delas sendo a cadeira "M5"
AND a cadeira "M5" é escolhida e confirmada por outro cliente durante a escolha de "Ana Catarina"
WHEN ela confirma a compra
THEN a compra não é efetuada com sucesso
AND a mensagem "A cadeira M5 está ocupada, escolha outro assento" aparecerá na tela
AND a cliente "Ana Catarina" volta para a tela "Escolha de assentos"

# FEATURE 5: Exibir sessão como indisponível quANDo 
# não houver mais vagas. -> Sessão Indisponível
# Essa feature é uma definição da última informação da Feature 1.
# Caso tente-se comprar uma quantidade de ingressos maior que 
# a quantidade de cadeiras disponíveis na sala, o sistema deverá 
# avisar que não tem essa quantidade de assentos desejados na sessão 
# e impedir que a compra seja efetuada
# Durante a compra de ingressos,caso uma sala esteja lotada, 
# ela deverá ser omitida.

# Quantidade de Assentos Disponíveis 
# 0% <= Lotação < 85%: Sala Livre
# 85% <= Lotação < 100%: Poucos Assentos Restantes!
# Lotação = 100%: Sala Lotada (Outras especificações descritas na Feature 5)

