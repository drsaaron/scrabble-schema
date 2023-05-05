create table GamePlayer (
  GamePlayerId int unsigned NOT NULL AUTO_INCREMENT,
  GameId int unsigned not null,
  PlayerId int unsigned not null,
  ScoreCnt int not null default 0,
  OrderSeq int unsigned not null, /* in what sequence is this player playing, 1 meaning first, 2 second, etc. */
  
  primary key(`GamePlayerId`),
  key(`GameId`),
  key(`PlayerId`),
  unique key(`GameId`, `PlayerId`),
  unique key(`GameId`, `OrderSeq`), /* ensure for a given game there are not multiple players in the same sequence position */
  
  foreign key(`GameId`) references Game(`GameId`),
  foreign key(`PlayerId`) references Player(`PlayerId`)
);
