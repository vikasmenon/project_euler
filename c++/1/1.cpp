#include<iostream>
using namespace std;

int sum(int k)
{
  int sum = 0;
  for(int i=1; i<k; i++)
    {
      if ((i%5==0) || (i%3==0))
          sum +=i;
    }
  return sum;
}

//Better math solution

int summation(int k)
{
  return k *(k+1)/2;
}

int awesome(int a)
{
  int k = a - 1;
  return 3*summation(k/3) + 5*summation(k/5) - 15*summation(k/15);
}

int main()
{
  int number;
  std::cout<<"Enter a number: ";
  std::cin>>number;
  std::cout<<std::endl<<"Print sum trivial is: "<<sum(number);
  std::cout<<std::endl<<"Sum awesome is: "<<awesome(number)<<std::endl;
}
