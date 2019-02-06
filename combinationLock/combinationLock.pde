/*Print all combinations of a 3-digit lock*/
PrintWriter output = createWriter("output.txt");
int first, second, third, counter;
for (int i=0; i<10; i+=1) {
  first = i;
  for (int j=0; j<10; j+=1) {
    second = j;
    for (int k=0; k<10; k+=1) {
      third = k;
      counter = (i*100)+(j*10)+k+1;
      println(first+"-"+second+"-"+third);
      output.println(counter+": "+first+"-"+second+"-"+third);
    }
  }
}
output.flush();
output.close();
exit();