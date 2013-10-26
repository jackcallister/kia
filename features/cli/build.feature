Feature: Building a static site
  In order to serve a site
  I want to render templates

  Scenario: Outside a Kia project
    When I run `kia build`
    Then the output should contain "Hold on mate, you'll need to initialize a Kia project (kia init NAME) to be able to make posts."

  Scenario: Inside a Kia project
    Given I have a kia project named "test_build"
    When I run `kia build`
    Then a file named "public/index.html" should exist
