require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle verification path', {:type => :feature}) do
  it('processes the user entry and alerts the user if their input does not correspond to a triangle') do
    visit('/')
    fill_in('side0', :with => 7)
    fill_in('side1', :with => 4)
    fill_in('side2', :with => 2)
    click_button('Go')
    expect(page).to have_content("This is not a triangle")
  end

  it('processes the user entry and returns the type of triangle that corresponds to the side lengths') do
    visit('/')
    fill_in('side0', :with => 7)
    fill_in('side1', :with => 7)
    fill_in('side2', :with => 7)
    click_button('Go')
    expect(page).to have_content("This is an equilateral triangle")
  end
end
