import Foundation

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        maxCrossingSubArray(nums, start: 0, end: nums.count - 1)
    }

    func maxCrossingSubArray(_ nums: [Int], start: Int, end: Int) -> Int {
        if start == end {
            return nums[start]
        }

        let mid = (start + end) / 2
        var leftSum = Int.min
        var sum = 0
        for index in (start...mid).reversed() {
            sum += nums[index]
            leftSum = max(sum, leftSum)
        }

        var rightSum = Int.min
        sum = 0
        for index in (mid + 1)...end {
            sum += nums[index]
            rightSum = max(sum, rightSum)
        }

        let leftMaxValue = maxCrossingSubArray(nums, start: start, end: mid)
        let rightMaxValue = maxCrossingSubArray(nums, start: mid+1, end: end)

        return max(max(leftMaxValue, rightMaxValue), leftSum + rightSum)
    }
}
