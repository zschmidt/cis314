#include <stdio.h>
// #define f() ((counter++))




long counter = 0;

// inline long f(){
// 	return counter++;
// }

long f(){
	return counter++;
}


long func1(){
	return f() + f() + f() + f();
}



int main(){
	func1();
	printf("Counter is %ld\n", counter);
}