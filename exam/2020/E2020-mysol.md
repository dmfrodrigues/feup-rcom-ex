## Exame 2020

### Parte 1

#### Pergunta 1

Uma rede composta por um conjunto de routers IP interligados entre si constitui
- a) Uma rede de circuitos virtuais e oferece um serviço orientado às ligações.
- b) Uma rede de circuitos virtuais e oferece um serviço não orientado às ligações.
- c) Uma rede de comutação de pacotes e oferece um serviço orientado às ligações.
- d) Uma rede de comutação de pacotes e oferece um serviço não orientado às ligações.

#### Pergunta 2

A eficiência de um canal rádio (bit/s/Hz), caracterizável pela lei de Shannon log2(1+SNR),

- a) Aumenta quando a distância entre o emissor e o recetor (d) diminui e é independente da largura de banda do canal (B).
- b) Aumenta quando d diminui e B diminui.
- c) É independente de d.
- d) Nenhuma das anteriores é verdadeira.

#### Pergunta 3

Se a probabilidade de uma trama ser recebida com erros for F e se esta mesma trama for transmitida L vezes, então a probabilidade da trama ser recebida corretamente é
- a) FL
- b) 1-FL
- c) 1-(1-F)L
- d) 1-(1-L)F

#### Pergunta 4

Considere o mecanismo ARQ Selective-Repeat estudado nas aulas e usando 2 bits de numeração. Considere também que o funcionamento do Emissor é descrito numa notação em que !I(0).?RR(1) representa a emissão (!) da mensagem I(0) seguida (.) da receção (?) da mensagem RR(1). Após a ocorrência dos eventos !I(0).!I(1), o emissor
- a) Envia de imediato a mensagem I(0).
- b) Envia de imediato a mensagem I(2).
- c) Envia de imediato a mensagem RR.
- d) Para e espera por receção de uma mensagem de confirmação.

#### Pergunta 5

Considere uma interface de comunicações de rede modelizável por uma fila de espera M/M/1 caracterizada por uma taxa de chegada de λ pacote/s uma capacidade de C bit/s, que origina um número médio de pacotes na fila N e um atraso médio de T. Se esta fila passar a ser caracterizada por λ'=10.λ e C'=10.C, então, para o mesmo comprimento médio dos pacotes,
- a) N’=N e T’=T
- b) N’=N/10 e T’=T/10
- c) N’=N e T’=T/10
- d) N’=N/10 e T’=T

#### Pergunta 6
Assuma um cenário composto por 2 computadores A e B implementando o protocolo de acesso ao meio CSMA/CD (Collision Detection), e interligados entre si através de um comutador Ethernet. As portas de rede dos computadores e do comutador funcionam em modo full-duplex. Se o computador A estiver a transmitir uma trama e o computador B também tiver uma trama para transmitir, o computador B
- a) Escuta até ao fim da transmissão de A e só depois transmite a sua trama.
- b) Transmite de imediato a sua trama causando uma colisão.
- c) Transmite de imediato a trama mas só haverá colisão se a trama enviada por A tiver como destino B.
- d) Transmite de imediato e não haverá colisão.

#### Pergunta 7
Assuma o seguinte cenário de ligações [A]—0[SW]1—0[RT]1—[B]. Neste cenário, o computador A está ligado à porta 0 do comutador Ethernet SW, a porta 1 do comutador SW está ligada à porta 0 do router RT, e o computador B está ligado diretamente à porta 1 do router RT. Nesta situação, quando o computador B envia um pacote IP para o computador A, os endereços IP e MAC de origem constantes da trama recebida pelo computador A são os seguintes:
- a) Endereço IP de B, endereço MAC de SW.porta0
- b) Endereço IP de B, endereço MAC de RT.porta0
- c) Endereço IP de B, endereço MAC de B.
- d) Endereço IP de RT.porta0, endereço MAC de SW.porta0.

#### Pergunta 8
Assuma dois computadores ligados à Internet e uma ligação TCP estabelecida entre eles. A distância que separa os computadores é de D, a capacidade mínima da várias ligações atravessadas pelos pacotes é C, o valor médio da janela de congestionamento da ligação TCP é W e o Round Trip Time é R. Nesta situação, o débito médio esperado para esta ligação TCP é de:
- a) C.
- b) W/R.
- c) CR/W.
- d) WD.

#### Pergunta 9
Que protocolo de transporte (UDP ou TCP) usaria para as seguintes aplicações: A1) obtenção de informação do servidor de nomes DNS; A2) envio de um email; A3) transferência de voz em pacotes.
- a) A1=UDP; A2=TCP; A3=TCP.
- b) A1=UDP; A2=TCP; A3=UDP.
- c) A1=TCP; A2=TCP; A3=UDP.
- d) Outra combinação.

#### Pergunta 10
Admita que 2 nós A e B se encontram interligados através da rede composta pelos comutadores R1 e R2 e pelas ligações bidirecionais com as capacidades indicadas na figura. Assumindo que o custo das ligações é inversamente proporcional ao valor da sua capacidade e que todos os pacotes enviados de A para B seguem o caminho de custo mínimo, o débito máximo possível entre A e B é de

- a) 1 Mbit/s
- b) 2 Mbit/s
- c) 4 Mbit/s
- d) 5 Mbit/s

### Parte 2

