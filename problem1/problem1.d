import std.stdio;
import std.conv;



int main(string[] args){
	if (args.length != 2){
		writefln("Needs a max value!");
		return 1;
	}
	int limit = to!int(args[1]);
	int sum = 0;
	for (int i=0; i<limit; i++){
		if (i % 3 == 0 || i % 5 == 0){
			sum += i;
		}
	}
	writeln(sum);


   return 0;
}
