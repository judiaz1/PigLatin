public void setup() 
{
String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}


public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord

{
  
  if(sWord.length() == 0){
  return "";
}
if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  
  else if(findFirstVowel(sWord) == 0){
   String str = sWord;
   str = str + "way";
   return str;
  }else if(sWord.substring(0,2).equals("qu")){
  String str = sWord;
  str = str.substring(2) + "quay";
  return str;
  }else if(findFirstVowel(sWord) != -1){
    String str = sWord;
    str = sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
    return str;
  }
  else
  {
    return "ERROR!";
  }
}


public int findFirstVowel(String word){
  char [] vowels = {'a', 'e','i','o','u'};
  int loc = -1;
  for(int i = 0; i < word.length(); i++){
    for(int j = 0; j < 5; j++){
      if(word.charAt(i) == vowels[j]){
        loc = i;
        return loc;
      }
    }
  }
  return loc;
}
