import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0 ..< nums.count {
            for j in (i + 1) ..< nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        
        return []
    }
}

let solution = Solution()
let array1 = [2, 3, 4, 5]
let array2 = [2, 7, 11, 15]
let array3 = [3, 3]

solution.twoSum(array1, 6)
solution.twoSum(array2, 9)
solution.twoSum(array3, 6)
