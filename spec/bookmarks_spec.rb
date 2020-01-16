require 'bookmarks'

describe Bookmark do
  describe '.all' do
   it 'returns a list of bookmarks' do
   connection = PG.connect(dbname: 'bookmark_manager_test')

   # Add the test data
   bookmark = Bookmark.add(url: "http://www.makersacademy.com", title: "Makers Academy")
   Bookmark.add(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
   Bookmark.add(url: "http://www.google.com", title: "Google")

   bookmarks = Bookmark.all
   puts "bookmarks"
   p bookmarks
   expect(bookmarks.length).to eq 5
   expect(bookmarks.first).to be_a Bookmark
   # expect(bookmarks.first.id).to eq
   expect(bookmarks.last.title).to eq 'Google'
   expect(bookmarks.last.url).to eq "http://www.google.com"
  end
end
  # describe '.all' do
  #   it 'returns all bookmarks' do
  #     expect(Bookmark.all).to eq(["http://www.google.com", "http://www.youtube.com"])
  #   end
  #   # it 'rescues error' do
  #   #   allow(con).to receive(:exec).and_raise('Error')
  #   #
  #   #   expect(STDOUT).to receive(:puts).with('Error')
  #   #   Bookmark.all
  #   # end
  # end

  describe '.add' do
    it 'adds new bookmark' do
      bookmark = Bookmark.add(url: 'http://www.testbookmark.com', title: 'Test Bookmark').first
      expect(bookmark['url']).to eq 'http://www.testbookmark.com'
      expect(bookmark['title']).to eq 'Test Bookmark'
    end
  end

end
