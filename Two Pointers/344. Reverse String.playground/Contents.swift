import UIKit

class Solution {
    func reverseString(_ s: inout [Character]) {
        for index in 0 ..< s.count {
            let c = s.removeLast()
            s.insert(c, at: index)
        }
    }
}
