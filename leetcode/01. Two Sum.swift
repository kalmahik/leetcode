/*
 1. Two Sum (https://leetcode.com/problems/two-sum)
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 You can return the answer in any order.
 */

class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // create a dictionary
        // the key is a difference between target and current number - it is possible second number
        var dictionary = [Int:Int]()
        for (index, number) in nums.enumerated() {
            let diff = target - number
            // if the current diff equals existed diff - we found the second numbur, return index
            if let pair = dictionary[number] {
                return [index, pair]
            } else {
                // otherwise save diff like a key, and index like a value
                dictionary[diff] = index
            }
        }
        return [0, 1]
    }
}