#### Pergunta 1
Duas estações comunicam usando uma ligação de dados baseada num mecanismo ARQ do tipo Selective Repeat. A capacidade do canal, em cada sentido, é de 2 Mbit/s, o atraso de propagação entre estações é de 250 ms e os pacotes têm um tamanho de 250 Bytes. Assuma duas situações de erro distintas: BER1=0 e BER2=10-4.

##### Item (a)
Considere inicialmente que as tramas são numeradas módulo 64. Calcule a eficiência máxima do protocolo e o débito máximo para as duas situações de erro.

| Selective Repeat ARQ   | BER1=0 | BER2=10e-4 |
|------------------------|--------|------------|
| Eficiência máxima (%)  |        |            |
| Débito máximo (kbit/s) |        |            |

##### Item (b)
Determine o tamanho da janela de transmissão (e o módulo de numeração correspondente) que permitiria teoricamente obter a eficiência máxima do canal para as duas situações de erro indicadas. Calcule a eficiência máxima obtida para os módulos de numeração identificados nas duas situações de erro.

| Selective-Repeat ARQ                                     | BER1=0 | BER2=10e-4 |
|----------------------------------------------------------|--------|------------|
| Tamanho da janela de transmissão                         |        |            |
| Módulo de numeração para a janela crítica de transmissão |        |            |
| Eficiência máxima (%)                                    |        |            |

##### Item (c)
Considere agora que se adiciona a cada trama um código corretor de erros e admita dois cenários:

###### Item (i)
no Cenário A usa-se um código que aumenta o tamanho da trama em 10% e origina um Frame Error Ratio(FER) de 10%.

###### Item (ii)
no Cenário B usa-se um código que aumenta o tamanho da trama em 30% e origina um FER de 5%. Assuma as condições da alínea a).

Calcule a eficiência máxima e o débito máximo útil para os 2 cenários.

| Selective Repeat ARQ        | Cenário A | Cenário B |
|-----------------------------|-----------|-----------|
| Eficiência máxima (%)       |           |           |
| Débito máximo útil (kbit/s) |           |           |

#### Pergunta 2
Admita que um sistema de transmissão é modelizado por uma fila de espera M/M/1 de capacidade infinita. Verificase que em média chegam ao sistema 600 pacote/s, de comprimento médio 1500 Bytes, e que a linha de transmissão está vazia em 40% do tempo.

##### Item (a)

Calcule a capacidade da linha de transmissão, a ocupação média da fila de espera e o tempo médio de atraso dos pacotes.
|                                            |     |
|--------------------------------------------|-----|
| Capacidade da linha (Mbit/s)               |     |
| Ocupação média da fila de espera, Nw       |     |
| Tempo médio de atraso dos pacotes, T, (ms) |     |

##### Item (b)

Calcule a probabilidade de haver pacotes no sistema em duas situações diferentes: i) a fila tem capacidade infinita; ii) a fila tem uma capacidade de 1 buffer.

|                                | Prob [NumPacotes > 0] |
|--------------------------------|-----------------------|
| i) Fila de capacidade infinita |                       |
| ii) Fila com 1 buffer          |                       |

##### Item (c)

Admita que, nas condições da alínea a), os pacotes passavam a ter um comprimento constante de 1500 Bytes. Calcule a capacidade da linha de transmissão, a ocupação média da fila de espera e o tempo médio de atraso dos pacotes. Discuta e compare estes resultados com os resultados obtidos na alínea a).

|                                            |      |
|--------------------------------------------|------|
| Capacidade da linha (Mbit/s)               |      |
| Ocupação média da fila de espera, Nw       |      |
| Tempo médio de atraso dos pacotes, T, (ms) |      |

#### Pergunta 3

À Empresa A foi atribuído o bloco de endereços 77.77.77.64/26. A empresa tem um rede de comunicações com a arquitetura descrita na figura, composta por dois routers (R1 e R2) e dois comutadores Ethernet (S1 e S2). O comutador S1 tem configurada a VLAN1 que serve 4 computadores. O comutador S2 tem configurada a VLAN2 e a VLAN3 que servem respetivamente 10 e 28 computadores. Os routers R1 e R2 estão interligados por uma ligação ponto-a-ponto que usa o endereço de rede indicado na figura.

##### Item (a)

Calcule os endereços associados às redes indicadas.

|       | Endereço da subrede (endereço/máscara) | Endereço de broadcast da subrede | Nº de endereços de interfaces |
|-------|----------------------------------------|----------------------------------|-------------------------------|
| VLAN1 |                                        |                                  |                               |
| VLAN2 |                                        |                                  |                               |
| VLAN3 |                                        |                                  |                               |

##### Item (b)

Atribua endereços IP às interfaces de rede indicadas na tabela. Use os endereços mais altos de cada subrede. Numa sub-rede atribua os endereços mais baixos aos routers de índice Ri mais baixo. Por exemplo, o endereço de R1.eth1 deverá ser inferior ao endereço de R2.eth1.

| Router.interface | Endereço(s) IP            |
|------------------|---------------------------|
| R1.eth1          |                           |
| R2.eth1          |                           |
| R1.eth2          |                           |
| R2.eth0          |                           |

##### Item (c)

Escreva a tabela de encaminhamento do router R2. Este router deverá ser capaz enviar pacotes para todos os endereços IP unicast. Use o menor número possível de entradas na tabela.

(Estenda a tabela com as linhas que for necessário)

| Destino (endereço/máscara) | Gateway     | Interface | 
|----------------------------|-------------|-----------|
|                            |             |           |

