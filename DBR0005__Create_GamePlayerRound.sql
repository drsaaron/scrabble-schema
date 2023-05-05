create table GamePlayerRound (
  GamePlayerRoundId int unsigned NOT NULL AUTO_INCREMENT,
  GamePlayerId int unsigned not null,
  ScoreCnt int not null default 0,

  SvnLtrInd enum('Y','N') not null default 'N', /* was this a seven letter? */
  NoteTxt varchar(255) null,

  RowCreateDtm timestamp not null default current_timestamp,

  primary key(`GamePlayerRoundId`),
  key(`GamePlayerId`),

  foreign key (`GamePlayerId`) references GamePlayer(`GamePlayerId`)
);
