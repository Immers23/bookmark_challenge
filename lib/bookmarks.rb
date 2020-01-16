require 'pg'

class Bookmark

  attr_reader :id, :url, :title

  def initialize(id:, url:, title:)
    @id = id
    @title = title
    @url = url
  end

  def self.all
    con = self.connect
    begin
      rs = con.exec "SELECT * FROM bookmarks"
      list = []
      rs.each {|row| list << Bookmark.new(url: row['url'], title: row['title'], id: row['id'])}
    rescue => e
      puts e.message
    ensure
      rs.clear if rs
      con.close if con
    end
    list
  end

  def self.add(url:, title:)
    con = self.connect
    begin
      con.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title")
    rescue => e
      puts e.message
    ensure
      con.close if con
    end
  end

  def self.custom_command(command)
    con = self.connect
    begin
      con.exec(command)
    rescue => e
      puts e.message
    ensure
      con.close if con
    end
  end

  def self.connect
    database = (ENV['ENVIRONMENT'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager')
    PG.connect(:dbname => database, :user => ENV['USER'])
  end

end
