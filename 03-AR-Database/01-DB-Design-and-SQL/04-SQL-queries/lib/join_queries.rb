require 'sqlite3'

DATABASE_PATH = "lib/db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)

  db.execute("SELECT Track.Name, Album.Title, Artist.Name
      FROM Track
      JOIN Album ON Track.AlbumId = Album.AlbumId
      JOIN Artist ON Artist.ArtistId = Album.ArtistID")
end


def stats_on(db, category)

  number = db.execute("SELECT count(Track.TrackId), avg(Track.Milliseconds)
    FROM Track
    JOIN Genre ON Track.GenreId = Genre.GenreId
    WHERE Genre.Name like '%#{category}%'")

  hash = {}

  hash[:category] = category
  hash[:number_of_songs] = number[0][0]
  hash[:avg_length] = number [0][1]

  return hash

end



def top_five_rock_artists(db)
  #TOD O: return list of top 5 rock artists
  db.execute("SELECT Artist.Name, Count(Track.TrackId) AS nb_track
              FROM Artist
              JOIN Album ON Artist.ArtistId = Album.ArtistId
              JOIN Track ON Track.AlbumId = Album.ArtistId
              JOIN Genre ON Genre.GenreId = Track.GenreId
              WHERE Genre.Name like 'rock'
              GROUP BY Artist.Name
              ORDER BY nb_track DESC LIMIT 0,5")
end
