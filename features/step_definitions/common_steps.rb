Given(/^I am on the Homepage$/) do
  visit(HomePage)
  on(CookieBanner).accept_cookies
  set_page_state({ page_name: :homepage, cookie_banner_accepted: true })
end

When(/^I scroll to the "([^"]*)" section$/) do |section|
  @current_page.scroll_to_section(section)
  set_page_state({ section: format_string(section)[:symbolize] })
end

Then(/^the "([^"]*)" (page|section) is displayed$/) do |location, type|
  on(location.delete(' ') + type.capitalize!, &:assert)
  set_page_state({ page_name: format_string(location)[:symbolize] })
end

When(/^I select the first blog article$/) do
  on(RecentBlogsSection) do |section|
    set_page_state({ blog_title: section.blog_link_elements.first.element.text })
    section.blog_link_elements.first.click
  end
end

When(/^I navigate to the "([^"]*)" page$/) do |page|
  on(NavBar).nav_to_page(page)
end

And(/^I navigate to the Contact Us page$/) do
  step 'I navigate to the "About" page'
  step 'I scroll to the "Our Locations" section'
  on(OurLocationsSection).our_locations_link_element.click
end

Then(/^the blog article page title is displayed$/) do
  on(BlogPage) do |page|
    expect(page.page_title_element.check_exists)
    expect(page.page_title_element.text).to eq(get_page_state[:page][:blog_title])
  end
end

Then(/^I am informed how many Valtech offices there are in total$/) do
  on(ContactPage) { |page| puts "There are #{page.countries_elements.size} Valtech_ offices in total" }
end