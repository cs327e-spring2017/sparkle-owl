set search_path to millionsong;

select max(get_utf8_bytes(title)) from songs_summary;
alter table songs_summary add column ctitle varchar(285);
update songs_summary set ctitle= title;
update songs_summary set ctitle = initcap(btrim(split_part(ctitle,'-' , 1)));
update songs_summary set ctitle = initcap(btrim(split_part(ctitle,'.' , 1)));

select max(get_utf8_bytes(artist_name)) from songs_summary;
alter table songs_summary add column cartist_name varchar(373);
update songs_summary set cartist_name = artist_name;
update songs_summary set cartist_name = initcap((split_part(cartist_name,'-' , 1)));
update songs_summary set cartist_name = btrim(split_part(cartist_name,'.' , 1));

select max(get_utf8_bytes(song)) from songs_popularity;
alter table songs_popularity add column csong varchar(1000);
update songs_popularity set csong = song;
update songs_popularity set csong = initcap((split_part(csong,'-' , 1)));
update songs_popularity set csong = btrim(split_part(csong,'.' , 1));