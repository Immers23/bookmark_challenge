feature 'Viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    Bookmark.add(url: "http://www.digg.com", title: 'Digg')
    Bookmark.add(url: "http://www.bbc.com", title: 'bbc')
    visit '/bookmarks'
    expect(page).to have_link 'Digg', href: "http://www.digg.com"
    expect(page).to have_link 'bbc', href: "http://www.bbc.com"
  end
end
