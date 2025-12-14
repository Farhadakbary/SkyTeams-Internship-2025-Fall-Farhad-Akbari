/*
 Farhad Akbari
 12/1/2025
6. Binary Search Algorithm
Description: Implement binary search in a sorted array.
Example:
Input: [1, 3, 5, 7, 9], Target = 7
Output: Found at index 3
 */
int binarySearch(List<int> array, int target){
  int left=0;
  int right= array.length-1;
  while(left <= right){
    int mid= left + ((right - left) ~/ 2);
    if(array[mid]== target){
      return 1;
    }else if(array[mid] < target){
    left = mid +1;
    }else{
      right =mid -1;
    }
  }
  return -1;
}
