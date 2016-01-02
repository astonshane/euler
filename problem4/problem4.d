import std.stdio;
import std.file;
import std.string;
import std.conv;
import std.algorithm;
import std.math;
import std.mathspecial;

string reverse(string str){
   string reversed;
   for (int i=to!int(str.length)-1; i>-1; i--){
      reversed ~= str[i];
   }
   return reversed;
}

bool isPalindrome(string num){
   int mid = to!int(floor(to!float(num.length)/2));
   //writeln(mid);
   string before = num[0..mid];
   string after;
   if (num.length % 2 == 0){
      after = num[mid..num.length];
   }else{
      after = num[mid+1..num.length];
   }
   after = reverse(after);

   //writefln("a  %s  %s", before, after);
   return before == after;
}


int main(string[] args){
   int highest = 0;
	for (int i=999; i>99; i--){
      for (int j=999; j>99; j--){
         string tmp = to!string(i*j);
         //writefln("%d * %d = %d  isPalindrome: %d", i, j, i*j, isPalindrome(tmp));
         if (isPalindrome(tmp)){
            writeln(tmp, "  ", i, "  ", j);
            if (i*j > highest){
               highest = i*j;
            }
         }
      }
    }
    writeln("highest: ", highest);

   return 0;
}
