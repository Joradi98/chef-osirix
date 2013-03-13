Feature: Install OsiriX

  In order to save a lot of time
  As a sysadmin
  I want to automatically install OsiriX on Macs

  @announce
  Scenario: Install OsiriX
    Given no OsiriX files exist
    Given a directory named "/Applications/OsiriX.app" should not exist 
    When I run `install_osirix.sh`
    Then a directory named "/Applications/OsiriX.app" should exist 
    And the file "/Applications/OsiriX.app/Contents/Info.plist" should contain:
      """
      4.1.2
      """
