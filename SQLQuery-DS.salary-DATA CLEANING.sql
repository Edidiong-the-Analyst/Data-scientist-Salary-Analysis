Select *
From [Research]..ds_salaries

--DATA CLEANING 
------------------------------------------------------------------------------------------------------------------------------------------	
	--Renaming and organizing data 
			--experiencelevel
Select DISTINCT experience_level
From [Research]..ds_salaries


UPDATE ds_salaries
SET 
experience_level = 'EntryLevel'
WHERE experience_level = 'EN'


UPDATE ds_salaries
SET 
experience_level = 'ExecutiveLevel'
WHERE experience_level = 'EX'


UPDATE ds_salaries
SET 
experience_level = 'IntermediateLevel'
WHERE experience_level = 'MI'


UPDATE ds_salaries
SET 
experience_level = 'SeniorLevel'
WHERE experience_level = 'SE'


				--employment type
Select DISTINCT employment_type
From [Research]..ds_salaries


UPDATE ds_salaries
SET 
employment_type = 'Contract'
WHERE employment_type = 'CT'


UPDATE ds_salaries
SET 
employment_type = 'Freelance'
WHERE employment_type = 'FL'


UPDATE ds_salaries
SET 
employment_type = 'Full_Time'
WHERE employment_type = 'FT'


UPDATE ds_salaries
SET 
employment_type = 'Part_Time'
WHERE employment_type = 'PT'


				--company size
Select DISTINCT company_size
From [Research]..ds_salaries

UPDATE ds_salaries
SET 
company_size = 'Large(>250)'
WHERE company_size = 'L'


UPDATE ds_salaries
SET 
company_size = 'Medium(50-250)'
WHERE company_size = 'M'


UPDATE ds_salaries
SET 
company_size = 'Small(<50)'
WHERE company_size = 'S'


Select DISTINCT job_title
From [Research]..ds_salaries

ALTER TABLE ds_salaries
DROP COLUMN salary_currency 

ALTER TABLE ds_salaries
DROP COLUMN salary

