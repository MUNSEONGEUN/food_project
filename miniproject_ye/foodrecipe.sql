create database FOODIE;
use FOODIE;

drop table if exists MENU;
create table MENU
(ID			INT auto_increment not null primary key,
TIME		INTEGER	null,
CALORIE		INTEGER null,
MENU_NAME	VARCHAR(50) not null,
IMAGE BLOB not null,
CATEGORY_ID INT not null);

select *
from menu;

drop table if exists USER;
create table USER
(ID  INT auto_increment  not null primary key,
PW	 VARCHAR(50)  not null,
USER_NAME  CHAR(50) not null,
EMAIL  VARCHAR(50) not null);

drop table if exists CATEGORY;

create table CATEGORY
(ID INT auto_increment not null primary key,
CATEGORY_NAME VARCHAR(50) not null);

drop table if exists RECIPE;
create table RECIPE
(ID  INT auto_increment	not null primary key,
TITLE  CHAR(50) not null,
USER_ID INT not null,
MENU_ID INT not null);

drop table if exists COMMENT;
create table COMMENT
(ID  INT auto_increment	not null primary key,
CONTEXT  TEXT not null,
USER_ID int not null,
RECIPE_ID int not null,
MENU_ID int not null);

drop table if exists RECIPE_PROCESS;
create table RECIPE_PROCESS
(ID  INT auto_increment	not null primary key,
IMAGE   BLOB not null,
PROCESS  TEXT not null,
USER_ID INT not null,
MENU_ID INT not null);

drop table if exists INGREDIENT;
create table INGREDIENT
(ID  INT auto_increment  not null primary key,
ING_NAME  VARCHAR(50)  not null);

drop table if exists COOK_TOOL;
create table COOK_TOOL
(ID  INT auto_increment  not null primary key,
TOOL_NAME   VARCHAR(50) not null);

drop table if exists RECIPE_INGREDIENT;
create table RECIPE_INGREDIENT
(ID INT  auto_increment	not null primary key,
RECIPE_ID INT not null,
INGREDIENT_ID INT not null);

drop table if exists RECIPE_TOOL;
create table RECIPE_TOOL
(ID INT  auto_increment	not null primary key,
RECIPE_ID INT not null,
COOK_TOOL_ID INT not null);


