#data cleaning
SELECT * FROM layoffs;

-- always make staging database to prevent mistakes being reflected on raw data
-- 1. remove duplicates
-- 2. standardize the data
-- 3. null/ blank values
-- 4. remove unwanted columns


CREATE TABLE layoffs_staging LIKE layoffs;
SELECT * FROM layoffs_staging; 
INSERT layoffs_staging
SELECT * FROM layoffs;

-- REMOVING DUPLICATE

WITH duplicate_cte AS(
SELECT * , ROW_NUMBER() OVER(
PARTITION BY company, location, industry, total_laid_off, percentage_laid_off,`date`, stage, country, funds_raised_millions) AS row_num
FROM layoffs_staging)
SELECT * FROM duplicate_cte
WHERE row_num>1;


CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM layoffs_staging2;

INSERT INTO layoffs_staging2
SELECT * , ROW_NUMBER() OVER(
PARTITION BY company, location, industry, total_laid_off, percentage_laid_off,`date`, stage, country, funds_raised_millions) AS row_num
FROM layoffs_staging;

SELECT * FROM layoffs_staging2
WHERE row_num>1;

DELETE FROM layoffs_staging2
WHERE row_num>1;


-- STANDARDIZING DATA

