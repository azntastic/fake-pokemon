
feature 'Enter names' do
  scenario 'Entering names' do
    sign_in_and_play
    expect(page).to have_content 'The names are John, Ryan'
  end
end

feature 'Expects players to fill in names in a form' do
  scenario 'To fill in names' do
    sign_in_and_play
    expect(page).to have_content 'The names are John, Ryan'
  end
end

feature 'displays numbers' do
  scenario 'players have hitpoints' do
    sign_in_and_play
    expect(page).to have_content "John has 20 hp"
  end
end
