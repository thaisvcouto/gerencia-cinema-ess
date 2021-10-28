Feature: Categorizar uma sessão como indisponível

    AS A funcionário
    I WANT TO mostrar para os clientes que a sessão não está disponível para compra
    SO THAT eles saibam antecipadamente e escolham uma sessão disponível

Scenario: Cliente tenta comprar mais ingressos do que o disponível
Given Cliente está na tela de filmes
And Cliente seleciona um filme  
And Cliente tenta comprar mais ingressos do que disponível para o filme
When Cliente confirma a compra
Then A compra não é efetuada com sucesso
And A mensagem "Compra negada, assentos insuficientes." aparecerá na tela
And O cliente volta para a tela de filmes

Scenario: Sala lota durante a compra
Given Cliente está na tela de filmes 
And Um filme na tela de filmes acabou de lotar 
When Cliente navega na tela de filmes
Then O filme que acabou de lotar some da tela de filmes

Scenario: Mostrar sala indisponível no "Carrossel"
Given Os filmes estão em display no Carrossel
When Um filme em display fica indisponível
Then A palavra "Sessão Indisponível", em vermelho, aparece do lado do nome do filme



# FEATURE 5: Exibir sessão como indisponível quando 
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

