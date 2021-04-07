#define enA 11
#define in1 10
#define in2 9
#define in3 7
#define in4 6
#define enB 5
#define motorS 2
#define motorD 3



float c1[4]={0,0,0,0};
float e1[4]={0,0,0,0};

float c2[4]={0,0,0,0};
float e2[4]={0,0,0,0};

int stare1 = 0;
int stare2 = 0;
int stare3 = 0;
int stare4 = 0;
int timp1 = 0;
int timp2 = 0;
int numar1 = 0;
int numar2 = 0;
float rotsecS = 0;
float rotsecD = 0;
float comanda1 = 0;
long x = 0;
int sec = -1;
int contor = 0;
int com1 = 0;
int com2 = 0;
float ref = 1.5;


 

void setup() {
  Serial.begin(9600);
  pinMode(motorS, INPUT);
  pinMode(motorD, INPUT);
  pinMode(in1,OUTPUT);
  pinMode(in2,OUTPUT);
  pinMode(in3,OUTPUT);
  pinMode(in4,OUTPUT);
  pinMode(enB,OUTPUT);
  pinMode(enA,OUTPUT);
  
}



void loop(){

    digitalWrite(in1,HIGH);
    digitalWrite(in2, LOW);
    digitalWrite(in3, HIGH);
    digitalWrite(in4, LOW);
  
            delay(1);
            
            sec++;
            timp1++;
            
            stare2 = digitalRead(motorS);
            stare4 = digitalRead(motorD);
                   
            if (stare1 == 0 && stare2 == 1) {
                  numar1++;
            }      
            stare1 = stare2;

            if (stare3 == 0 && stare4 == 1) {
                  numar2++;
            }      
            stare3 = stare4;

            if(com2 < 150) {
                   x = 0.2;
                }
                else x = 0;


            if (timp1 == 1000) {
                 
                  rotsecS = numar1 / 20.0000;
                  rotsecD = numar2 / 20.0000;
                  
                
                  
                  numar1 = 0;
                  numar2 = 0;
                  timp1 = 0;
           
     
             e1[0] = ref - rotsecS;
             c1[0]= 1.905*c1[1] - 0.905*c1[2] + 0.1951*e1[1] - 0.1731*e1[2];

             e2[0] = ref - rotsecD;
             c2[0]= 1.905*c2[1] - 0.905*c2[2] + 0.251*e2[1] - 0.205*e2[2];


             com1 = c1[0] * 255;
             com2 = c2[0] * 255;

          // Limitare la interval    
            if(com1>=255)     
            com1 = 255;

            if(com2>=255)
            com2 = 255;
                          
            if(com1<=0)
            com1 = 0;

            if(com2<=0)
            com2 = 0; 
        
            
          //  Zona de print in consola  
            Serial.print("Comanda MS:  ");  
            Serial.print(com1);
            
            Serial.print("    MS rot/s:  ");
            Serial.print(rotsecS,DEC);

            Serial.print(" | ");
            
            Serial.print(" Comanda MD: ");  
            Serial.print(com2);
            
            Serial.print("  MDrot/s:  ");
            Serial.println(rotsecD,DEC);
           
            
          // Comanda PWM pentru motoare  
            analogWrite(enA,com1);
            analogWrite(enB,com2);


         // Decalarea cu o treapta  
             for(int i=3;i>0;i--)
           { 
              c1[i]= c1[i-1];
              c2[i]= c2[i-1];
              
              e1[i] = e1[i-1];
              e2[i] = e2[i-1];
               
           }
      }          
}
