func lengthOfLongestSubstring(_ s: String) -> Int {
    var res = 0
    var startIndex = 0
    
    var charMap = [Character: Int]()
    
    for (index, char) in s.enumerated() {
        if let foundIndex = charMap[char] {
            startIndex = max(startIndex, foundIndex + 1)
        }
        res = max(res, index - startIndex + 1)
        charMap[char] = index
    }
    return res
}

// s = "pwwkew"

// index = 0, char = p
// res = max (0, 0 - 0 + 1) = 1
// charMap = [p:0]

// index = 1, char = w
// res = max (1, 1 - 0 + 1) = 2
// charMap = [p:0, w:1]

// index = 2, char = w
// foundIndex = 1 => startIndex = max (0, 2) = 2
// res = max (2, 2 - 2 + 1) = 2
// charMap = [p:0, w:2]

// index = 3, char = k
// startIndex = 2
// res = max (2, 3 - 2 + 1) = 2
// charMap = [p:0, w:2, k:3]

// index = 4, char = e
// startIndex = 2
// res = max (2, 4 - 2 + 1) = 4
// charMap = [p:0, w:2, k:3, e:4]

// index = 5, char = w
// foundIndex = 2 => startIndex = max (2, 3) = 3
// res = max (3, 5 - 3 + 1) = 3
// charMap = [p:0, w:5, k:3, e:4]


// s = "abcabcbb"

// index = 0, char = a
// res = max (0, 0 - 0 + 1) = 1
// charMap = [a:0]

// index = 1, char = b
// res = max (1, 1 - 0 + 1) = 2
// charMap = [a:0, b:1]

// index = 2, char = c
// res = max (2, 2- 0 + 1) = 3
// charMap = [a:0, b:1, c:2]

// index = 3, char = a
// foundIndex = 0 => startIndex = max (0, 1) = 1
// res = max (3, 3 - 1 + 1) = 3
// charMap = [a:3, b:1, c:2]

// index = 4, char = b
// foundIndex = 1 => startIndex = max (1, 2) = 2
// res = max (3, 4 - 2 + 1) = 3
// charMap = [a:3, b:4, c:2]

// index = 5, char = c
// foundIndex = 2 => startIndex = max (2, 3) = 3
// res = max (3, 5 - 3 + 1) = 3
// charMap = [a:3, b:4, c:5]

// index = 6, char = b
// foundIndex = 4 => startIndex = max (3, 5) = 5
// res = max (3, 6 - 5 + 1) = 3
// charMap = [a:3, b:6, c:5]

// index = 7, char = b
// foundIndex = 6 => startIndex = max (5, 6) = 6
// res = max (3, 7 - 6 + 1) = 3
// charMap = [a:3, b:7, c:5]
