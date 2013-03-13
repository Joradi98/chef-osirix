Feature: Install OsiriX

  In order to save a lot of time
  As a sysadmin
  I want to automatically install OsiriX via its Chef Cookbook

  @announce
  Scenario: Install OsiriX
    Given I have an install volume
    And I uninstall OsiriX
    When I run my cookbook
    Then OsiriX "4.1.2" should be installed
