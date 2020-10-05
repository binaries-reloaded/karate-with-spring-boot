Feature: To test hello controller
  Scenario: Get hello world
    Given url 'http://localhost:8080'
    When method GET
    Then match $ == ' world'

  Scenario: Get hello with name
    Given url 'http://localhost:8080/by-name'
    And params {name: 'Binaries Reloaded'}
    When method GET
    Then match $ == 'hello Binaries Reloaded'

  Scenario: To save the data
    Given url 'http://localhost:8080'
    And request {name: 'test'}
    When method POST
    Then status 201

