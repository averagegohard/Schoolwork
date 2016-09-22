import java.util.ArrayList;
import java.util.Scanner;
import java.util.concurrent.ArrayBlockingQueue;

public class HashTester {

 static final int SIZE = 10;
 String[] HashedStrings= new String[SIZE];

 public static void main(String[] args) {
  // TODO Auto-generated method stub

  HashTester HT = new HashTester();
  Scanner scanner = new Scanner(System.in);
     String StoHash;
  String collisionList = "";
     int collisionCount = 0;
     
    
     String S[] = {"A","B","C","ABC","DEF","GHI","JKL","MNO","QRS","TUV","XYZ","now","I","know","my","ABCs"};
  
  for(int i=0;i<SIZE;i++)  //q&d, prompting the user for 10 Strings to hash.
  {
//   System.out.println("Please enter a string to hash.");
//   StoHash = scanner.next(); 
   StoHash = S[i];
   if (HT.HashedStrings[HT.SimpleHash1(StoHash)] != null)
   {
    collisionList = collisionList + HT.HashedStrings[HT.SimpleHash1(StoHash)] + " ";
    collisionCount++;
   }
   HT.HashedStrings[HT.SimpleHash1(StoHash)] = StoHash;
   
  }
 System.out.println();
  for(int i=0;i<SIZE;i++)
  {
   System.out.println("hashed valued at i " + i + "=" + HT.HashedStrings[i]);
  }
  
  System.out.println();
  System.out.println("There were " + collisionCount + " collisions.");
  System.out.println("These strings were lost: " + collisionList );
  ///////////////////////////////////
   System.out.println("TESTS");
   String testKey1 = "ABC";
   String testKey2 = "AFUGISD";
//   if(HT.containsKey(testKey1)){
//     System.out.println(testKey1 + " is in the hash table.");
//   }
//   else{
//     System.out.println(testKey1 + " is NOT in the hash table.");
//   }
//   if(HT.containsKey(testKey2)){
//     System.out.println(testKey2 + " is in the hash table.");
//   }
//   else{
//     System.out.println(testKey2 + " is NOT in the hash table.");
//   }
//     public void resize()
   System.out.println("getEmptyBucketCount(): " + HT.getEmptyBucketCount());
   System.out.println("getLongestConsecutiveEmptyBuckets(): " + HT.getLongestConsecutiveEmptyBuckets());
   System.out.println("getLargestClusterSize(): " + HT.getLargestClusterSize());
   HT.purgeLLHashTable();
   System.out.println("purgeLLHashTable() (All values should be null)");
   for(int i=0;i<SIZE;i++)
   {
   System.out.println("hashed valued at i " + i + "=" + HT.HashedStrings[i]);
   }
 }
 
 public int SimpleHash1(String S)
 {
  int hashKey=0;
  System.out.println("The length of " + S +" is " + S.length());
  for(int i=0;i<S.length()-1;i++)
   hashKey = hashKey + (int) S.charAt(i);
   
 return hashKey %SIZE ;  //don't forget to mod by the size of array, 
          //otherwise we may go out of bounds!
 }
 
 public boolean containsKey(String key){
   for(int i=SimpleHash1(key); i<SIZE; i++){
     if(HashedStrings[i].equals(key)){
       return true;
     }
   }
   return false;
 }
 
// public void resize(){
//   String[] temp = new String[SIZE * 2];
//   for(int i=0; i<SIZE; i++){
//     if(HashedStrings[i] != null){
//       temp[i] = HashedStrings[i];
//     }
//   }
// }
 
 public int getEmptyBucketCount(){
   int count = 0;
   for (int i=0; i<SIZE; i++){
     if(HashedStrings[i] == null){
       count++;
     }
   }
   return count;
 }
 public int getLongestConsecutiveEmptyBuckets(){
   int max = 0;
   for(int i = 0; i<SIZE; i++){
     if(HashedStrings[i] == null){
       int temp = consecutiveEmptyBuckets(i);
       if(temp > max){
         max = temp;
       }
       i += temp;
     }
   }
   return max;
 }
public int consecutiveEmptyBuckets(int index){
  if(index<SIZE && HashedStrings[index] == null){
    return 1+consecutiveEmptyBuckets(index + 1);
  }
  return 0;
}

 public int getLargestClusterSize(){
   int max = 0;
   for(int i = 0; i<SIZE; i++){
     if(HashedStrings[i] == null){
       int temp = consecutiveNonEmptyBuckets(i);
       if(temp > max){
         max = temp;
       }
       i += temp;
     }
   }
   return max;
 }
 public int consecutiveNonEmptyBuckets(int index){
  if(index<SIZE && HashedStrings[index] != null){
    return 1+consecutiveNonEmptyBuckets(index + 1);
  }
  return 0;
 }

 public void purgeLLHashTable(){
   for(int i = 0; i<SIZE; i++){
     HashedStrings[i] = null;
   }
 }


}