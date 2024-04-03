/*
 9. Palindrome Number (https://leetcode.com/problems/palindrome-number)
 Given an integer x, return true if x is a palindrome, and false otherwise.
 */

class Solution9 {
    func isPalindrome(_ x: Int) -> Bool {
        //convert number to array
        let xArray = Array("\(x)")
        for (index, number) in xArray.enumerated() {
            // compare current element and symmetric
            // if they aren't equal immediately return false, not need to check next symbol
            if number != xArray[xArray.count - 1 - index] {
                return false
            }
            // small optimization
            // if we cross the middle element - it means another half is also checked
            // no need to check again, just return result
            if index > xArray.count / 2 {
                return true
            }
        }
        return true
    }
    
    // alternative solution, shows the power of swift language
    // without algorithms, but humanreadable, easy and compact
    func isPalindromeAlt(_ x: Int) -> Bool { String(String(x).reversed()) == String(x) }
}
