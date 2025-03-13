# Checkout Process with Discounts (Scenario Outline + Data Table)

Feature: Checkout Process with Discount Application

  Scenario Outline: Apply discount during checkout
    Given the cart contains the following items:
      | Product Name  | Price |
      | "<product>"   | <price> |
    When the user applies a discount code "<discount_code>"
    Then the final payable amount should be "<final_price>"

    Examples:
      | product     | price | discount_code | final_price |
      | iPhone 14   | 999   | FESTIVE10     | 899         |
      | MacBook Pro | 1999  | NEWYEAR15     | 1699        |
      | AirPods Pro | 249   | INVALIDCODE   | 249         |