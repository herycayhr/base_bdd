# frozen_string_literal: true

require_relative 'base'

class Landing < Base
  set_url ''
  element :item_input, '#item_text'
  element :save_button, '#button_submit'
  element :item_list, '#todo_list_id', :visible => false
  element :clear_button, '#clear_button'
  element :list_items, '.list-group-item'
  
end