#!/bin/sh
wget https://nishidayoshikatsu.github.io/covid19-yamaguchi-opendata/patients_cnt.json -O ./data/patients_cnt.json
wget https://nishidayoshikatsu.github.io/covid19-yamaguchi-opendata/patients.json -O ./data/patients.json
wget https://nishidayoshikatsu.github.io/covid19-yamaguchi-opendata/inspections.json -O ./data/inspections.json
wget https://nishidayoshikatsu.github.io/covid19-yamaguchi-opendata/hospitalizations.json -O ./data/hospitalizations.json
wget https://nishidayoshikatsu.github.io/covid19-yamaguchi-opendata/querents.json -O ./data/querents.json