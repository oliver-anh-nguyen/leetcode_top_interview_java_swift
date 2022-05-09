// https://leetcode.com/problems/median-of-two-sorted-arrays/
func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let mergedArr = (nums1 + nums2).sorted()
    let middle = mergedArr.count / 2
    if mergedArr.count % 2 == 0 {
        return (Double(mergedArr[middle]) + Double(mergedArr[middle - 1])) / 2
    } else {
        return Double(mergedArr[middle])
    }
}
