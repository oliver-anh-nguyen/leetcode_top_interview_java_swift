// https://leetcode.com/problems/add-two-numbers/
public ListNode addTwoNumbers(ListNode l1, ListNode l2) {
    ListNode fake = new ListNode(0);
    ListNode temp = fake;
    
    int carry = 0;
    while (l1 != null || l2 !=null) {
        int sum = carry;
        
        if (l1 != null) {
            sum += l1.val;
            l1 = l1.next;
        }
        
        if (l2 != null) {
            sum += l2.val;
            l2 = l2.next;
        }
        
        if (sum > 9) {
            carry = 1;
            sum = sum - 10;
        } else {
            carry = 0;
        }
        
        ListNode l = new ListNode(sum);
        temp.next = l;
        temp = temp.next;
    }
    
    if (carry > 0) {
        ListNode s = new ListNode(carry);
        temp.next = s;
    }
    
    return fake.next;
}

