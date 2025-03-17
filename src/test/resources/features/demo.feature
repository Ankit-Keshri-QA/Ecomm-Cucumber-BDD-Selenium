"""

Not so Better Scenario

@dummyFeatures
Feature: Add to cart

  Scenario: Navigate to store, add a product to the cart, click view cart link to navigate to the cart and verify the product has been added
    Given I'm on the Home page and I navigate to the Store page by pressing "Store" menu option
    When I click "Add to cart" button next to the product "Blue Shoes"
    Then the "Add to cart" button changes and a tick mark is shown on it
    Then "View cart" link is shown
    When I click on the "View cart" link
    Then I'm navigated to the Cart page
    When I fetch the product name and quantity
    Then the product name is "Blue Shoes"
    And the product quantity is 1\

"""

  # A Better way fo writing the same Scenario - Avoiding Anti-Pattern

Feature: Add To Cart

  Scenario: Add one quantity to the cart
    Given I am on the Store Page
    When I add a "Blue Shoes" to the Cart
    Then I see 1 "Blue Shoes" in the Cart


    # Completed in just 3 Steps , no false steps , no multiple assertions , focus on exact user flow
  # No small UI validations in between the user flow , clear cut user flow validating outcome

  # Behavior is more important than the UI functionality

  # Perform same as Data Driven Testing

  Scenario Outline: Add product to the cart
    Given I am on the Store Page
    When I add a "<product_name>" to the Cart
    Then I see <quantity> "<product_name>" in the Cart

    Examples:
      | product_name | quantity |
      | Blue Shoes   | 1        |
      | Black Jeans  | 3        |
      | White Shirt  | 2        |
      | Wrist Watch  | 1        |

    # Having a Scenario Outline data Driven approach needs be smarlty handled
  # U need to be smart enough to think, do you really need this scenario with 10 Diff product or 2 can be enough






