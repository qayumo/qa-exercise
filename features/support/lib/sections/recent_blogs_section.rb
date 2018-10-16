class RecentBlogsSection < ValtechPage
  RECENT_BLOG_SECTION = '.startpage__bloglisting'.freeze

  section :recent_blogs_section, css: RECENT_BLOG_SECTION
  h2      :recent_blogs_header,  css: "#{RECENT_BLOG_SECTION} h2"
  links   :blog_link,            css: "#{RECENT_BLOG_SECTION} .bloglisting__item__heading a"

  def elements
    [recent_blogs_section_element]
  end

  def assert
    assert_elements_displayed
    expect(recent_blogs_header_element.text).to eq('RECENT BLOGS')
  end
end
