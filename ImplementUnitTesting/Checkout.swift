//There is a struct called CheckoutItem defined that represents an item in the menu of the Little Lemon restaurant.
//Also, a function is provided, which takes an array of checkout items and a tax percentage.  It then calculates the total the customer has to pay.
//The function sums up all the prices of the items and adds them to the percentage of the tax provided to get the final payment amount.

struct CheckoutItem {
    let name: String
    let price: Int
}


func calculateTotal(items: [CheckoutItem], localTaxPercent: Int) -> Int {
    let itemsTotal = items.reduce(0) { $0 + $1.price }
    let taxAmount = itemsTotal * localTaxPercent / 100
    return itemsTotal + taxAmount
}
