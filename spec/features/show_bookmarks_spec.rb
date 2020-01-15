feature 'Viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    Bookmark.add(url: "http://www.digg.com")
    Bookmark.add(url: "http://www.bbc.com")
    visit '/bookmarks'
    expect(page).to have_content "http://www.digg.com"
    expect(page).to have_content "http://www.bbc.com"
  end
end
