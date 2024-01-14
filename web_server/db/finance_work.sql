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

    -- Create StudentLoans table
CREATE TABLE StudentLoans (
    Type VARCHAR(50),
    Note TEXT,
    Eligibilities TEXT,
    PRIMARY KEY (Type)
);

-- Insert data into the StudentLoans table
INSERT INTO StudentLoans (Type, Note, Eligibilities)
VALUES 
    ('Federal', 'Provided by the government such as through the Canada Student Loan program.', 'A student pursuing post-secondary education/ Full-time students, part-time students, and students with permanent disabilities/The college of your choice as well as the study program that you are enrolled in should be supported by Canada Student Loans and Grants.');
    ('Private', 'Provided by a privately funded organization.', 'Loan funds can only be disbursed after the amount is confirmed by the financial aid office at your school.');

    -- Create Scholarships table
CREATE TABLE Scholarships (
    AwardName VARCHAR(255),
    Description TEXT,
    Restrictions VARCHAR(255),
    PRIMARY KEY (AwardName)
);

-- Insert data into the Scholarships table
INSERT INTO Scholarships (AwardName, Description, Restrictions)
VALUES 
    ('MPOWER Women in STEM Scholarship', 'Scholarships awarded annually to female international/DACA students who are currently enrolled or accepted to study full-time in a STEM degree, Nationality: Unrestricted/ Host Countries: Canada and United States / Programs: Biology,Life Sciences, Computer & Information Systems, Engineering...', 'Unrestricted'),
    ('MPOWER Global Citizen Scholarship', 'Scholarships awarded annually to international and DACA students enrolled at Universities MPOWER supports in the U.S. or Canada.', 'Unrestricted'),
    ('Chasing Dreams Scholarship', 'Celebrates promising international graduate students from China, with awards up to US$5,000.', 'China'),
    ('Zuckerman STEM Leadership Program', 'Supports future generations of leaders in science, technology, engineering, and math in the United States.', 'Unrestricted'),
    ('SmartWatchRatings Annual Award for 2022', 'Due to this pandemic I have decided to give annual award scholarship because students are really bore due to quarantine.', 'Australia, Canada, United Kingdom and United States'),
    ('Canadian Journalism Scholarship', 'Aims to encourage and support all students in Canada with journalism skills.', 'Unrestricted'),
    ('Engineering Scholarship Opportunity in US and Canada', 'Progressive Automations gives away $1,000 dollars each in scholarships to two engineering students each year.', 'Canada and United States'),
    ('GyanDhan Postgraduate Scholarship', 'One-time award that will be given to a student at the beginning of the academic.', 'India'),
    ('The ExpressVPN Future of Privacy Scholarship', 'Created to raise awareness of internet privacy and security.', 'Unrestricted'),
    ('Scholarship program for Emerging Students', 'For all students who want to pursue Engineering courses, MBA courses, Real Estate programs, Mobile app...', 'Australia, Canada and United States'),
    ('Medical Excellence in Australia USA Canada', 'Medical and healthcare is a highly respected field.', 'Unrestricted'),
    ('Business Studies Scholarship Program', 'ValueWalk is an online resource for worldwide Business news, wishes to support students in the pursuit of a Business degree.', 'Unrestricted'),
    ('CouponBirds'' "Help to Save" Scholarship', 'CouponBirds has implemented a "Help to Save" scholarship for students who need help with their college tuition fees.', 'Unrestricted'),
    ('Tocris Bioscience Scholarship Program', 'Supports students who plan to pursue a science-related degree.', 'Unrestricted');



