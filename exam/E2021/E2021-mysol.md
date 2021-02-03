## Exam 2021

### Question 1

The transport protocol UDP (User Datagram Protocol) offers to the applications using it
- a. A connectionless unreliable service. :heavy_check_mark:
- b. A connection-oriented reliable service.
- c. I DO NOT ANSWER THIS QUESTION.
- d. A connectionless reliable service.
- e. A connection-oriented unreliable service.

**Justification:** UDP is connectionless by definition. It is unreliable because, although there is a guarantee of delivered packets being correct, there is not a guarantee that all packets are delivered.

### Question 2

A system transmitting 100 kSymbol/s using a 4QAM modulation transmits a bitrate of
- a. 400 kbit/s.
- b. 50 kbit/s
- c. 200 kbit/s. :heavy_check_mark:
- d. I DO NOT ANSWER THIS QUESTION.
- e. 100 kbit/s.

**Justification:** 4QAM is the Quadrature Amplitude Modulation method with 4 symbols. Thus, M=4. From the question, the baudrate is fs=100 000/s. From Nyquist bitrate (aka Hartley's law),

C = 2B log2(M) = fs log2(M) = 100 000 * log2(4) = 200 000 bit/s = 200 kbit/s

### Question 3

A data link characterised by Bit Error Ratio (BER) is used to transmit data frames. Let us assume 2 scenarios:

- Scenario A - transmission of frames having a length of L bits;
- Scenario B - transmission of frames having a length L/10 bits.

In this situation,
- a. FERa > FERb. :heavy_check_mark:
- b. I DO NOT ANSWER THIS QUESTION.
- c. Frame Error Ratio in Scenario A (FERa) is smaller than Frame Error Ratio in Scenario B (FERb): FERa < FERb.
- d. The information provided is insufficient to draw a conclusion.
- e. FERa = FERb.

**Justification:** each frame in B has less bits, so each frame is less prone to having at least one error. FERa > FERb.

### Question 4

Consider a ARQ Go-Back-N mechanism using 1 bit for numbering frames. The transmitter behaviour is described in a notation where, for instance, ?RR(1).!I(1).SW represents the reception (?) of frame RR(1) followed (.) by the transmission (!) of frame I(1), followed (.) by a stop and wait (SW). Assuming the transmitter always has frames to transmit, if the transmitter behaved as !I(0).?RR(1) then its behaviour can be characterised by
- a. !I(0).SW
- b. !I(1).SW :heavy_check_mark:
- c. !I(1).!I(0).SW
- d. I DO NOT ANSWER THIS QUESTION.
- e. !I(0).!I(1).SW

**Justification:** !I(0) sends frame 0; ?RR(1) acknowledges all frames with sequence number less than 1 (thus acknowledgeing I(0)), so the next frame being sent is I(1), and we're left with (b) or (c). As for (c), there is no reason the transmitter would send I(0) again, as it was already acknowledged; besides, there is only 1 numbering bit, thus the window size is W= 2^k-1 = 2^1-1 = 1, so after sending I(1) the transmitter stops and waits.

### Question 5

Assume a network interface modelled by a stable M/D/1 waiting queue, characterised by an average arrival rate of λ packet/s, a line capacity of C bit/s, and packet length of L bit. In this system, the average rate of transmitted packets is

- a. λ :heavy_check_mark:
- b. C
- c. I DO NOT ANSWER THIS QUESTION.
- d. C/L
- e. L/C

**Justification:** we can only analyse a system if it is stable. In a stable system, the average client arrival rate is equal to the average rate of transmitted packets (as packets do not remain an indefinitely large time in the system), thus there are as many packets entering as there are leaving, and the system cannot process more packets than those that enter the system. As such, the average rate of transmitted packets is λ.

### Question 6

Assuming that A>B indicates that the maximum throughput (received bitrate) enabled by protocol A is higher than the maximum throughput enabled by protocol B, the following is true
- a. I DO NOT ANSWER THIS QUESTION.
- b. Aloha > Slotted Aloha > TDM
- c. Slotted Aloha > Aloha > TDM
- d. TDM > Slotted Aloha > Aloha :heavy_check_mark:
- e. TDM > Aloha > Slotted Aloha

**Justification:** TDM (time division multiplexing) divides the time domain into m channels; if all channels are being used at the same time, TDM yields 100% efficiency. Slotted Aloha yields a max efficiency of 1/e = 36.8%. Pure Aloha yields a max efficiency of 1/2e = 18.4%. For Aloha and Slotted Aloha you can check the slides, although it is reasonably easy to deduce.

### Question 7

Assume the following connections scenario

```txt
[A]--0[SW]1--0[RT]1--[B]
```

In this scenario, computer A is connected to port 0 of the Ethernet switch SW, port 1 of the switch SW is connected to port 0 of the router RT, and computer B is connected directly to port 1 of the router RT. In this situation, when computer A sends an ARP-Request so that it can communicate with computer B, the source MAC address of the ARP-Reply frame received by A is

- a. MAC address of RT.port0 :heavy_check_mark:
- b. MAC address of SW.port0
- c. MAC address of B.
- d. I DO NOT ANSWER THIS QUESTION.
- e. IP address of RT.porta0.

**Justification:** As we are dealing with MAC addresses, there is no chance we get an IP address (reject (e)). SW ports don't have MAC addresses and are transparent to devices (reject option (b)). B sent the ARP-Reply to A, but it is not directly connected to it or through a switch, so B communicates with A through a router; router interfaces have MAC addresses, and requests leaving the router bear the MAC address of the corresponding router interface. Thus the received ARP-Reply has the MAC address of RT port 0.

### Question 8

A router's forwarding table consists of entries in the format and contains the following entries

{<140.34.128.0/17, 1>, <140.34.0.0/24, 2>, <0/0, 3>}.

If to this router arrives a packet having the destination address 140.34.127.1, then the packet will be

- a. forwarded to port 2.
- b. forwarded to port 1.
- c. discarded.
- d. I DO NOT ANSWER THIS QUESTION.
- e. forwarded to port 3. :heavy_check_mark:

**Justification:**

```txt
Destination address | 140.34.01000000.00000001
Port 1              | 140.34.1???????.?
Port 2              | 140.34.00000000.?/24
Port 3              | ?.?.?.?/0
```

Our destination address does not match the address of Port 1 nor Port 2. Thus it is forwarded to port 3, which is the default gateway.

### Question 9

Assume two computers connected through TCP, having Round Trip Time (RTT) of 2 ms and no congestion. If the segment size is 2 kBytes, the time required to transmit 14 kBytes of data, excluding the time to setup the connection, is

- a. 6 ms. :heavy_check_mark:
- b. 4 ms.
- c. 10 ms.
- d. I DO NOT ANSWER THIS QUESTION.
- e. 8 ms.

**Justification:** 14kB of data must be split into seven 2kB segments. Since TCP uses slow start, it first sends 1 segment and receives 1 ACK, then 2 segment and 2 ACKs, and finally 4 segment and 4 ACKs. This accounts for all the seven segments. For each time it sends segments and receives ACKs, one RTT passes, thus it takes 3*RTT to transmit the data. 3*RTT = 3*2ms = 6ms.

### Question 10

In link-state routing, a node receives

- a. information about the links of all the nodes. :heavy_check_mark:
- b. information about the links of its neighbours, only.
- c. the distance-vectors of neighbour nodes, only.
- d. I DO NOT ANSWER THIS QUESTION.
- e. the distance-vectors of all the nodes.

**Justification:** A router can obviously only directly communicate with neighbors, but the information a router receives on link-state routing is flooded to all its neighbors if it is more recent than the previous version, thus each node eventually receives information about the links of all nodes. It additionally runs Dijkstra's algorithm to finally build the routing table.

### Question 11

Two stations comunicate using a Go-Back-N ARQ mechanism. The channel capacity in each direction is 600 kbit/s, the propagation delay between stations is 40 ms, the packet size is 300 bytes, the frames are numbered using module 32, and the Bit Error Ratio is BER=10^-4.

In this situation, the maximum efficiency of the protocol is

S=**14.93**%

**Justification:**  
Tprop = 40 ms = 0.040 s  
L = 300 B = 2400 bit  
C = 600 kbit/s = 250 pac/s  
M = 32  
BER = 10^-4  
pe = FER = 1-(1-BER)^(L/bit) = 1-(1-10^-4)^2400 = 0.213382

Tf = 1/C = 0.004 s  
a = Tprop/Tf = 0.040 s / 0.004 s = 10  
W = M-1 = 31  

Since W ≥ 1+2a <=> 31 ≥ 1+2*10 <=> 31 ≥ 21,

S = (1-pe)/(1+2\*a\*pe) = 0.1493

### Question 12

If the Selective-Repeat ARQ mechanism is used, the maximum throughput (débito máximo) of this protocol is **360** kbit/s

**Justification:**  
W = M/2 = 16  

Since W < 1+2a <=> 16 < 1+2*10 <=> 16 < 21,

S = W(1-pe)/(1+2\*a) = 0.599328

Debito = S*C = 359.60 kbit/s

### Question 13

If the Selective-Repeat ARQ mechanism is used and BER=0, the maximum efficiency could be obtained for a packet size

L > **400** bytes.

**Justification:**

W = 1+2a <=> a = (W-1)/2 <=> Tprop/Tf = (W-1)/2 <=> 1/Tf = (W-1)/2Tprop <=>  
<=> Tf = 2Tprop/(W-1) <=> L/C = 2Tprop/(W-1) <=>  
<=> L = 2\*C\*Tprop/(W-1) = 2 \* 600 000 bit/s * 0.040 s / (16-1) = 3200 bit = 400 B

### Question 14

The output port of an Ethernet switch has a capacity of 100 Mbit/s and is modeled as a M/M/1 queue. To this output port is forwarded all the traffic coming from 10 input ports. The average packet lenght is 10^4 bit. The utilization of the output port should be below 80%.
In this situation, the maximum average packet rate received by an input port should be smaller than **800** pac/s.

**Justification:**  
L = 10^4 bit    
μ = 100 Mbit/s = 10000 pac/s  
ρ = 80% = 0.80  

ρ = λ/μ <=> λ = ρ\*μ = 0.80*10000 pac/s = 8000 pac/s

Dividing by the 10 input ports, 8000 pac/s / 10 = 800 pac/s.

### Question 15

If the output queue has only 4 buffers (M/M/1/4), the probability of a packet being transmitted is **87.8**%.

**Justification:**  

B = 4

The probability of being transmitted is 1-P(B).

P(B) = ρ^B\*P(0) = ρ^B\*(1-ρ)/(1-ρ^(B+1)) = 0.8^4\*(1-0.8)/(1-0.8^5) = 0.122

1-P(B) = 0.878

### Question 16

In this queue of 4 buffers, if the packet lenght is constant and equal to 10^4 bit, then the maximum amount of time a packet has to wait before it starts to be transmitted is Tw=**300** μs.

**Justification:** The worst case is when there are 3 packets waiting and the first packet has just started to be transmitted. In this case the new packet has to wait for the three packets to finish transmitting.

L = 10000 bit  
C = 100 Mbit/s = 10000 pac/s  
Tf = 1/C = 0.0001 s = 100 μs  

100 μs * 3 = 300 μs

### Question 17

![](20210120-RCOM-IP.jpeg)

Company A was assigned the IP address block 33.33.33.128/26. The company has a communications network with the architecture described in the figure, consisting of 4 routers (R1, R2, R3, R4) and two Ethernet switches (S1 and S2). Switch S1 serves 17 computers. Switch S2 serves 11 computers. Routers are connected by point-to-point links and to some of these links are assigned the network addresses shown in the figure.

The address of the network consisting of 11 computers, using the address/mask format (for example 88.88.88.128/30), is **33.33.33.176/28**.

**Justification:**

33.33.33.160/30 = 33.33.33.101000??
33.33.33.164/30 = 33.33.33.101001??
33.33.33.168/30 = 33.33.33.101010??

```txt
             1
             |
             |
             |
             0
            / \
           /   \
          /     \
         0       1
       #17C#    / \
               /   \
              /     \
             0       1
            / \    #11C#
           /   \ 
          /     \
         0       1
        / \     / \  
       /   \   /   \ 
      /    |   |    \ 
     0     1   0     1
    R12   R34 R14  #R23#
```

### Question 18

The broadcast address of the network consisting of 17 computers is **33.33.33.159**

### Question 19

(Use the lowest address possible and do not indicate the mask)

The IP address of network interface R3.eth1 is **33.33.33.173**.

### Question 20

Considering that (1) the cost of a link is the inverse of its capacity, and (2) packets should use minimum cost paths, the default gateway of router R3 should be router

- a. R2.
- b. R1.
- c. R4. :heavy_check_mark:
