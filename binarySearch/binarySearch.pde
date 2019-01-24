/* Binary Search */

/* Modified from original code at: 
 http://stackoverflow.com/questions/5810041/binary-search-in-processing-arrayindexoutofbounds
 */

size(400, 200);
background(0, 0, 0);

boolean alwaysFind = false; //ensures the criteria is found in the array


int[] intArray = new int[10];
int lower = 0;
int upper = intArray.length-1;

//populate the array with random numbers, but ordered and with no duplicates
intArray[0]=int(random(10));
for (int i=1; i<10; i++)
{
  intArray[i] = intArray[i-1]+(int(random(1, 10)));
}
println("Filled array:");
println(intArray);

//add some variables for the search algorithm
int flag = 0;
int criteria;

if (alwaysFind) {
  criteria = intArray[int(random(0, intArray.length))]; //ensure the criteria is some number actually in the array, chosen randomly
} else {
  criteria = int(random(intArray[intArray.length-1]+10)); //pick a random number up to the largest number in the array plus 10
  //so that there's some chance of picking a number in the array, or in the rough range of values contained therein
}

int element = 0;
int count = 0;

// Main search loop
while (flag == 0)
{
  //count the number of iterations it takes to find criteria
  count+=1;

  //Sets the element to search by finding mid point
  element = ((lower+upper)/2);

  //Checks if the mid point is equal to search criteria
  if (intArray[element] == criteria)
  {
    flag = 1;
  }
  //Checks if the criteria is greater than the currently-searched element
  else if (criteria > intArray[element])
  {
    lower = (element+1);
  } else
  {
    upper = (element-1);
  }

  //Checks if the lower value is higher than the upper value.
  if (lower > upper)
  {
    flag = 2;
  }
}

//If no match is found.
if (flag == 2)
{
  println("Did not find criteria "+criteria);
}
//If a match is found.
else
{
  println("Found "+criteria+" at index "+element+" in "+count+" iterations");
}

