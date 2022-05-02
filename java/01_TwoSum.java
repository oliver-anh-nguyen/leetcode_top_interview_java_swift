public int[] twoSum(int[] nums, int target) {
    HashMap<Integer, Integer> arr = new HashMap<>();
    int[] result = new int[2];
    for (int i=0; i < nums.length; i++) {
        int numberFind = target - nums[i];
        if (arr.containsKey(numberFind)) {
            result[0] = arr.get(numberFind);
            result[1] = i;
            break;
        } else {
            arr.put(nums[i], i);
        }
    }
    return result;
}

