/* Use of the Conditonal Operator */
int a=5, b=10, max;

//The long-form version:
if (a > b) {
  max = a;
} else {
  max = b;
}
println("Long way: Max is "+max);

//Short-form version using conditional operator:
max = (a > b) ? a : b;
println("Short way: Max is "+max);

