/*City department numbers
 
 Generate all dept number permutations for the 3 city departments
 -Fire
 -Police
 -Sanitation
 
 Observe the following rules:
 -Each number between 1 - 7
 -All numbers different
 -Fire# + Police# + Sanitation# = 12
 -Police# must be even
 
 */

PrintWriter output = createWriter("output.txt");
int fire, police, sanitation, counter;
for (int i=1; i<8; i+=1) {
  fire = i;
  for (int j=1; j<8; j+=1) {
    police = j;
    if (fire != police && police%2 == 0) {
      for (int k=1; k<8; k+=1) {
        sanitation = k;
        //counter = (i*100)+(j*10)+k+1;
        if (fire+police+sanitation == 12 
          && fire != sanitation     
          && police != sanitation) {
          println(fire+"-"+police+"-"+sanitation);
          output.println(fire+"-"+police+"-"+sanitation);
        }
      }
    }
  }
}
output.flush();
output.close();
exit();