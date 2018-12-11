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

describe('Add a new definition', {:type => :feature}) do
  it('creates a new definition after user submits form') do
    visit('/output/1')
    fill_in('input_definition', :with => 'Round red fruit.')
    click_button('Submit!')
    expect(page).to have_content('Round red fruit.')
  end
end
