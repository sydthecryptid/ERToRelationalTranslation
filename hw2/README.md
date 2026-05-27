#Sydnee Boothby CPTS 451
#learning sql, converting ER model

#instructions for running

CREATE DATABASE hw2;
sudo -u postgres psql 

Copy sql file to a temporary:
cp /home/sydnee/cpts451/hw2/hw2.sql /tmp/hw2.sql

\c hw2
\i /folder/folder/hw2.sql (probably use temp folder)
view tables:
\dt

drop tables before rerun:
DROP TABLE IF EXISTS prescription, clinic, drug, drugcompany, patient, doctor, pharmacy, onlinepharmacy, instorepharmacy CASCADE;