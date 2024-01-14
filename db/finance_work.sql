-- Create WorkWhileStudying table
CREATE TABLE WorkWhileStudying (
    Work VARCHAR(255),
    Description TEXT,
    Eligibility TEXT,
    PRIMARY KEY (Work)
);

-- Insert data into the WorkWhileStudying table
INSERT INTO WorkWhileStudying (Work, Description, Eligibility)
VALUES 
    ('On campus', '“On campus” refers to all the buildings on your university or college campus. You can work off campus without a work permit.', 'Full-time student at a designated learning institution (DLI)/ Enrolled in either of the post-secondary academic, vocational or professional training program or a secondary-level vocational training program (Quebec only)/ Your study program is at least 6 months long and leads to a degree, diploma or certificate/ You have a social insurance number (SIN).'),
    ('Co-up placements', 'A co-op placement or program involves working as part of your program of study. You may work on or off campus.', 'Valid study permit./Working is integrated into your study program in Canada. You have a letter from your designated learning institution that confirms all students in your program need to complete work placements to get their degree./ Your co-op or internship is 50% or less of the total program of study.'),
    ('Internships', 'An internship provides you with on-the-job training. When you are an intern, someone in the workplace supervises you. By working as an intern, you gain knowledge and skills to help you succeed in a trade or profession.', 'Work permit(Same with co-up students)');




-- Create CurrentMinimumWage table
CREATE TABLE CurrentMinimumWage (
    Province VARCHAR(255),
    MinimumHourlyWage DECIMAL(6, 2),
    Notes TEXT,
    PRIMARY KEY (Province)
);

-- Insert data into the CurrentMinimumWage table
INSERT INTO CurrentMinimumWage (Province, MinimumHourlyWage, Notes)
VALUES 
    ('Alberta', 15.00, 'Effective as of October 1, 2018.'),
    ('British Columbia', 16.75, 'Effective as of June 1, 2023.'),
    ('Manitoba', 15.30, 'Effective as of October 1, 2023.'),
    ('New Brunswick', 14.75, 'Effective as of April 1, 2023.'),
    ('Newfoundland & Labrador', 15.00, 'Effective as of October 1, 2023. "The Minister is still considering the recommendation from the Minimum Wage Review Committee to adjust minimum wage rates after 2024 by inflation plus an additional 1% annually. View report from Minimum Wage Review Committee."'),
    ('Northwest Territories', 16.05, 'Effective as of September 1, 2023. The minimum wage is adjusted annually using a formula based on the percentage change in the Consumer Price Index (CPI) for Yellowknife and the percentage change in the average hourly wage (AHW) in the NWT for the preceding calendar year.'),
    ('Nova Scotia', 15.00, 'Effective as of October 1, 2023. Beginning April 1, 2024, the minimum wage rate will be adjusted with inflation plus an additional 1% annually.'),
    ('Nunavut', 16.00, 'Effective as of April 1, 2020. The minimum wage in NU is reviewed annually on April 1.'),
    ('Ontario', 16.55, 'Effective as of October 1, 2023.'),
    ('Prince Edward Island', 15.00, 'Effective as of October 1, 2023. The rate will move to $15.40 on April 1, 2024, and to $16.00 on October 1, 2024.'),
    ('Quebec', 15.25, 'On May 1, 2023, Quebec’s minimum wage increased to $15.25.'),
    ('Saskatchewan', 14.00, 'Effective as of October 1, 2023.'),
    ('Yukon', 16.77, 'Effective as of April 1, 2023. The minimum wage is adjusted on April 1 of each year relative to the Consumer Price Index.');
