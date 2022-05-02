func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result:[Int] = []
    var dict = [Int: Int]()
    
    for (index, num) in nums.enumerated() {
        let complement = target - num
        if (dict.keys.contains(complement)) {
            result.append(index)
            result.append(dict[complement]!)
        }
        dict[num] = index
    }
    return result
}
