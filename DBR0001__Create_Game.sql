create table Game (
  GameId int unsigned NOT NULL AUTO_INCREMENT,
  StsCde enum('P','C'), /* P = playing, C = complete */
  StartDtm timestamp not null default current_timestamp,
  EndDtm timestamp null,
  WinnerId int unsigned null,
  
  primary key(`GameId`),
  key(`StsCde`),
  key(`WinnerId`)
);
