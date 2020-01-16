feature 'Adding new bookmarks' do
  scenario 'User can add a new bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.digg.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')
    expect(page).to have_link('Test Bookmark', href: 'http://www.digg.com')
  end
end
