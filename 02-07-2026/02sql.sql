select count(company_id) as duplicate_companies
FROM (SELECT company_id,count(job_id),title,description
FROM job_listings
group by company_id,title,description
having count(job_id)>1) AS sub









