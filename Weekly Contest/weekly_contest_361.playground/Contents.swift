import UIKit

class SolutionA {
    func countSymmetricIntegers(_ low: Int, _ high: Int) -> Int {
        var targets = 0

        for num in low ... high {
            let string = String(num).map { String($0) }
            let n = string.count

            if n % 2 != 0 {
                continue
            }

            var sum1 = 0
            var sum2 = 0

            for i in 0 ... (n / 2 - 1) {
                sum1 += Int(string[i])!
                sum2 += Int(string[n - 1 - i])!
            }

            if sum1 == sum2 {
                targets += 1
            }
        }

        return targets
    }
}

class SolutionB {
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
