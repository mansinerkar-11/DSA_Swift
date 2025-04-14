class Solution {
    func minimumDifference(_ nums: [Int], _ k: Int) -> Int {
        if k == 1 { return 0 }
        
        let sortedNums = nums.sorted()
        var minDiff = Int.max
        
        for i in 0...(sortedNums.count - k) {
            let diff = sortedNums[i + k - 1] - sortedNums[i]
            minDiff = min(minDiff, diff)
        }
        
        return minDiff
    }
}
