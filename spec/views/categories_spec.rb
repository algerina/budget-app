require 'rails_helper'
require 'capybara/rspec'

describe 'User category page', type: :feature do
  before :each do
    login_user
  end

  it 'I can see  Categories of user' do
    visit '/categories'
    expect(page).to have_content('Categories')
  end

  it 'The category page should have div anchor tags to take you to the transaction page of that category' do
    visit '/categories'
    expect(page).to have_css('div')
  end

  it 'The category page should have button to add new category' do
    visit '/categories'
    expect(page).to have_content('Add new Category')
  end

  it 'I can see the username and password inputs and the "Log in" button.' do
    visit '/categories/new'
    expect(page).to have_css("input[id$='category_name']")
    expect(page).to have_css("select[id$='category_icon']")
    expect(page).to have_content('Add')
  end
end
