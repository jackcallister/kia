Feature: Creating a new post
  In order to create new posts
  I want an easy to use CLI

  Scenario: New post with no site
    When I run "kia post test"
    Then the output should contain "Hold on mate, you'll need to initialize a Kia project (kia init NAME) to be able to make posts."
