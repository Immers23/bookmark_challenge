require 'pg'
require 'sinatra/base'
require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  # Routes
  # --------------------

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new_bookmark'
  end

  post '/bookmarks' do
    p params
    Bookmark.add(url: params['url'])
    redirect '/bookmarks'
    # url = params['url']
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    # redirect '/bookmarks'
  end

  #--------------------

  run! if __FILE__ == $0
end
