require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Add a new term and definition', {:type => :feature}) do
  it('creates a new word after user submits term and definition') do
    visit('/')
    fill_in('input_term', :with => 'Apple')
    fill_in('input_definition', :with => 'Round red fruit.')
    click_button('Submit!')
    expect(page).to have_content('Apple')
  end
end
