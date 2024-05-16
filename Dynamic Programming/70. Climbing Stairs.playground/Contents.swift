import UIKit

class Solution {
    func climbStairs(_ n: Int) -> Int {
        var prev2 = 1
        var prev1 = 2
        var tempResult = 0

        if n == 1 { return prev2 }
        if n == 2 { return prev1 }

        for num in 3 ... n {
            tempResult = prev2 + prev1
            prev2 = prev1
            prev1 = tempResult
        }

        return tempResult
    }
}
