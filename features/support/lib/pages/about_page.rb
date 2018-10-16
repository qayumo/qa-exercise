class AboutPage < ValtechPage
  page_section :our_locations_section, OurLocationsSection, css: '.investors__our-locations'

  def assert
    assert_page_title
  end
end
