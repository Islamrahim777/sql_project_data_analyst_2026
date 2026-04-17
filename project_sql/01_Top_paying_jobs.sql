/*
 Question: What are the top-paying Data Analyst jobs?
 -Identify the top 10 highest-paying Data Analyst roles that are available remotely.
 -Focuses on job postings with specified salaries (remove nulls).
 -Why? Highlight the top-paying opportunities for Data Analyst, offering insights into the most lucrative roles in the field, which can guide job seekers in their career choices and negotiations.
 */

select
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    company_dim.name as comany_names
from
    job_postings_fact
left join company_dim on job_postings_fact.company_id = company_dim.company_id
where
    job_title = 'Data Analyst' and 
    job_location = 'Anywhere' and 
    salary_year_avg is not null
order by
    salary_year_avg desc
limit
    10

