def reset_page_state
  $page_state = {
      page: {
          cookie_banner_accepted: false,
          page_name:              nil,
          blog_title:             nil,
          section:                nil
      }
  }
end

def get_page_state
  $page_state
end

def set_page_state(page_data)
  page_state = get_page_state
  page_data.each do |page_data_key, page_data_value|
    page_state.each do |key, value|
      if value.has_key?(page_data_key)
        page_state[key][page_data_key] = page_data_value
      end
    end
  end
end

def format_string(string)
  {
      string:    string.downcase.tr(' ', '_').gsub('_-_', '_'),
      symbolize: string.downcase.tr(' ', '_').to_sym
  }
end
