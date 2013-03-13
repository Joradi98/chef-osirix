Before do
  @aruba_timeout_seconds = 150 
end

Given(/^no OsiriX files exist$/) do
  steps %Q{
    Given I successfully run `rm -rf /Applications/OsiriX.app`
  }
  Dir.glob('/tmp/Osiri*').each { |f| File.delete(f) }
end

