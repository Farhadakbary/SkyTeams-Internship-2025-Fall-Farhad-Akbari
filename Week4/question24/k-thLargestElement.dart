/*
 Farhad Akbari
 12/7/2025
24. K-th Largest Element
Given an array of numbers and a value k, find the number that would appear in the k-th
position if the array were sorted in descending order.
 */
import 'dart:math';

void quickSort(List<int> nums, int left, int right) {
  if (left >= right) return;

  int pivotIndex = left + Random().nextInt(right - left + 1);
  int pivotValue = nums[pivotIndex];

  int tempPivot = nums[pivotIndex];
  nums[pivotIndex] = nums[right];
  nums[right] = tempPivot;

  int storeIndex = left;

  for (int i = left; i < right; i++) {
    if (nums[i] > pivotValue) {
      int temp = nums[i];
      nums[i] = nums[storeIndex];
      nums[storeIndex] = temp;
      storeIndex++;
    }
  }

  nums[right] = nums[storeIndex];
  nums[storeIndex] = tempPivot;

  quickSort(nums, left, storeIndex - 1);
  quickSort(nums, storeIndex + 1, right);
}

int findKthLargest(List<int> array, int k) {
  if (k <= 0 || k > array.length) {
    throw ArgumentError('$k is out of range');
  }

  quickSort(array, 0, array.length - 1);
  return array[k - 1];
}
