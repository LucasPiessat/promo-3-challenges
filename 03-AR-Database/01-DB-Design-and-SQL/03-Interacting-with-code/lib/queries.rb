require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  array = db.execute("SELECT COUNT(*) FROM #{table_name}")
  return array[0][0]

end

def sorted_artists(db)
  db.execute("SELECT name FROM Artist ORDER BY Name ASC").flatten
  #TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
  db.execute("SELECT name FROM track WHERE Name LIKE '%love%'").flatten
  #TODO: return array of love songs
end

def long_tracks(db, min_length)
  db.execute("SELECT Name FROM Track WHERE Milliseconds > #{min_length*60000}").flatten
  #TODO: return tracks verifying: duration > min_length (minutes)
end
