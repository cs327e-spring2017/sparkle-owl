create table unified.mb_area_alias as select id,area, cname as name
from musicbrainz.area_alias;

create table unified.mb_artist as select gid,id,area, cname as name, gender
from musicbrainz.artist;

create table unified.mb_artist_alias as select id, cname as name, artist
from musicbrainz.artist_alias; 

create table unified.mb_gender as select gid,id,name 
from musicbrainz.gender;

create table unified.mb_label as select gid,id,cname as name, area
from musicbrainz.label;

create table unified.mb_label_type as select gid,id, name
from musicbrainz.label_type;

create table unified.mb_place as select gid,id, cname as name, type
from musicbrainz.place;

create table unified.mb_place_type as select gid,id, name
from musicbrainz.place_type;

create table unified.mb_language as select id, cname as name, frequency
from musicbrainz.language; 

create table unified.mb_recording as select gid,id, cname as name
from musicbrainz.recording;

create table unified.mb_release_status as select gid,id, name
from musicbrainz.release_status;

create table unified.mb_release as select gid,id, status, packaging, language
from musicbrainz.release;

create table unified.mb_release_packaging as select gid,id, name
from musicbrainz.release_packaging;

create table unified.mb_release_label as select id, label, catalog_number
from musicbrainz.release_label;

create table unified.mb_event as select gid, id, cname as name, type
from musicbrainz.event;

create table unified.mb_event_type as select  id, name
from musicbrainz.event_type;

create table unified.mb_instrument as select gid, id, name, type
from musicbrainz.instrument;

create table unified.mb_instrument_type as select id, name
from musicbrainz.instrument_type;

create table unified.mb_series as select gid, id, ordering_type
from musicbrainz.series;

create table unified.mb_series_ordering_type as select gid, id, name
from musicbrainz.series_ordering_type;

create table unified.mb_series_type as select gid, id, name
from musicbrainz.series_type;

create table unified.mb_track as select gid, id, name
from musicbrainz.track;

create table unified.ms_artists as select artist_id
from millionsong.artists ;

create table unified.ms_artist_term as select artist_id, term
from millionsong.artist_term;

create table unified.ms_artist_mbtag as select artist_id, mbtag
from millionsong.artist_mbtag;

create table unified.ms_songs_summary as select track_id, ctitle as title,artist_id,cartist_name as artist_name,year,duration,song_id
from millionsong.songs_summary;

create table unified.ms_songs_popularity as select csong as song,play_count
from millionsong.songs_popularity;

create table unified.ms_tracks as select tid
from millionsong.tracks;

create table unified.ms_lyrics as select track_id, word, count
from millionsong.lyrics;

create table unified.ms_words as select words
from millionsong.words;



