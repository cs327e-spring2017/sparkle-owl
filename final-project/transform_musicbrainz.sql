set search_path to musicbrainz;

select max(get_utf8_bytes(name)) from area_alias;
alter table area_alias add column cname varchar(104);
update area_alias set cname = name;
update area_alias set cname = initcap(btrim(split_part(cname,'-' , 1)));

select max(get_utf8_bytes(name)) from artist;
alter table artist add column cname varchar(311);
update artist set cname = name;
update artist set cname = initcap((split_part(cname,'-' , 1)));

select max(get_utf8_bytes(name)) from artist_alias;
alter table artist_alias add column cname varchar(209);
update artist_alias set cname = name;
update artist_alias set cname = initcap(btrim(split_part(cname,'-' , 1)));


select max(get_utf8_bytes(name)) from place;
alter table place add column cname varchar(138);
update place set cname = name;
update place set cname = initcap(btrim(split_part(cname,'-' , 1)));


select max(get_utf8_bytes(name)) from label;
alter table label add column cname varchar(118);
update label set cname = name;
update label set cname = initcap(btrim(split_part(cname,'-' , 1)));

select max(get_utf8_bytes(name)) from language;
alter table language add column cname varchar(43);
update language set cname = name;
update language set cname = initcap(btrim(split_part(cname,'-' , 1)));

select max(get_utf8_bytes(name)) from recording;
alter table recording add column cname varchar(3000);
update recording set cname = name;
update recording set cname = initcap(btrim(split_part(cname,'-' , 1)));
update recording set cname = btrim(split_part(cname,'(' , 1));

select max(get_utf8_bytes(name)) from event;
alter table event add column cname varchar(139);
update event set cname = name;
update event set cname = initcap(btrim(split_part(cname,'-' , 1)));
update event set cname = btrim(split_part(cname,'(' , 1));


select max(get_utf8_bytes(name)) from track;
alter table track add column cname varchar(2000);
update track set cname = name;
update track set cname = initcap(btrim(split_part(cname,'-' , 1)));
update track set cname = btrim(split_part(cname,'(' , 1));
