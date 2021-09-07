-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/X4msnA
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "UFO_Data" (
    "datetime" int  NOT NULL ,
    "city" varchar(30)  NOT NULL ,
    "state" varchar(30)  NOT NULL ,
    "country" varchar(30)  NOT NULL ,
    "shape" varchar(10)  NOT NULL ,
    "latitude" int  NOT NULL ,
    "longitude" int  NOT NULL 
)

GO

CREATE TABLE "Bird_Data" (
    "Species" varchar(30)  NOT NULL ,
    "Common_name" varchar(30)  NOT NULL ,
    "Scientific_name" varchar(60)  NOT NULL ,
    "location_Name" varchar(60)  NOT NULL ,
    "Date" int  NOT NULL ,
    "LAT" int  NOT NULL ,
    "LNG" int  NOT NULL 
)

GO

ALTER TABLE "UFO_Data" ADD CONSTRAINT "fk_UFO_Data_datetime" FOREIGN KEY("datetime")
REFERENCES "Bird_Data" ("Date")
GO

