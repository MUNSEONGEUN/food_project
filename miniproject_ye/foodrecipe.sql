create database FOODIE;
use FOODIE;

drop table if exists MENU;
create table MENU
( 	ID			INTEGER 	not null primary KEY autoincrement,
	MENU_NAME	VARCHAR(50) not null,
	CATEGORY_ID INT 		not null,
	CONSTRAINT MENU_CATEGORY_FK FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(ID));

select *
from menu;

drop table if exists USER;
create table USER
(ID  INTEGER not null primary key autoincrement,
PW	 VARCHAR(50)  not null,
USER_NAME  CHAR(50) not null,
EMAIL  VARCHAR(50) not null);

drop table if exists CATEGORY;

create table CATEGORY
(ID INTEGER not null primary key autoincrement,
CATEGORY_NAME VARCHAR(50) not null);

drop table if exists RECIPE;
create table RECIPE
(ID  INTEGER not null primary key autoincrement,
ING_NAME VARCHAR(50) null,
COOK_TOOL VARCHAR(50) null,
TIME INTEGER	null,
IMAGE BLOB 		null,
TITLE  CHAR(50) not null,
USER_ID INT not null,
MENU_ID INT not null,
CONSTRAINT RECIPE_MENU_FK FOREIGN KEY (MENU_ID) REFERENCES MENU(ID),
CONSTRAINT RECIPE_USER_FK FOREIGN KEY (USER_ID) REFERENCES "USER"(ID));

drop table if exists COMMENT;
create table COMMENT
(ID  INTEGER not null primary key autoincrement,
CONTEXT  TEXT not null,
USER_ID int not null,
RECIPE_ID int not null,
CONSTRAINT COMMENT_USER_FK FOREIGN KEY (USER_ID) REFERENCES "USER"(ID),
CONSTRAINT COMMENT_RECIPE_FK FOREIGN KEY (RECIPE_ID) REFERENCES RECIPE(ID));

drop table if exists RECIPE_PROCESS;
create table RECIPE_PROCESS
(ID  INTEGER not null primary key autoincrement,
PROCESS  TEXT not null,
RECIPE_ID int not null,
CONSTRAINT RECIPE_PROCESS_RECIPE_FK FOREIGN KEY (RECIPE_ID) REFERENCES RECIPE(ID));
