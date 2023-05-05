alter table Game
add constraint foreign key(`WinnerId`) references Player(`PlayerId`);
