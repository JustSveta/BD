CREATE TABLE Collections
( 
	id_collection        integer  NOT NULL,
	name_collection      varchar(20) NOT NULL,
	year_collection      smallint NOT NULL,
	CONSTRAINT PK_Collections PRIMARY KEY(id_collection)
);

CREATE TABLE Albums
( 
	id_album             integer  NOT NULL,
	name_album           varchar(30)NOT NULL,
	year_album           smallint NOT NULL,
	CONSTRAINT PK_Albums PRIMARY KEY(id_album)
);

CREATE TABLE Tracks
( 
	id_track             integer  NOT NULL,
	name_track           varchar(20) NOT NULL,
	id_album             integer  NOT NULL,
	duration             smallint NOT NULL,
	CONSTRAINT PK_Tracks PRIMARY KEY(id_track),
	CONSTRAINT FK_1 FOREIGN KEY(id_album) REFERENCES Albums(id_album)
);

CREATE TABLE Track_collrctions
( 
	id_collection        integer  NOT NULL,
	id_track             integer  NOT NULL,
	CONSTRAINT PK_Track_collrctions PRIMARY KEY(id_collection,id_track),
	CONSTRAINT FK_2 FOREIGN KEY(id_collection) REFERENCES Collections(id_collection),
	CONSTRAINT FK_3 FOREIGN KEY(id_track) REFERENCES Tracks(id_track)
);

CREATE TABLE Performers
( 
	id_performer         integer  NOT NULL,
	name_performer       varchar(30) NOT NULL,
	CONSTRAINT PK_Performers PRIMARY KEY(id_performer)
);


CREATE TABLE Performers_album
( 
	id_performer         integer  NOT NULL,
	id_album             integer  NOT NULL,
	CONSTRAINT PK_Performers_album PRIMARY KEY(id_performer,id_album),
	CONSTRAINT FK_4 FOREIGN KEY(id_performer) REFERENCES Performers(id_performer),
	CONSTRAINT FK_5 FOREIGN KEY(id_album) REFERENCES Albums(id_album)
);

CREATE TABLE Genres
( 
	id_genre             smallint  NOT NULL,
	genre                varchar(30) NOT NULL,
	CONSTRAINT PK_Genres PRIMARY KEY(id_genre)
);

CREATE TABLE Genres_performers
( 
	id_genre             smallint  NOT NULL,
	id_performer         integer  NOT NULL,
	CONSTRAINT PK_Genres_performers PRIMARY KEY(id_genre,id_performer),
	CONSTRAINT FK_6 FOREIGN KEY(id_genre) REFERENCES Genres(id_genre),
	CONSTRAINT FK_7 FOREIGN KEY(id_performer) REFERENCES Performers(id_performer)
);



