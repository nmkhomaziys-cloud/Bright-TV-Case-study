SELECT
  *
FROM
  "BRIGHT_TV"."CASE_STUDY_3"."USERPROFILES";
  --- Checking the youngest and oldest age
  select min(age)
  from bright_tv.case_study_3.userprofiles;
select max(age)
from bright_tv.case_study_3.userprofiles;
------------
select USERID ,age, case 
when age between '1'and '3' then 'toddlers'
when age between '3'and '12' then 'Children'
when age between'13' and '19' then 'Teenager'
when age between '20'and '39' then 'Young adult'
when age between '40' and '74' then 'Adult'
else 'senior citzens'
end as age_group,
---Categorial data--
name,surname,email, gender,race,province, SOCIAL_MEDIA_HANDLE,
CASE 
WHEN SOCIAL_MEDIA_HANDLE in ('None') tHEN 'Email adverstisment'
else 'social media advertisement'
end as adverstiment 

from bright_tv.case_study_3.userprofiles
GROUP BY ALL;

SELECT SOCIAL_MEDIA_HANDLE,CASE 
WHEN SOCIAL_MEDIA_HANDLE in ('None') tHEN 'Email adverstisment'
else 'social media advertisement'
end as adverstiment
from bright_tv.case_study_3.userprofiles;
