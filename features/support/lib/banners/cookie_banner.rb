class CookieBanner < ValtechPage
  link :accept_cookies_link, css: '#CybotCookiebotDialogBodyButtonAccept'

  def accept_cookies
    accept_cookies_link_element.click if accept_cookies_link_element.exists?
  end
end
