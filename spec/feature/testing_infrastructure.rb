
feature 'Homepage displays working infrastructure message' do
  scenario 'checks for content' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
