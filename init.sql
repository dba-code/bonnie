create table course(ID integer primary key  AUTOINCREMENT not null, 课程 text not null, 交流群 text not null, 预习资料 text not null, 方向 text not null); 

.mode csv
.import course.csv TempTable

insert into course(课程, 交流群, 预习资料, 方向) select * from TempTable;
