require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  db.execute("SELECT COUNT(*) FROM #{table_name}")

def sorted_artists(db)
  db.execute("SELECT name FROM artists ORDER BY ASC")
  #TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
  db.execute("SELECT name FROM track WHERE name LIKE %love%")
  #TODO: return array of love songs
end

def long_tracks(db, min_length)
  de.execute("SELECT * FROM track were Millisecond > #{min_length*60000}")
  #TODO: return tracks verifying: duration > min_length (minutes)
end
