import UIKit

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let mid = (left + right) / 2

            if target < nums[mid] {
                right = mid - 1
            } else if target > nums[mid] {
                left = mid + 1
            } else {
                return mid
            }
        }

        return left
    }
}
