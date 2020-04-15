func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    let list1 = ListNode(0)
    let list2 = ListNode(0)
    var lower: ListNode? = list1
    var larger: ListNode? = list2
    var head = head
    
    while head != nil {
        if head!.val < x {
            lower?.next = head
            lower = head
        } else {
            larger?.next = head
            larger = head
        }
        head = head?.next
    }
    
    larger?.next = nil
    lower?.next = list2.next
    return list1.next
}
