require 'watir'

Before do
  @browser = Watir::Browser.new :chrome
  reset_page_state
end

After do
  @browser.close
end
