-- Ports
SELECT * from ports;

-- Border Crossing
SELECT * from border_crossing;

-- Demographics
SELECT * from demographics;

-- Count of Total Ports
SELECT count(port_code) from ports;

-- Count of Total Ports in each State/US Soil
SELECT state, count(state) from ports GROUP BY state;

-- What type of border entries are there?
SELECT DISTINCT measure from border_crossing;

-- Count of each measure grouped by date
SELECT date, measure, sum(value)
from border_crossing
GROUP BY measure, date
ORDER BY date DESC

-- Total population of each state by year
SELECT state, year, hc01_vc38 from demographics;