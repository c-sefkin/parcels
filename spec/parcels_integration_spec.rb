require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the parcels path', {:type => :feature}) do
  it('processes the user entry and returns shipping costs') do
    visit ('/')
    fill_in('distance', :with => '60')
    fill_in('volume', :with => '1,1,1')
    click_button('Send')
    expect(page).to have_content('61')
  end
end
