#line 1 "C:/Users/rochinel/Desktop/prog pic/compteur decompteur/comp.c"
void main() {

 char nbre[] = { 0x06,0x5B,0x4F,0x66,0x6D, 0x7D, 0x07,0x7F, 0x6F} ;
 int i = 0;

 TRISB = 0;
 PORTB = 0;
 TRISA = 1;

 while (1==1)
 {
 if (PORTA.F0 == 1)
 {
 for (i= 0; i <9; i++)
 {
 PORTB = nbre[i];
 delay_ms(500);
 }
 }
 else
 {
 for (i= 0; i <9; i++)
 {
 PORTB = nbre[9-i];
 delay_ms(500);
 }
 }
 }


}
