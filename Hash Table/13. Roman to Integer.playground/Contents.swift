import UIKit

class Solution {
    func romanToInt(_ s: String) -> Int {
        var sum = 0
        var dict: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        let sArray = Array(s)
        for i in 0 ..< sArray.count {
            if i + 1 < sArray.count, dict[sArray[i]]! < dict[sArray[i + 1]]! {
                sum -= dict[sArray[i]]!
            } else {
                sum += dict[sArray[i]]!
            }
        }

        return sum
    }
}
