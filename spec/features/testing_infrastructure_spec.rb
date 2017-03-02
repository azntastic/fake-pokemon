player_1 = 'Ryan'
player_2 = 'Joe'

feature 'Enter names' do
  scenario 'Entering names' do
    sign_in_and_play(player_1, player_2)
    expect(page).to have_content "The names are #{player_1}, #{player_2}"
  end
end

feature 'Expects players to fill in names in a form' do
  scenario 'To fill in names' do
    sign_in_and_play(player_1, player_2)
    expect(page).to have_content "The names are #{player_1}, #{player_2}"
  end
end

feature 'displays numbers' do
  scenario 'players have hitpoints' do
    sign_in_and_play(player_1, player_2)
    expect(page).to have_content "#{player_1} has 20 hp"
  end
end

feature 'attack' do
  scenario 'player_1 attacks player_2' do
    sign_in_and_play(player_1, player_2)
    click_button('Attack')
    expect(page).to have_content "#{player_2} has been attacked"
  end
end
