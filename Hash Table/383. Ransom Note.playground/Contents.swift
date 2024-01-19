class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineTable: [Character: Int] = [:]

        for c in magazine {
            magazineTable[c] = magazineTable[c, default: 0] + 1
        }

        for c in ransomNote {
            if magazineTable[c] == nil || magazineTable[c] == 0 {
                return false
            } else {
                magazineTable[c] = magazineTable[c]! - 1
            }
        }

        return true
    }
}
