Feature: Todo List

  Background: User visit Heryca's todo list landing page
    Given I visit the landing page

  Scenario: User would see empty todo list and input
    Then I should see no items in todo list
    And item input is empty

  Scenario: User introduces an item and click add item
    Given The user inputs "Algun valor"
    And clicks on add item button
    Then User should see list is not empty
    And has an item row called "Algun Valor"

  Scenario: User introduces an item and click add item and then a second one
    Given The user inputs "Algun valor1"
    And clicks on add item button
    And The user inputs "Algun valor2"
    And clicks on add item button
    Then User should see list is not empty
    And has an item row called "Algun Valor1"
    And has an item row called "Algun Valor2"

  Scenario: User introduces an item and click clear items
    Given The user inputs "Algun valor"
    And clicks on add item button
    Then User should see list is not empty
    And has an item row called "Algun Valor"
    And click on clear item button

Scenario: User introduces three items and edit first item
    Given The user add "valor1" to the list
    And The user add "valor2" to the list
    And The user add "valor3" to the list
    And The user edit first item using edit button
    Then User should see on the input "valor1"
    And The user add "valor1edit" to the list
    And has an item row called "Valor1edit"

Scenario: User introduces three items and edit last item
    Given The user add "valor1" to the list
    And The user add "valor2" to the list
    And The user add "valor3" to the list
    And The user edit last item using edit button
    Then User should see on the input "valor3"
    And The user add "valor3edit" to the list
    And has an item row called "Valor3edit"

Scenario: User introduces three items and edit middle item
    Given The user add "valor1" to the list
    And The user add "valor2" to the list
    And The user add "valor3" to the list
    And The user edit middle item using edit button
    Then User should see on the input "valor2"
    And The user add "valor2edit" to the list
    And has an item row called "Valor2edit"

Scenario: User introduces three items and click clear first item
    Given The user add "valor1" to the list
    And The user add "valor2" to the list
    And The user add "valor3" to the list
    And The user deletes first item using trash button
    Then User should see list is not empty
    And has an item row called "Valor2"
    And has an item row called "Valor3"

Scenario: User introduces three items and click clear middle item
    Given The user add "valor1" to the list
    And The user add "valor2" to the list
    And The user add "valor3" to the list
    And The user deletes middle item using trash button
    Then User should see list is not empty
    And has an item row called "Valor1"
    And has an item row called "Valor3"

Scenario: User introduces three items and click clear last item
    Given The user add "valor1" to the list
    And The user add "valor2" to the list
    And The user add "valor3" to the list
    And The user deletes last item using trash button
    Then User should see list is not empty
    And has an item row called "Valor1"
    And has an item row called "Valor2"

Scenario: User introduces three items and click clear all items one by one
    Given The user add "valor1" to the list
    And The user add "valor2" to the list
    And The user add "valor3" to the list
    And The user deletes first item using trash button
    And The user deletes first item using trash button
    And The user deletes first item using trash button
    Then User should see list is empty

Scenario: User try to introduces one empty item
    Given The user add "" to the list
    Then User should see list is empty