


feature 'Expects players to fill in names in a form' do
  scenario 'To fill in names' do
    visit '/'
    fill_in(:player_1, with: 'John')
    fill_in(:player_2, with: 'Ryan')
    click_button('Submit')
    expect(page).to have_content 'The names are John, Ryan'
  end
end
