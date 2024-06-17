1.1 Adicione uma tabela de log ao sistema do restaurante. Ajuste cada procedimento para
que ele registre
- a data em que a operação aconteceu
- o nome do procedimento executado
1.2 Adicione um procedimento ao sistema do restaurante. Ele deve
- receber um parâmetro de entrada (IN) que representa o código de um cliente
- exibir, com RAISE NOTICE, o total de pedidos que o cliente tem
1.3 Reescreva o exercício 1.2 de modo que o total de pedidos seja armazenado em uma
variável de saída (OUT).
1.4 Adicione um procedimento ao sistema do restaurante. Ele deve
- Receber um parâmetro de entrada e saída (INOUT)
- Na entrada, o parâmetro possui o código de um cliente
- Na saída, o parâmetro deve possuir o número total de pedidos realizados pelo cliente
1.5 Adicione um procedimento ao sistema do restaurante. Ele deve
- Receber um parâmetro VARIADIC contendo nomes de pessoas
- Fazer uma inserção na tabela de clientes para cada nome recebido
- Receber um parâmetro de saída que contém o seguinte texto:
“Os clientes: Pedro, Ana, João etc foram cadastrados”
Evidentemente, o resultado deve conter os nomes que de fato foram enviados por meio do
parâmetro VARIADIC.
1.6 Para cada procedimento criado, escreva um bloco anônimo que o coloca em execução.