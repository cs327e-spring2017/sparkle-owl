set search_path to musicbrainz;

copy musicbrainz.area_alias from
's3://cs327e-final-project-datasets/music-brainz-csv/area_alias.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.artist from
's3://cs327e-final-project-datasets/music-brainz-csv/artist.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.artist_alias from
's3://cs327e-final-project-datasets/music-brainz-csv/artist_alias.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.event from
's3://cs327e-final-project-datasets/music-brainz-csv/event.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.event_type from
's3://cs327e-final-project-datasets/music-brainz-csv/event_type.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.gender from
's3://cs327e-final-project-datasets/music-brainz-csv/gender.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.instrument from
's3://cs327e-final-project-datasets/music-brainz-csv/instrument.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;


copy musicbrainz.instrument_type from
's3://cs327e-final-project-datasets/music-brainz-csv/instrument_type.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.label from
's3://cs327e-final-project-datasets/music-brainz-csv/label.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.label_type from
's3://cs327e-final-project-datasets/music-brainz-csv/label_type.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.language from
's3://cs327e-final-project-datasets/music-brainz-csv/language.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;


copy musicbrainz.place from
's3://cs327e-final-project-datasets/music-brainz-csv/place.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.place_type from
's3://cs327e-final-project-datasets/music-brainz-csv/place_type.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.recording from
's3://cs327e-final-project-datasets/music-brainz-csv/recording.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.release from
's3://cs327e-final-project-datasets/music-brainz-csv/release.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.release_label from
's3://cs327e-final-project-datasets/music-brainz-csv/release_label.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.release_packaging from
's3://cs327e-final-project-datasets/music-brainz-csv/release_packaging.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.release_status from
's3://cs327e-final-project-datasets/music-brainz-csv/release_status.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.series from
's3://cs327e-final-project-datasets/music-brainz-csv/series.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.series_ordering_type from
's3://cs327e-final-project-datasets/music-brainz-csv/series_ordering_type.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.series_type from
's3://cs327e-final-project-datasets/music-brainz-csv/series_type.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy musicbrainz.track from
's3://cs327e-final-project-datasets/music-brainz-csv/track.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;