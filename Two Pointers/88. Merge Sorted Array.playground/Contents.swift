// sort from the smallest
class SolutionA {
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

// sort from the largest
class SolutionB {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var k = m + n - 1

        while j >= 0 {
            if i >= 0, nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
            }
            k -= 1
        }

    }
}
