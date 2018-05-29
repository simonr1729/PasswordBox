*! master_api.do 04sep2017 Christopher Boyer
	*edit Simon Robertson 14th Sept 2017

/* This file demonstrates how to download SurveyCTO data directly from
   Stata using the SurveyCTO API. The code will query your server and 
   download a single WIDE csv with name and location specified. Note 
   that you must have a Premium Subscription to SurveyCTO and have 
   cURL installed (http://www.confusedbycode.com/curl/). */

/* ---------------
    Define Locals
   --------------- */

clear all
   
global username "srobertson@poverty-action.org"   // enter your SurveyCTO username
local server ""     // enter the name of your SurveyCTO server
local formid ""     // enter the Form ID of the form you want to download
local csv ""        // enter a path and filename for the CSV file downloaded

/* ---------------
    Download Data
   --------------- */
   
cd "X:\Box\SRobertson_Personal\Stata Codes\Dialogue Box" // Enter location of where dlg is saved
db run_api

do "1_import.do"
do "2_clean.do"
do "3_check.do"
