feature 'Viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.youtube.com"
  end
end
