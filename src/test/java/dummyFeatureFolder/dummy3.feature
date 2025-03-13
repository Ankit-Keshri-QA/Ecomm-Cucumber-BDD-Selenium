# Product Search and Filter (Scenario + Data Table)

Feature: Product Search and Filter

  Scenario: User filters products based on category
    Given the following products are available in the store
      | Product Name  | Category   | Price |
      | iPhone 14     | Mobile     | 999   |
      | MacBook Pro   | Laptop     | 1999  |
      | Samsung S23   | Mobile     | 899   |
    When the user filters products by "Mobile" category
    Then the displayed products should be:
      | Product Name  |
      | iPhone 14     |
      | Samsung S23   |