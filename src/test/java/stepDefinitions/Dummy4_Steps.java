package stepDefinitions;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.List;
import java.util.Map;

public class Dummy4_Steps {
    private String productName;
    private double price;
    private String discountCode;
    private double finalPrice;

    @Given("the cart contains the following items:")
    public void the_cart_contains_the_following_items(DataTable dataTable) {
        // Convert DataTable into a List of Maps (since we are using Scenario Outline)
        List<Map<String, String>> items = dataTable.asMaps(String.class, String.class);

        for (Map<String, String> item : items) {
            productName = item.get("Product Name");
            price = Double.parseDouble(item.get("Price"));
            System.out.println("Added to cart: " + productName + " with price: $" + price);
        }
    }

    @When("the user applies a discount code {string}")
    public void the_user_applies_a_discount_code(String discountCode) {
        this.discountCode = discountCode;
        System.out.println("Applying discount code: " + discountCode);
    }

    @Then("the final payable amount should be {string}")
    public void the_final_payable_amount_should_be(String expectedFinalPrice) {
        finalPrice = calculateFinalPrice(price, discountCode);
        double expectedPrice = Double.parseDouble(expectedFinalPrice);

        System.out.println("Expected Final Price: $" + expectedPrice);
        System.out.println("Actual Final Price: $" + finalPrice);

    }

    private double calculateFinalPrice(double price, String discountCode) {
        switch (discountCode) {
            case "FESTIVE10":
                return price * 0.90; // 10% Discount
            case "NEWYEAR15":
                return price * 0.85; // 15% Discount
            default:
                return price; // No discount applied
        }
    }
}
