import UIKit

class Solution {
    func countSymmetricIntegers(_ low: Int, _ high: Int) -> Int {
        var targets = 0

        for num in low ... high {
            if num < 10 || num == 10000 {
                continue
            }

            let thousand = num / 1000
            let hundred = (num / 100) % 10
            let ten = (num / 10) % 10
            let int = num % 10

            if thousand != 0,
                (thousand + hundred) == (ten + int) {
                targets += 1
            } else if (thousand == 0 && hundred == 0 && ten != 0),
                ten == int {
                targets += 1
            }
        }

        return targets
    }
}
