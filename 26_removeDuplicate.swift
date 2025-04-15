class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }

        var result = 1
        for i in 1..<nums.count {
            if nums[i] != nums[result - 1] {
                nums[result] = nums[i]
                result += 1
            }
        }
        return result
    }
}
