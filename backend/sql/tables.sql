CREATE TABLE songs (
  id varchar(50) PRIMARY KEY NOT NULL,
  spotify_id varchar(50),
  name varchar(100),

  artist_name varchar(100),
  artist_id varchar(50),
  artist_spotify_id varchar(50),

  genre varchar(50),
  album_name varchar(100),
  album_id varchar(50),

  countries_popular_in varchar(2)[],

  views int,
  profanity_toxicity float,
  profanity_profanity float,
  profanity_identity_attack float,
  profanity_sexually_explicit float,

  lyrics text,
  description_summary text,
  description_content text,

  image_url varchar(100),
  spotify_uri varchar(50)
);

CREATE TABLE artists (
  id varchar(50) PRIMARY KEY NOT NULL,
  name varchar(50),
  genre varchar(50),

  top_tracks_ids varchar(50)[],
  top_tracks_names varchar(100)[],

  similar_artists varchar(50)[],
  countries_popular_in varchar(2)[],
  
  -- stats 
  views int,
  followers int,
  popularity int,
  profanity_toxicity float,
  profanity_profanity float,
  profanity_identity_attack float,
  profanity_sexually_explicit float,

  -- media
  image_url varchar(250),
  spotify_uri varchar(50),
  bio_summary text,
  bio_content text
);

CREATE TABLE countries (
  country_code varchar(5) PRIMARY KEY NOT NULL,
  name_common varchar(50),
  name_official varchar(200),

  region varchar(10),
  subregion varchar(50),
  continents varchar(50)[],
  languages varchar(50)[],

  profanity_toxicity float,
  profanity_identity_attack float,
  profanity_profanity float,
  profanity_sexually_explicit float,

  top_tracks_ids varchar(50)[],
  top_tracks_names varchar(200)[],
  top_artists_ids varchar(50)[],
  top_artists_names varchar(200)[],
  
  flags_svg varchar(100)
);
