import Foundation

var array: [Bool] = [false, false, true, true]

class VersionControl {
    func isBadVersion(_ n: Int) -> Bool {
        return array[n - 1]
    }
}

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var start = 1
        var end = n

        while start < end {
            let mid = (start + end) / 2
            if isBadVersion(mid) {
                end = mid
            } else {
                start = mid + 1
            }
        }
        return start
    }
}

let solution = Solution()

if solution.firstBadVersion(array.count) == 3 {
    print("Correct")
} else {
    print("Try again")
}
