/* 
snowbal fight sumulator 
by Max Scott 
feb 11, 2021 (date do)

here i use "landing a snowball" to mean a person on a team
throwes a snowbal and it actuly hits somone on the aposing team

*/



import java.lang.Math;

  

void setup(){
  size(1,1);
  
  int Apeople = 9;  // num peopel on team a
  int ASPM = 20;  // number of snowbals per minut that can be throughn by team a  
  int aAcur = 20;  // acuracy of team a 
  int Bpeole = 14;  // num peopel on team b
  int BSPM = 125;   // number of snowbals per minut that can be throughn by team b
  int bAcur = 99;   // acuracy of team a 
  int totSumA = 0;  // total wins of team a 
  int totSumB = 0;  // total wins of team b 
  int tie = 0;    // total number of ties 
  
  int aSum =0;  //  // how many times a snowbal was landed  by team a 
  
  for(int j = 0; j < 100; j++){    // this repeats the expiriment 
    
          // this gets the the nubmer of snowballth that are landed by team a
      for(int i = 0; i < Apeople * ASPM; i++){  
        int randomNumWithin100 = (int) (Math.random() * 700);
        if(randomNumWithin100 < aAcur){
          aSum++;
        }
      }
      //System.out.println(aSum);
      
            // this gets the the nubmer of snowballth that are landed by team b
        int bSum = 0;   // how many times a snowbal was landed 
        for(int i = 0; i < Bpeole * BSPM; i++){
          int randomNumWithin100 = (int) (Math.random() * 700);
          if(randomNumWithin100 < bAcur){
            bSum++;
          }
      
        }
      
          // this chunk of code figers out how landed for snowbals and increases their wining total.  
      if(aSum > bSum){
        totSumA++;
      }
      if(aSum < bSum){
        totSumB ++ ;
      }
      if(aSum == bSum){
        tie++;
      }

  }
          // disply winner 
      if(totSumA > totSumB){
        System.out.println("a wins");
        int tot = totSumB +totSumA;
        System.out.println(totSumA +" to "+ totSumB); // maybe just make 100 
      }else if(totSumA < totSumB){
        System.out.println("b wins");
        int tot = totSumB +totSumA;
        System.out.println(totSumB +" to "+ totSumA + " times");
      }else{
        System.out.println("no winner \n it was a tie ");
        
      }
      
      
  
}
/* sample output 
b wins
55 to 45 times
*/ 

/* sample output 
no winner 
 it was a tie
*/ 

/* sample output 
a wins
51 to 48
*/ 

 


void draw(){


}
