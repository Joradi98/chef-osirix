Before do
  @aruba_timeout_seconds = 250 
end

Given(/^I have an install volume$/) do
  @target = '/'
  steps %Q{
    Then a directory named "#{@target}" should exist 
  }
end

Given(/^I uninstall OsiriX$/) do
  steps %Q{
    Given I successfully run `rm -rf "#{@target}Applications/OsiriX.app"`
  }
end

When(/^I run my cookbook$/) do
  steps %Q{
     When I successfully run `bundle exec chef-solo -c /Users/jojo/Developer/cookbooks/solo.rb`
  }
end

Then(/^OsiriX "(.*?)" should be installed$/) do |version|
  steps %Q{
    Then a directory named "#{@target}Applications/OsiriX.app" should exist 
    And the file "#{@target}Applications/OsiriX.app/Contents/Info.plist" should contain:
      """
      4.1.2
      """
  }
end
