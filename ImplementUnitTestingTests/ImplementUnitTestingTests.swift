// Step 2: Remove all the initial functions from the unit tests file
// Step 3: Import the application module to be able to test its code - At the very top of the file add the expression @testable followed by the word import.
import XCTest
@testable import ImplementUnitTesting


final class ImplementUnitTestingTests: XCTestCase {
    //Step 4: Create a test function for 20% of tax

    
    //IMPORTANT: Remember that unit test functions must start with the word test to be detected as such by the XCode.
    func test_calcuteTotal_salesTaxTwentyPercent() {

        //Arrange data by creating an array of items and tax percentage constant
        let items = [
           
                 CheckoutItem(name: "Fish and Chips", price: 625),
                 CheckoutItem(name: "Cheeseburger", price: 850),
                 CheckoutItem(name: "Milkshake", price: 325),
                 CheckoutItem(name: "Black Coffee", price: 175),
               ]
        
        
        // After the array, create another constant called taxPercentage and initialize it with 20 as this test is going to verify that the total is correctly calculated for the 20 percent tax.
        let taxPercentage = 20
        
        // After the two test data constants, define another called totalToPay and initialize it by calling the calculateTotal.
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        
        //After calculating the total amount to pay and storing it into the totalToPay constant, call the XCTAssertEqual function
        XCTAssertEqual(totalToPay, 2370) //(1975 + 395 (TAX) = 2370
    }
    
}
//Run the test to check if it succeeds
//Press the left mouse button on the play button in the top left of the XCode until the dropdown menu appears. Select the Test option from the menu to run the tests.
//
// You can run the tests by holding the command button on your keyboard and pressing the U button at the same time as an alternative way of running the tests.
//
//After the tests complete, there will be a green checkmark at the left of the unit tests class as well as the function to indicate that the test has succeeded.
