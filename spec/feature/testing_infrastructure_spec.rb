
feature 'Homepage displays working infrastructure message' do
  scenario 'checks for content' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Expects players to fill in names in a form' do
  scenario 'To fill in names' do
    visit ('/')
    fill_in(:player_1, with: 'John')
    fill_in(:player_2, with: 'Ryan')
    click_button('Submit')
    expage(page).to have_content 'Ryan, John'
  end
end
