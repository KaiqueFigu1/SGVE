int pinoSensor = 5; 
// Saída do sensor na Ad.
int valorLido = 0;

float temperatura = 0;

int linha = 0;

void setup() {
 
  Serial.begin(9600);
 
  Serial.println("CLEARDATA");
  

  //Serial.println("LABEL, Hora, Temperatura, linha"); 
  Serial.println("Temperatura");
  
}

void loop() { 
 
  valorLido = analogRead(pinoSensor);

  temperatura = (valorLido * 0.00488);
  

  temperatura = temperatura * 100;

  linha++; 

 // Serial.print("DATA, TIME, ");

  Serial.print(temperatura); 
//  Serial.print(","); 
 Serial.println(" ");

 if(linha > 100){

linha = 0;
Serial.println("row,set,2");
 }
delay(1000);

}
