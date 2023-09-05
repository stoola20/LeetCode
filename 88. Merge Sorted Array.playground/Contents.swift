class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var result = Array(repeating: 0, count: m + n)
        var secondArray = nums2

        for index in 0 ... m + n - 1 {
            if !nums1.isEmpty, !secondArray.isEmpty {
                if nums1.count == n || nums1.first! > secondArray.first! {
                    result[index] = secondArray.removeFirst()
                } else {
                    result[index] = nums1.removeFirst()
                }
            } else if !nums1.isEmpty, secondArray.isEmpty {
                result[index] = nums1.removeFirst()
            }
        }
        nums1 = result
    }
}

let solution = Solution()
var nums1 = [1, 2, 3, 0, 0, 0]
var nums2 = [2, 5, 6]
solution.merge(&nums1, 3, nums2, 3)
print(nums1)
