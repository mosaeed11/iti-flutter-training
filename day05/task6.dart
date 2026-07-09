void main(){
 print("6. Palindrome");

  print(isPalindrome("radar"));
  print(isPalindrome("level"));
  print(isPalindrome("hello"));

}
bool isPalindrome(String word) {
  String reversedWord = word.split("").reversed.join();

  return word == reversedWord;
}
