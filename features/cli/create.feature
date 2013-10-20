Feature: Creating a new project
  In order to create a Kia project
  I want an easy to use CLI

  Scenario: With a name argument
    When I run "kia create test"
    Then a directory named "test" should exist
    Then a file named "test/index.html.erb" should exist
