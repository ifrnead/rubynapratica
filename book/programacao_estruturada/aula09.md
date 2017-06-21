# Aula 09 - Estruturas de Controle de Repetição Condicionais

## Introdução

Na aula passada, demos início ao estudo das estruturas de repetição, que são estruturas de controle de fluxo que permitem a execução de trechos de código de forma repetida e é composta por dois grandes grupos: as estruturas de repetição quantificadas e as estruturas de repetição condicionais. As estruturas de controle quantificadas executam um trecho de código um determinado número de vezes, enquanto as estruturas de repetição condicionais executam um trecho de código dependendo de uma condição.

Nesta aula, abordaremos as estruturas de controle de repetição condicionais, também conhecidas como laços condicionais, que também executam um trecho de código de forma repetida, contudo, a sua execução depende de uma condição.

Para ilustrar a utilidade das estruturas de repetição condicionais, observe a [Atividade 9.1](#aula09-atividade01).

{#aula09-atividade01}
X> ## Atividade 9.1
X>
X> Crie um _script_ em Ruby que leia um número inteiro repetidas vezes. A repetição deve terminar quando o usuário digitar um número par.

Observe que, nesse caso, não é indicado utilizar uma estrutura de repetição quantificada, pois não é possível determinar, com antecedência, quantas vezes o _script_ deverá solicitar o número para o usuário. Nesse caso, a execução da estrutura depende de uma condição (o usuário digitar um número par), portanto, a estrutura de repetição indicada para esse tipo de situação é a condicional.

Observe o [Exemplo de código 01](#aula09-codigo01), que ilustra uma solução para a [Atividade 9.1](#aula09-atividade01).

{#aula09-codigo01}
<<[Exemplo de código 01 - Solução da Atividade 9.1](code/exemplo91.rb)

O `while` é uma estrutura de repetição condicional que executa enquanto a condição for verdadeira. Nesse caso, a condição é `numero % 2 != 0`, que será falsa quando o usuário digitar um número par. O trecho de código a ser executado repetidamente se localiza entre o `begin` (linha 1) e o `end` (linha 4).

## Estruturas de repetição condicionais em Ruby

A linguagem Ruby possui duas estruturas de repetição condicionais que funcionam de forma semelhante: o `while` e o `until`, que podem ser escritas de três formas diferentes (SOUZA, 2012).

### Estrutura de repetição: `while`

A estrutura de repetição `while` (enquanto) pode ser escrita de três formas distintas, a primeira delas está ilustrada no [Exemplo de código 2](#aula09-codigo02).

{#aula09-codigo02}
<<[Exemplo de código 02 - Sintaxe do while](code/exemplo92.rb)

O trecho de código a ser executado repetidamente, localizado entre o `while` (linha 1) e o `end` (linha 3), será executado enquanto a `condicao` for verdadeira. Tente resolver o exercício proposto na [Atividade 9.2](#aula09-atividade02) utilizando o `while`.

{#aula09-atividade02}
X> ## Atividade 9.2
X>
X> Crie um _script_ em Ruby que leia um número inteiro repetidas vezes. A repetição deve terminar quando o usuário digitar um número múltiplo de 5.

Observe o [Exemplo de código 03](#aula09-codigo03), que apresenta uma solução do exercício proposto na [Atividade 9.2](#aula09-atividade02).

{#aula09-codigo03}
<<[Exemplo de código 02 - Solução da Atividade 9.2](code/exemplo93.rb)

No [Exemplo de código 03](#aula09-codigo03), utilizamos a variável `condicao` para indicar se o `while` deve ser executado ou não. A variável `condicao` inicia com o valor `true` (linha 1), para que o `while` seja executado. Dentro do `while` (linhas 3 a 7), o _script_ solicita que o usuário digite um número múltiplo de 5 (linha 3), e o valor é guardado na variável `numero` (linha 4). Em seguida, um `if` (linha 5) é usado para testar se o valor guardado na variável `numero` é, de fato, múltiplo de 5, e caso seja, o valor da variável `condicao` é alterado para
`false` (linha 6) para que o `while` pare de executar.

A segunda forma de escrever o `while` é aquela apresentada no [Exemplo de código 01](#aula09-codigo01). A sintaxe dessa segunda forma é apresentada no [Exemplo de código 04](#aula09-codigo04).

{#aula09-codigo04}
<<[Exemplo de código 04 - Sintaxe do while](code/exemplo94.rb)

A diferença entre essa sintaxe e aquela apresentada anteriormente ([Exemplo de código 02](#aula09-codigo02)) é que, utilizando-o dessa forma, o `while` executará pelo menos uma vez, independente da `condicao` ser verdadeira ou falsa. Isso ocorre porque a avaliação da condição só ocorre no final (linha 3). Utilizando a sintaxe apresentada no [Exemplo de código 02](#aula09-codigo02), caso a condição seja falsa no início da execução do `while`, ele não executará nenhuma vez.

Para melhor ilustrar a diferença entre as duas formas de escrita do `while`, observe e execute o [Exemplo de código 05](#aula09-codigo05).

{#aula09-codigo05}
<<[Exemplo de código 05 - Diferenças entre as duas formas de escrever o while](code/exemplo95.rb)

Na linha 1, a variável `condicao` foi iniciada com `false`. Observe que o primeiro `while` (linhas 3 a 5) não executa nenhuma iteração pois `condicao` é `false`. O segundo `while` (linhas 7 a 9) executa uma vez mesmo com a variável `condicao` sendo `false`.

Por fim, o [Exemplo de código 06](#aula09-codigo06) apresenta a sintaxe da terceira e última forma de se construir o `while`.

{#aula09-codigo06}
<<[Exemplo de código 06 - Sintaxe do while](code/exemplo96.rb)

Vale salientar que, usando a sintaxe apresentada no [Exemplo de código 06](#aula09-codigo06), o trecho de código a ser executado repetidamente se limita a uma única linha de código.

### Estrutura de repetição: `until`

A segunda estrutura de repetição condicional disponível em Ruby é o `until` (até). Assim como o `while`, o `until` também possui três formas distintas de se construir. Contudo, diferentemente do `while`, o `until` irá executar repetidamente enquanto a condição for falsa, e não verdadeira, como ocorre no `while`.

Observe a primeira forma de se escrever o `until` no [Exemplo de código 07](#aula09-codigo07).

{#aula09-codigo07}
<<[Exemplo de código 07 - Sintaxe do until](code/exemplo97.rb)

Para melhor ilustrar o `until`, observe o [Exemplo de código 08](#aula09-codigo08), que apresenta uma solução para a [Atividade 9.2](#aula09-atividade02) utilizando o `until` ao invés do `while`.

{#aula09-codigo08}
<<[Exemplo de código 08 - Solução da Atividade 9.2 com o until](code/exemplo98.rb)

Observe que o [Exemplo de código 08](#aula09-codigo08) é bem similar ao [Exemplo de código 03](#aula09-codigo03). Foram feitas apenas algumas mudanças no [Exemplo de código 08](#aula09-codigo08) para que a solução utilizasse o `until` ao invés do `while`: na linha 1, o valor da variável `condicao` foi alterado para `false` para que o `until` seja executado; na linha 2, o `while` foi substituído pelo `until`; na linha 6, a variável `condicao` recebe `true` para que, quando isso ocorrer, o `until` pare de executar.

A segunda forma de se construir o `until` é ilustrada no [Exemplo de código 9](#aula09-codigo09).

{#aula09-codigo09}
<<[Exemplo de código 09 - Sintaxe do until](code/exemplo99.rb)

Observe que a segunda forma, apresentada no [Exemplo de código 09](#aula09-codigo09), é bem semelhante à estrutura apresentada no [Exemplo de código 04](#aula09-codigo04) com o `while`. A diferença entre elas é que o `while` executa enquanto a condição for verdadeira, e o `until` executa enquanto a condição for falsa.

Para melhor ilustrar essa segunda forma de construção do `until`, observe o [Exemplo de código 10](#aula09-codigo10), que apresenta uma solução para a [Atividade 9.1](#aula09-atividade01) utilizando o `until`.

{#aula09-codigo10}
<<[Exemplo de código 10 - Solução da Atividade 9.1 com o until](code/exemplo910.rb)

Observe que, para resolver o problema proposto na [Atividade 9.1](#aula09-atividade01) usando o `until`, bastaram duas mudanças na linha 4 do [Exemplo de código 1](#aula09-codigo01): substituir o `while` pelo `until` e `!=` por `==` na condição, pois usando o `until`, o laço para de executar quando a condição for verdadeira.

A terceira e última forma de se escrever o `until` é a mais simples, pois só permite que uma única linha de código execute repetidamente. Confira a sintaxe dessa terceira forma no [Exemplo de código 11](#aula09-codigo11).

{#aula09-codigo11}
<<[Exemplo de código 11 - Sintaxe do until](code/exemplo911.rb)

Novamente, a única diferença entre usar o `until` ou `while` é que, com o while o código será executado enquanto a condição for verdadeira, e com o until o código será executado enquanto a condição for falsa.

Vale salientar também que os comandos `break`, `next` e `redo`, apresentados na aula passada, também funcionam com os laços condicionais.

## Exercícios

Algumas questões dessa atividade não precisam ser resolvidas, necessariamente, utilizando estruturas de repetição condicionais.

1) Crie um _script_ em Ruby que permita que o usuário digite vários números e imprima o triplo de cada número digitado. O _script_ deve acabar quanto o número -999 for digitado;

2) Crie um _script_ em Ruby que permita que o usuário digite vários números positivos. Quando um número negativo for digitado, o _script_ deve apresentar quantos números positivos foram digitados;

3) Crie um _script_ em Ruby que permita ao usuário digitar vários números positivos. Quando um número negativo for digitado, o _script_ deve imprimir a média dos números positivos digitados;

4) Crie um _script_ em Ruby que permita ao usuário digitar vários números. Quando o número 0 (zero) for digitado, o _script_ deve informar quantos números entre 100 e 200 foram digitados pelo usuário;

5) Crie um _script_ em Ruby que permita que o usuário digite os nomes de várias profissões. Quando o usuário teclar ENTER sem digitar nada, o _script_ deve informar quantas vezes "dentista" foi digitado;

6) Crie um _script_ em Ruby que permita que o usuário digite o sexo de várias pessoas ("m" para masculino ou "f" para feminino). Quando o usuário teclar ENTER sem digitar nada, o _script_ deve informar quantas vezes foi digitado "m";

7) Crie um _script_ em Ruby que permita ao usuário digitar vários números. Após ler cada número, o _script_ deve mostrar o quadrado desse número. O _script_ deverá encerrar quando o usuário digitar um número múltiplo de 6;

8) Crie um _script_ que permita ao usuário digitar vários números. O _script_ deve se encerrar quando o usuário digitar -999. Para cada número digitado, o _script_ deve imprimir todos os seus divisores;

9) Dado um país A, com 5 milhões de habitantes e uma taxa de natalidade de 3% ao ano, e um país B com 7 milhões de habitantes e uma taxa de natalidade de 2% ao ano, crie um _script_ em Ruby que calcule e imprima o tempo necessário para que a população do país A ultrapasse a população do país B;

10) Chico tem 1,50 metros e cresce 2 cm por ano, enquanto Juca tem 1,10 metros e cresce 3 cm por ano. Crie um _script_ em Ruby que calcule e imprima quantos anos serão necessários para que Juca seja maior que Chico;

11) Uma empresa de fornecimento de energia elétrica faz a leitura mensal dos medidores de consumo. Para cada consumidor, são digitados os seguintes dados:

* Número do consumidor;
* Quantidade de kWh consumidos durante o mês;
* Tipo (código) do consumidor: 1 – residencial (R$ 0,03 por kWh); 2 – comercial (R$ 0,05 por kWh); 3 – industrial (R$ 0,07 por kWh).

Os dados devem ser lidos até que seja encontrado um consumidor com o número 0 (zero). Crie um _script_ em Ruby que calcule e imprima:

* O custo total para cada consumidor;
* O total de consumo para os três tipos de consumidor;
* A média de consumo dos tipos 1 e 2.

12) Criar um _script_ em Ruby que leia vários números inteiros e apresente o fatorial de cada número. O _script_ se encerra quando o usuário digitar um número menor do que 1. Dica: o fatorial de um número é a multiplicação dele por todos os seus antecessores. Exemplo: o fatorial de 5 é 5 x 4 x 3 x 2 x 1 = 120;

13) Crie um _script_ em Ruby que permita que o usuário digite a idade de várias pessoas. O _script_ deve parar quando uma idade negativa for digitada. O _script_ deve mostrar:

* A média das idades;
* Total de pessoas com menos de 21 anos;
* Total de pessoas com mais de 50 anos;

14) Crie um _script_ em Ruby que que leia vários números inteiros e imprima a quantidade de números primos dentre os números que foram digitados. O _script_ acaba quando se digita um número menor ou igual a 0 (zero);

15) Crie um _script_ que permita ao usuário digitar vários números. Para cada número digitado, o _script_ deve verificar se ele é um número triangular. Dica: um número é triangular quando é resultado do produto de três números consecutivos. Exemplo: 2 x 3 x 4 = 24. O _script_ deve se encerrar quando o número 0 (zero) for digitado;

16) Crie um _script_ em Ruby que permita ao usuário digitar vários números. O _script_ acaba quando se digita -9999. Por fim, o _script_ deve apresentar o maior número digitado pelo usuário;

17) Crie um _script_ em Ruby que permita ao usuário digitar o número da conta e o saldo de várias pessoas. Após a digitação dos dados de cada conta, o _script_ deve apresentar o número da conta e informar se o saldo é positivo ou negativo. O _script_ deve terminar quando um número de conta negativo for digitado. Ao final, o _script_ deve mostrar o percentual de contas com o saldo negativo;

18) Crie um _script_ em Ruby que leia vários números. A leitura se encerra quando o usuário digitar 0 (zero). O _script_ deve mostrar os números que forem múltiplos de sua posição na sequência. Exemplo: supondo que o usuário digitou os números 3, 7, 8 e 16. O número 3 foi o 1o a ser digitado, o número 7 foi o 2o, o 8 foi o 3o e o 16 foi o 4o. Nesse exemplo, o _script_ deve apresentar os valores 3 e 16, pois 1 (posição do número 3) é múltiplo de 3, e 4 (posição do número 16) é múltiplo de 16;

19) Crie um _script_ em Ruby que calcule o Mínimo Múltiplo Comum (MMC) entre dois números lidos. Dica: o MMC de dois números é o menor número múltiplo dos dois números informados;

20) Crie um _script_ em Ruby que calcule o Máximo Divisor Comum (MDC) entre dois números inteiros lidos. Dica: o MDC de dois números é o maior número divisor dos dois números informados;

21) Repare a seguinte característica do número 3025: 30 + 25 = 55 e 552 = 3025. Criar um _script_ que possa ler vários números inteiros de 4 algarismos, um de cada vez, e diga se o número apresenta a mesma característica (repare que 3025 / 100 = 30 com resto 25). O _script_ termina quando for lido um valor menor que 1000 ou maior que 9999;

22) Crie um _script_ que leia vários números inteiros positivos e imprima a média dos números múltiplos de 3. O _script_ deve se encerrar quando 0 (zero) for digitado;

23) Criar um _script_ em Ruby que leia vários números inteiros positivos e imprima o produto dos números ímpares e a soma dos pares. O _script_ deve terminar quando o número 0 (zero) for digitado;

24) Criar um _script_ em Ruby que possa ler um conjunto de pedidos de compra e calcule o valor total da compra. Cada pedido é composto pelos seguintes campos:

* Número do pedido;
* Preço unitário;
* Quantidade.

O _script_ deverá processar novos pedidos até que o usuário digite 0 (zero) como número do pedido;

25) Criar um _script_ que leia a idade e sexo (0 para masculino e 1 para feminino) de várias pessoas. Calcule e imprima a idade média, o total de pessoas do sexo feminino com idade entre 30-45 (inclusive), e o número total de pessoas do sexo masculino. O _script_ termina quando se digita 0 (zero) para a idade;

26) Na Usina de Angra dos Reis, os técnicos analisam a perda de massa de um material radioativo. Sabendo-se que esse material perde 25% de sua massa a cada 30 segundos, criar um _script_ em Ruby que leia um valor real que representa o peso do material e mostre o tempo necessário para que a massa desse material se torne menor que 10 gramas.

## Referências

POINT, T. Ruby Tutorial. Tutorials Point. 2015. Disponivel em: <http://www.tutorialspoint.com/ruby/>. Acesso em: 12 nov. 2015.

RANGEL, E. Conhecendo Ruby. [S.l.]: Leanpub, 2014.

SOUZA, L. Ruby: aprenda a programar na linguagem mais divertida. 1. ed. São Paulo: Casa do Código, 2012. v. I.
