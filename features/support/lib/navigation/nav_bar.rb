class NavBar < ValtechPage
  label :nav_hamburger, css: '.hamburger'
  links :nav_items,     css: '.navigation__menu__item a'

  def nav_to_page(page)
    nav_hamburger_element.click
    nav_items_elements.select { |o| o.click if o.text.eql? page.upcase }
    set_page_state({ page_name: format_string(page)[:symbolize] })
  end
end
