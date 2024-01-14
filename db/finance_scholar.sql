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

