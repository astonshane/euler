import std.stdio;
import std.file;
import std.string;
import std.conv;
import std.algorithm;
import std.math;
import std.mathspecial;

long fac(long num){
   if (num<=1){
      return 1;
   }else{
      return num*fac(num-1);
   }
}

bool isPrime(long p){
   for(long i=p-1; i>1; i--){
      if (p % i == 0){
         return false;
      }
   }
   return true;
}

int main(string[] args){
	if (args.length != 2){
		writefln("Needs an input number");
		return 1;
	}
   long num = to!long(args[1]);
   writeln(num);
   long start = 0;
   if (num % 2 == 0){
       start = 2;
   }else{
       start = 3;
   }

   for (long i=start; i<num; i++){
      if (num % i == 0 && isPrime(num/i)){
         writeln(i, " ", num/i);
         break;
      }
   }
   return 0;
}
