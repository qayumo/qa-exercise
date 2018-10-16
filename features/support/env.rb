$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'support', 'lib'))

require 'rubygems'
require 'data_magic'
require 'cucumber'
require 'page-object'
require 'rspec'
require 'require_all'

require_all 'features/support/lib'

World(PageObject::PageFactory)
