class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let reminder = k % nums.count
        if k == 0 || reminder == 0 || nums.count <= 1 {
            return
        }
        nums = Array(nums[(nums.count - reminder) ... (nums.count - 1)]) + Array(nums[0 ..< nums.count - reminder])
    }
}
