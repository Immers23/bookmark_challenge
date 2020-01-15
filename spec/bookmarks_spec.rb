require 'bookmarks'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      expect(Bookmark.all).to eq(["http://www.google.com", "http://www.youtube.com"])
    end
    # it 'rescues error' do
    #   allow(con).to receive(:exec).and_raise('Error')
    #
    #   expect(STDOUT).to receive(:puts).with('Error')
    #   Bookmark.all
    # end
  end

  describe '.add' do
    it 'adds new bookmark' do
      p Bookmark.add('www.yahoo.com')
      expect(Bookmark.all).to include 'www.yahoo.com'
    end
  end
  
end
