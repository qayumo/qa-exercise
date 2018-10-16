class ValtechPage
  include DataMagic
  include PageObject
  include RSpec::Matchers

  h1 :page_title, css: 'h1'

  def assert_page_title
    expect(format_string(page_title_element.text)[:symbolize]).to eq(get_page_state[:page][:page_name])
  end
  def assert_elements_displayed
    expect(elements.map(&:check_visible)).to all(be_truthy)
  end

  def scroll_to_section(section)
    execute_script("$('html,body').scrollTop($('#{selector(section)}').offset().top - 150);")
  end

  def selector(section)
    {
        recent_blogs: '.startpage__bloglisting',
        our_locations: '.investors__our-locations'
    }[format_string(section)[:symbolize]]
  end
end
