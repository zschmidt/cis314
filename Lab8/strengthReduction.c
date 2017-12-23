
//OLD
void f(){
	int x = w % 8;
	int y = pow(x, 2.0);
	int z = y * 33;
	for (int i = 0; i < MAX; i++)  {
		h = 14 * i; 
		printf("%d", h);
	}
}

//NEW
void g(){
	x = w & 7;             /* bit-and cheaper than remainder */  
	y = x * x;             /* mult is cheaper than power-of */
	z = (y << 5) + y;      /* shift & add cheaper than mult */
	for (i = h = 0; i < MAX; i++) {
		printf("%d", h);
		h += 14;           /* addition cheaper than mult */
	}
}


// int f(int x){
// 	//return x % 8;
// 	// ==
// 	return x & 7;
// }

