//Let's take advantage of the fact that decl sets CC

#define SIZE 128

// int up(int a[]){
// 	int i, sum=0;
// 	for(i=0; i<SIZE; i++){
// 		sum += a[i];
// 	}
// 	return sum;
// }

int down(int a[]){
	int i, sum=a[0];
	for(i=SIZE-1; i!=0; i--){
		sum+=a[i];
	}
	return sum;
}