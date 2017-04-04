copy millionsong.words from
's3://cs327e-final-project-datasets/million-songs-csv/words.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy millionsong.artist_mbtag from
's3://cs327e-final-project-datasets/million-songs-csv/artist_mbtag.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy millionsong.artists from
's3://cs327e-final-project-datasets/million-songs-csv/artists.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;


copy millionsong.artist_term from
's3://cs327e-final-project-datasets/million-songs-csv/artist_term.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;


copy millionsong.lyrics from
's3://cs327e-final-project-datasets/million-songs-csv/lyrics.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy millionsong.songs_popularity from
's3://cs327e-final-project-datasets/million-songs-csv/songs_popularity.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy millionsong.songs_summary from
's3://cs327e-final-project-datasets/million-songs-csv/songs_summary.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;


copy millionsong.tracks from
's3://cs327e-final-project-datasets/million-songs-csv/tracks.csv'
iam_role 'arn:aws:iam::255104695819:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;