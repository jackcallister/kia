Feature: Creating a new post
  In order to create new posts
  I want an easy to use CLI

  Scenario: Outside a Kia project
    When I run `kia post test`
    Then the output should contain "Hold on mate, you'll need to initialize a Kia project (kia init NAME) to be able to make posts."

  Scenario: Inside a Kia project
    Given I have a kia project named "test"
    When I run `kia post test`
    Then a file named "source/posts/test.html.md" should exist
