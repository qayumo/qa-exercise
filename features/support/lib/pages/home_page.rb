class HomePage < ValtechPage
  page_section :recent_blogs_section, RecentBlogsSection, css: '.startpage__bloglisting'

  page_url('https://www.valtech.co.uk')
end
