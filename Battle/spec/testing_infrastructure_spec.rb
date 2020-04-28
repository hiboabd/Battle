require 'spec_helper'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
  scenario 'expect players to input name and see on screen' do
    visit('/form')

    fill_in :player_1_name, with: 'Hibo'
    fill_in :player_2_name, with: 'Lizzie'

    click_button "Submit"

    expect(page).to have_content("Hibo vs. Lizzie")
  end
end
