DROP SCHEMA IF EXISTS millionsong;
Create SCHEMA millionsong;

set search_path to millionsong;

create table Artists(
   artist_id varchar(200)
);
create table Artist_Mbtag(
   artist_id varchar(200),
   mbtag varchar(200)
);
create table Artist_Term(
   artist_id varchar(200),
   term varchar(200)
);
create table Songs_Summary(
   track_id varchar(200),
   title varchar(1000),
   song_id varchar(200),
   release varchar(200),
   artist_id varchar(200),
   artist_mbid varchar(200),
   artist_name varchar(1000),
   duration varchar(200),
   artist_familiarity varchar(1000),
   artist_hotttnesss varchar(1000),
   year integer
);
create table Tracks(
   tid varchar(200)
);
create table Lyrics(
   track_id varchar(200),
   mxm_tid integer,
   word varchar(200),
   count integer,
   is_test integer
);
create table Words(
   word varchar(200)
);
create table Songs_Popularity(
   userid varchar(200),
   song varchar(200),
   play_count integer
);
