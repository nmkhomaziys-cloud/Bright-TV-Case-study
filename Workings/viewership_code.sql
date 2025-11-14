SELECT
  *
FROM
  "BRIGHT_TV"."CASE_STUDY_3"."VIEWERSHIP";
  select min(recorddate2)
  from bright_tv.case_study_3.viewership;

--Checking the categoiral data--
select distinct channel2
from bright_tv.case_study_3.viewership;

--Checking the lowest and highest time spent on the channels--
select min(duration2)
from bright_tv.case_study_3.viewership;
select max(duration2)
from bright_tv.case_study_3.viewership;

select userid, channel2,RECORDDATE2,to_time(RECORDDATE2,'YYYY/MM/DD HH24:MI') AS record_time, dayname(to_timestamp(RECORDDATE2,'YYYY/MM/DD HH24:MI'))as day_name, case 
when day_name in('Sun','Sat') then 'Weekend'
else 'weekday'
end as day_classification,
case 
when record_time between '00:00' and '03:59' then 'Midnight'
when record_time between '04:00' and '11:59' then 'Morning'
when record_time between '12:00' and '17:59' then 'Afternoon'
when record_time between '18:00' and '22:00' then 'Evening'
ELSE 'Night'
end as time_classification
from bright_tv.case_study_3.viewership;
