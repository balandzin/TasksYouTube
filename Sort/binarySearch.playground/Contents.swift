import UIKit

// найти бинарным поиском индекс заданного элемента массива
let array = [3, 4, 5, 6, 7, 8, 9, 13, 17, 22, 27]

func recursiveBinarySearch(nums: [Int], target: Int) -> Int? {
  func _recursiveBinarySearch(nums: [Int], target: Int, start: Int, end: Int) -> Int? {
    // Базовый кейс. Не забудьте о равенстве!
    guard start <= end else {
      return nil
    }
    
    // Выбрать элемент в середине
    let midIndex = (start+end)/2
    let mid = nums[midIndex]
    
    if mid == target {
      // второй базовый кейс: элемент найден!
      return midIndex
    } else if target < mid {
      // просмотр нижней части массива
      return _recursiveBinarySearch(nums: nums, target: target, start: start, end: midIndex - 1)
    } else {
      // просмотр верхней части массива
      return _recursiveBinarySearch(nums: nums, target: target, start: midIndex + 1, end: end)
    }
  }
  
  return _recursiveBinarySearch(nums: nums, target: target, start: 0, end: nums.count - 1)
}

print(recursiveBinarySearch(nums: array, target: 6) ?? -1)
