/*
 1. Two Sum (https://leetcode.com/problems/two-sum/description)
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 You can return the answer in any order.
*/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int:Int]()
        for (index, number) in nums.enumerated() {
            let diff = target - number
            if let pair = dictionary[number] {
                return [index, pair]
            } else {
                dictionary[diff] = index
            }
        }
        return [0, 1]
    }
}
