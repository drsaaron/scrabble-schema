create table Player (
  PlayerId int unsigned NOT NULL AUTO_INCREMENT,
  NameTxt varchar(100) not null,
  HighGameId int unsigned null,
  
  primary key(`PlayerId`),
  unique key (`NameTxt`),
  key(`HighGameId`),
  
  foreign key (`HighGameId`) references Game(`GameId`)
);
