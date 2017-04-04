DROP SCHEMA IF EXISTS musicbrainz;
Create SCHEMA musicbrainz;

set search_path to musicbrainz;

create table Area_Alias(
   id integer,
   area integer,
   name varchar(1000),
   locale varchar(1000),
   edits_pending varchar(1000),
   last_updated varchar(1000),
   type varchar(10),
   sort_name varchar(1000),
   begin_date_year varchar(1000),
   begin_date_month varchar(1000),
   begin_date_day varchar(1000),
   end_date_year varchar(1000),
   end_date_month varchar(1000),
   end_date_day varchar(1000),
   primary_for_locale varchar(1000),
   ended varchar(1000)
);
create table Artist(
   id integer,
   gid varchar(1000),
   name varchar(1000),
   sort_name varchar(1000),
   begin_date_year varchar(1000),
   begin_date_month varchar(1000),
   begin_date_day varchar(1000),
   end_date_year varchar(1000),
   end_date_month varchar(1000),
   end_date_day varchar(1000),
   type integer,
   area varchar(1000),
   gender varchar(1000),
   comment varchar(1000),
   edits_pending varchar(1000),
   last_updated varchar(1000),
   ended varchar(1000),
   begin_area varchar(1000),
   end_area varchar(1000)
);
create table Artist_Alias(
   id integer,
   artist integer,
   name varchar(1000),
   locale varchar(1000),
   edits_pending varchar(1000),
   last_updated varchar(1000),
   type varchar(1000),
   sort_name varchar(1000),
   begin_date_year varchar(1000),
   begin_date_month varchar(1000),
   begin_date_day varchar(1000),
   end_date_year varchar(1000),
   end_date_month varchar(1000),
   end_date_day varchar(1000),
   primary_for_locale varchar(1000),
   ended varchar(1000)
);
create table Gender(
   id integer,
   name varchar(1000),
   parent varchar(1000),
   child_order varchar(50),
   description varchar(1000),
   gid varchar(1000)
);
create table Label(
   id integer,
   gid varchar(1000),
   name varchar(1000),
   begin_date_year varchar(1000),
   begin_date_month varchar(1000),
   begin_date_day varchar(1000),
   end_date_year varchar(1000),
   end_date_month varchar(1000),
   end_date_day varchar(1000),
   label_code varchar(1000),
   type varchar(1000),
   area integer,
   comment varchar(1000),
   edits_pending varchar(1000),
   last_updated varchar(1000),
   ended varchar(1000)
);
create table Place(
   id integer,
   gid varchar(1000),
   name varchar(1000),
   type varchar(1000),
   address varchar(1000),
   area integer,
   coordinates varchar(1000),
   comment varchar(1000),
   edits_pending varchar(1000),
   last_updated varchar(1000),
   begin_date_year varchar(1000),
   begin_date_month varchar(1000),
   begin_date_day varchar(1000),
   end_date_year varchar(1000),
   end_date_month varchar(1000),
   end_date_day varchar(1000),
   ended varchar(1000)
);
create table Place_Type(
   id integer,
   name varchar(1000),
   parent varchar(1000),
   child_order integer,
   description varchar(1000),
   gid varchar(1000)
);
create table Label_Type(
   id integer,
   name varchar(1000),
   parent integer,
   child_order varchar(1000),
   description varchar(1000),
   gid varchar(1000)
);
create table Release_Status(
   id integer,
   name varchar(1000),
   parent varchar(1000),
   child_order integer,
   description varchar(1000),
   gid varchar(1000)
);
create table Release_Label(
   id integer,
   release integer,
   label integer,
   catalog_number varchar(1000),
   last_updated varchar(1000)
);
create table Language(
   id integer,
   iso_code_2t varchar(1000),
   iso_code_2b varchar(1000),
   iso_code_1 varchar(1000),
   name varchar(1000),
   frequency integer,
   iso_code_3 varchar(1000)
);
create table Recording(
   id integer,
   gid varchar(1000),
   name varchar(3000),
   artist_credit integer,
   length integer,
   comment varchar(1000),
   edits_pending varchar(1000),
   last_updated varchar(1000),
   video varchar(1000)
);
create table Release(
   id integer,
   gid varchar(1000),
   name varchar(1000),
   artist_credit integer,
   release_group integer,
   status varchar(1000),
   packaging varchar(1000),
   language integer,
   script integer,
   barcode varchar(200),
   comment varchar(1000),
   edits_pending varchar(1000),
   quality varchar(1000),
   last_updated varchar(1000)
);
create table Release_Packaging(
   id integer,
   name varchar(1000),
   parent varchar(1000),
   child_order varchar(1000),
   description varchar(1000),
   gid varchar(1000)
);
create table Event(
   id integer,
   gid varchar(1000),
   name varchar(1000),
   begin_date_year varchar(1000),
   begin_date_month varchar(1000),
   begin_date_day varchar(1000),
   end_date_year integer,
   end_date_month integer,
   end_date_day integer,
   time varchar(1000),
   type varchar(1000),
   cancelled varchar(1000),
   setlist varchar(20000),
   comment varchar(1000),
   edits_pending integer,
   last_updated varchar(1000),
   ended varchar(1000)
);
create table Event_Type(
   id integer,
   name varchar(1000),
   parent varchar(1000),
   child_order integer,
   description varchar(1000),
   gid varchar(1000)
);

create table Instrument(
   id integer,
   gid varchar(1000),
   name varchar(1000),
   type integer,
   edits_pending varchar(1000),
   last_updated varchar(1000),
   comment varchar(1000),
   description varchar(1000)
);
create table Instrument_Type(
   id integer,
   name varchar(1000),
   parent varchar(1000),
   child_order integer,
   description varchar(1000),
   gid varchar(1000)
);
create table Series(
   id integer,
   gid varchar(1000),
   name varchar(1000),
   comment varchar(1000),
   type varchar(1000),
   ordering_attribute integer,
   ordering_type varchar(1000),
   edits_pending varchar(1000),
   last_updated varchar(1000)
);

create table Series_Ordering_Type(
   id integer,
   name varchar(1000),
   parent varchar(1000),
   child_order varchar(1000),
   description varchar(1000),
   gid varchar(1000)
);
create table Series_Type(
   id varchar(1000),
   name varchar(1000),
   entity_type varchar(1000),
   parent varchar(1000),
   child_order integer,
   description varchar(1000),
   gid varchar(1000)
);
create table Track(
   id integer,
   gid varchar(1000),
   recording integer,
   medium integer,
   position integer,
   number varchar(100),
   name varchar(3000),
   artist_credit integer,
   length integer,
   edits_pending integer,
   last_updated varchar(1000),
   is_data_track varchar(1000)
);
