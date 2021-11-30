<h1> logic_ops </h1> 

<p> This program is written in AVR assembly for the AVR128DB48 microcontroller, listed below are the dedicated logic functions
available. The circuit consists of a bargraph LED connected to PORTC, and a bargraph LED display connected to PORTA. Extenernal pull up 
resistors were used in a SIP package</p>

<p> A program named logic_ops that implements any one of four selected logic operations on two
3-bit operands provided. Operand A consists of bits a2, a1, and a0. The values of these three
bits are set on the DIP switches connected to pins PC7, PC6, and PC5, respectively. Operand B
consists of bits b2, b1, and b0. The values of these three bits are set on the DIP switches connected
to pins PC4, PC3, and PC2, respectively. The result C of the selected logic operation, which consists of bits c2, c1, and c0, is 
displayed on the LEDs of the bargraph connected to pins PD7, PD6,
and PD5 respectively.</p>

<p>An open switch produces a logic 1 input and an ON LED represents a logic 1 output.
The logic operation to be performed is selected by F which consists of the two bits f1 and f0. The
values of these two bits are set on the DIP switches connected to pins PC1 and PC0, respectively.
When the value of either of the two operands or the function selection changes, the result
changes immediately.</p>
