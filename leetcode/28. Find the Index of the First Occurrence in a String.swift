/*
 Given two strings needle and haystack,
 return the index of the first occurrence of needle in haystack,
 or -1 if needle is not part of haystack.
 */

import Foundation

class Solution28 {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        // range(of:) it is the main part
        let start = NSString(string: haystack).range(of: needle).lowerBound
        // Returns {NSNotFound, 0}
        return start == NSNotFound ? -1 : start
    }
}
