import std.stdio;
import std.conv;

int main(string[] args){
	int sum = 2;
	int[2] fibonacci = [1,2];

	while (fibonacci[1] < 4000000){
		int new_fib = fibonacci[0] + fibonacci[1];
		if (new_fib % 2 == 0){
			sum += new_fib;
		}
		fibonacci[0] = fibonacci[1];
		fibonacci[1] = new_fib;
	}
	writeln("sum: ", sum);


   return 0;
}
