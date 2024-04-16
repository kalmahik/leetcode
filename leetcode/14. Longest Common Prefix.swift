/*
 14. Longest Common Prefix (https://leetcode.com/problems/longest-common-prefix)
 Write a function to find the longest common prefix string amongst an array of strings.
 If there is no common prefix, return an empty string "".
 */

import Foundation

class Solution14 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        // let's deside that the first word is common (prefix)
        guard var prefix = strs.first else { return "" }
        // we will reduce the prefix, until it will be empty (no common), or we will find the common prefix
        while !prefix.isEmpty {
            // it is counter
            var matches = 0
            for word in strs {
                // for each word check if it's common
                // if yes, increase the counter
                if word.hasPrefix(prefix) {
                    matches += 1
                } else {
                    // otherwise remove one character from the common prefix
                    prefix = String(prefix.dropLast())
                }
            }
            // if each word has the prefix, it means the job is done, exit from loop
            if matches == strs.count {
                break
            }
        }
        return prefix
    }
    
    // Alternative solution, without using matches variable
    func longestCommonPrefixAlt(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        var common = strs[0]
        for ch in strs {
            while !ch.hasPrefix(common) {
                common = String(common.dropLast())
                print(common)
            }
        }
        return common
    }
}

