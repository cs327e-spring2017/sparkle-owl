set search_path to unified;

--Time: 1147.438 ms
create or replace view v_most_performed_artists as 
select count(a.name), a.name
from mb_artist a
join mb_area_alias p on p.area = a.area
group by a.name
order by count(a.name) desc limit 10;

-- Time: 172.524 ms
create or replace view v_common_place_types as 
select count(t.name), t.name
from mb_place p
join mb_place_type t on p.type = t.id
group by t.name
having t.name != 'Other'
order by count(t.name) desc limit 3;

--Time: 810.811 ms
create or replace view v_instruments_types as 
select t.name, count(i.type)
from mb_instrument_type t
join mb_instrument i on t.id = i.type
group by t.name
order by count(i.type);

--Time: 4191.777 ms
create or replace view v_release_status as 
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

--Time: 168.175 ms
create or replace view v_event_types as 
select t.name, count(e.type)
from mb_event_type t
join mb_event e on t.id = e.type
group by t.name
order by count(e.type);

--Time: 1936.966 ms
create or replace view v_cassette_records as 
select record.name as record, package.name as package
from mb_recording record
join mb_release release on record.id = release.id
join mb_release_packaging package on release.packaging = package.id
where package.id = 8 and record.name like 'C%' limit 10;

--Time: 188.756 ms
create or replace view v_series_order_types as 
select o.name, count(*) as count_order
from mb_series s 
join mb_series_ordering_type o on s.ordering_type = o.id
group by o.name;

--Time: 400.795 ms
create or replace view v_avg_song_duration as 
select avg(duration/60) as avg_min_song
from (
select summary.title, popular.play_count, summary.duration as duration
from ms_songs_summary summary
join ms_songs_popularity popular on summary.song_id = popular.song
order by popular.play_count desc limit 50
) as most_popular_songs;


--Time: 3547.933 ms
create or replace view v_avg_word_count as 
select avg(word_count) as avg_word_count
from (
select summary.title, count(l.word) as word_count 
from ms_songs_summary summary
join ms_lyrics l on summary.track_id = l.track_id
group by summary.title
order by count(l.word) desc limit 100
) as lyrics;

--Time: 16630.104 ms
create or replace view v_song_popular as 
select summary.artist_name, count(summary.artist_name), popular.play_count
from ms_songs_summary summary
join ms_songs_popularity popular on summary.song_id = popular.song
group by summary.artist_name, popular.play_count 
order by random() limit 100;








