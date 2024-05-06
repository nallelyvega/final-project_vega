DROP TABLE pacepal.Song;
DROP TABLE pacepal.Playlist;
DROP TABLE pacepal.Tag;


CREATE TABLE pacepal.Song (
    songId INT PRIMARY KEY,
    songName VARCHAR(255),
    songArtist VARCHAR(255),
    songDuration VARCHAR(50),
    songGenre VARCHAR(50),
    tagId Int
);


CREATE TABLE pacepal.Playlist (
    playlistId INT PRIMARY KEY,
    playlistName VARCHAR(255)
);


CREATE TABLE pacepal.Tag (
    tagId INT PRIMARY KEY,
    tagName VARCHAR(50)
);

INSERT INTO pacepal.Song (songId, songName, songArtist, songDuration, songGenre, tagId)
VALUES (1, 'Julia', 'Mtn Joy', '3:10', 'Alternative/Indie', '1'),
       (2, 'Younger Days', 'Mtn Joy', '4:57', 'Alternative/Indie', '1'),
       (3, 'Uptown Girl', 'Billy Joel', '3:17', 'Pop rock/Pop soul', '1'),
       (4, 'Uptown Girl', 'Billy Joel', '3:17', 'Pop rock/Pop soul', '1'),
       (5, 'Miss You', 'Oliver Tree, Robin Schulz', '3:26', 'Pop', '2'),
       (6, 'Sunroof', 'Nicky Youre, dazy, Loud Luxury', '2:53', 'Pop remix', '2'),
       (7, 'Sunroof', 'Nicky Youre, dazy, Loud Luxury', '2:53', 'Pop remix', '2'),
       (8, 'Just Dance', 'Jay Eskar, Heleen', '2:47', 'Pop remix', '2'),
       (9, 'Just Dance', 'Jay Eskar, Heleen', '2:47', 'Pop remix', '2'),
       (10, '6 Foot 7 Foot', 'Lil Wayne', '4:00', 'Rap', '3'),
       (11, 'Enemy', 'Imagine Dragons, JID', '2:53', 'Alertnative/Rock/Pop', '3'),
       (12, 'Elastic', 'Joey Purp', '2:06', 'Pop', '3'),
       (13, 'Turn The Music Up', 'NF', '3:19', 'Pop', '3'),
       (14, 'Lonely Boy', 'The Black Keys', '3:13', 'Alternative/Indie', '4'),
       (15, 'Elphant', 'Tame Impala', '3:31', 'Alternative', '4'),
       (16, 'Feel It Still', 'Portugal', '2:43', 'Funk', '4'),
       (17, 'The Universe', 'Coldplay BTS', '3:48', 'Pop', '4'),
       (18, 'Hes a pirate', 'Dimitri Vegas', '3:31', 'Orchestral', '5'),
       (19, 'The Lighting of the Beacons', 'Howard Shore', '9:02', 'Orchestral', '5'),
       (20, 'Test Driver', 'John Powell', '2:36', 'Orchestral', '5'),
       (21, 'The Three Hunters', 'Howard Shore', '6:12', 'Orchestral', '5'),
       (22, 'The Kiss', 'Trevor Jones', '2:49', 'Orchestral', '5'),
       (23, 'Forces of Attraction', 'Jóhann Jóhannsson', '2:03', 'Orchestral', '5');

INSERT INTO pacepal.Playlist (playlistId, playlistName)
VALUES (1, 'My Playlist 1'),
       (2, 'My Playlist 2'),
       (3, 'My Playlist 3'),
       (4, 'My Playlist 4'),
       (5, 'My Playlist 5');

INSERT INTO pacepal.Tag (tagId, tagName)
VALUES (1, 'Recovery'),
       (2, 'Tempo'),
       (3, 'Speed Run'),
       (4, 'Fartlek'),
       (5, 'Long Run');