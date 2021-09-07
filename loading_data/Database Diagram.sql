-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/X4msnA
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "UFO" (
    "datetime" object  NOT NULL ,
    "city" object  NOT NULL ,
    "state" object  NOT NULL ,
    "country" object  NOT NULL ,
    "shape" object  NOT NULL ,
    "latitude" object  NOT NULL ,
    "longitude" float64  NOT NULL 
)

GO

CREATE TABLE "BIRD" (
    "Species" object  NOT NULL ,
    "Common_name" object  NOT NULL ,
    "Scientific_name" object  NOT NULL ,
    "Columbia" object  NOT NULL ,
    "Date" object  NOT NULL ,
    "LAT" object  NOT NULL ,
    "LNG" object  NOT NULL 
)

GO

