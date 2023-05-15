alter table GamePlayerRound
add RoundCnt int unsigned not null default 1;

alter table GamePlayerRound
add unique key UniqueGamePlayerRound (GamePlayerId, RoundCnt);
