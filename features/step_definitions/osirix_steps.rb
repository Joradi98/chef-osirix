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
    Given a file named "solo.rb" with:
      """
      cookbook_path File.expand_path('../../..', Dir.pwd)
      """
    When I successfully run `bundle exec chef-solo -c solo.rb -o 'recipe[osirix]'`
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
