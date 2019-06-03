/* Counts the number of rows in the album and artist tables */
select count(*) from Track;
select count(*) from Artist;

/* Display all data from the Album table, and limit it to the first 5 titles from the table */
select * from Album limit 5;

/* Join the artist and album tables using the ArtistID to match them. */
select Title, Name from Album
join Artist on Album.ArtistId = Artist.ArtistId
limit 5;

/* Create new Genre */
insert into Genre (Name) values('Trad');
/* Find the ID of the last insert row */
SELECT LAST_INSERT_ID();
/* Query the ID to return the Genre we created */
select * from Genre where GenreId = 26;

/* Changes genre from 'Trad' to 'Traditional' */
update Genre set Name = 'Traditional' where Name = 'Trad';
/* Query the Genre table to show the change */
select * from Genre;

/* Delete the Traditional Genre */
delete from Genre where Name = 'Traditional';