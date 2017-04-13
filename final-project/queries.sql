set search_path to musicbrainz;

select count(a.name), a.name
from mb_artist a
join mb_area_alias p on p.area = a.area
group by a.name
order by count(a.name) desc limit 10;

select count(t.name), t.name
from mb_place p
join mb_place_type t on p.type = t.id
group by t.name
having t.name != 'Other'
order by count(t.name) desc limit 3;

select t.name, count(i.type)
from mb_instrument_type t
join mb_instrument i on t.id = i.type
group by t.name
order by count(i.type);

select status, count_occurences, cast(count_occurences as decimal) / (select count(*) from (
mb_recording record
join mb_release release on record.id = release.id
join mb_release_status status on release.status = status.id)) * 100 as percent_of_total_occurences
from (
select status.name as status, count(*) as count_occurences
from mb_recording record
join mb_release release on record.id = release.id
join mb_release_status status on release.status = status.id
group by status.name
) as sub_query
group by status, count_occurences;

select t.name, count(e.type)
from mb_event_type t
join mb_event e on t.id = e.type
group by t.name
order by count(e.type);

select record.name, package.name
from mb_recording record
join mb_release release on record.id = release.id
join mb_release_packaging package on release.packaging = package.id
where package.id = 8;

select o.name, count(*) as count_order
from mb_series s 
join mb_series_ordering_type o on s.ordering_type = o.id
group by o.name;

select avg(duration/60) as avg_min_song
from (
select summary.title, popular.play_count, summary.duration as duration
from ms_songs_summary summary
join ms_songs_popularity popular on summary.song_id = popular.song
order by popular.play_count desc limit 50
) as most_popular_songs;

select avg(word_count) as avg_word_count
from (
select summary.title, count(l.word) as word_count 
from ms_songs_summary summary
join ms_lyrics l on summary.track_id = l.track_id
group by summary.title
order by count(l.word) desc limit 100
) as lyrics;

select summary.artist_name, count(*), popular.play_count
from ms_songs_summary summary
join ms_songs_popularity popular on summary.song_id = popular.song
group by summary.artist_name, popular.play_count
order by count(summary.artist_name) asc limit 10;






