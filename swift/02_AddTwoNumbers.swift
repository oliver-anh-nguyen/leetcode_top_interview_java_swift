func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var l1: ListNode? = l1
    var l2: ListNode? = l2
    
    var fake:ListNode?  = ListNode(0)
    var temp = fake
    var carry = 0
    
    while (l1 != nil || l2 != nil) {
        var sum = carry
        
        if (l1 != nil) {
            sum += l1?.val ?? 0
            l1 = l1?.next
        }
        
        if (l2 != nil) {
            sum += l2?.val ?? 0
            l2 = l2?.next
        }
        
        if (sum > 9) {
            carry = 1
            sum = sum - 10
        } else {
            carry = 0
        }
        
        var newNode: ListNode? = ListNode(sum)
        temp?.next = newNode
        temp = temp?.next
    }
    
    if (carry > 0) {
        var l: ListNode? = ListNode(carry)
        temp?.next = l
    }
    
    return fake?.next
}
