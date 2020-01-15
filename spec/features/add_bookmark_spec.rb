feature 'Adding new bookmarks' do
  scenario 'User can add a new bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.digg.com')
    click_button('Submit')
    expect(page).to have_content 'http://www.digg.com'
  end
end
