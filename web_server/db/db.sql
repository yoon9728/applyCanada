-- PGWP_Ontario_Info Table Creation
CREATE TABLE PGWP_Info (
    Duration VARCHAR(255),
    ApplicationWindow VARCHAR(255),
    EligibilityCriteria TEXT,
    ApplicationProcess TEXT,
    WorkingBeforeAfter TEXT,
    PermanentResidencyPath TEXT,
    OneTimeOpportunity TEXT
);

-- Inserting Data into PGWP_Ontario_Info
INSERT INTO PGWP_Info (Duration, ApplicationWindow, EligibilityCriteria, ApplicationProcess, WorkingBeforeAfter, PermanentResidencyPath, OneTimeOpportunity)
VALUES (
    'The PGWP is issued for the duration of your study program, with a maximum limit of three years. 
    The program must be at least eight months in duration.',
    'Applicants need to apply within 180 days of receiving official confirmation of program completion, like a graduation letter and transcript. 
    If in Canada, a valid status (e.g., student or visitor) is necessary for application. 
    Typically, the study permit expires 90 days after program completion, 
    so it is advisable to apply within this period.',
    'Completion of an 8-month or longer program leading to a degree, diploma, or certificate; Full-time student status; Valid study permit within 180 days of application; No previous PGWP',
    'Online application recommended; Required documents include final official transcript, program completion letter, passport copies, photograph, possibly biometrics and medical exam results',
    'Eligible to work full-time after submitting PGWP application if holding a valid study permit and SIN; Work can continue until decision on application',
    'Work experience under PGWP can help qualify for permanent residence',
    'PGWP is a once-in-a-lifetime opportunity, not extendable except for specific circumstances like passport expiry'
);

-- Table Creation for Ontario Graduates' PR Pathways
CREATE TABLE OntarioGraduatesPRPathways (
    ProgramCategory VARCHAR(255),
    Stream VARCHAR(255),
    Description TEXT
);

-- Inserting Data into OntarioGraduatesPRPathways
INSERT INTO OntarioGraduatesPRPathways (ProgramCategory, Stream, Description)
VALUES 
    ('OINP Employer Job Offer Category', 'Foreign Worker Stream', 'For skilled foreign workers with a job offer in Ontario.'),
    ('OINP Employer Job Offer Category', 'International Student Stream', 'For recent graduates in Ontario with a job offer.'),
    ('OINP Employer Job Offer Category', 'In-Demand Skills Stream', 'For workers in occupations like construction, trucking with a job offer in Ontario.'),
    ('OINP Human Capital Category', 'International Graduate Streams (Masters and PhD)', 'For graduates with an Ontario Masters or PhD, allowing them to apply for OINP nomination.'),
    ('OINP Human Capital Category', 'Ontario Express Entry Streams', 'Includes French-Speaking Skilled Worker, Human Capital Priorities, and Skilled Trades streams.'),
    ('OINP Business Category', 'Entrepreneur Stream', 'For entrepreneurs starting or buying a business in Ontario.'),
    ('Federal Economic Immigration', 'Canadian Experience Class', 'For individuals with at least one year of Canadian work experience.'),
    ('Federal Economic Immigration', 'Federal Skilled Worker Program', 'For skilled professionals with work experience in management, professions, or technical trades.');


-- Create ImmigrationLevelsPlan table
CREATE TABLE ImmigrationLevelsPlan (
    ImmigrationClass VARCHAR(50),
    Year2024 INT,
    Year2025 INT,
    Year2026 INT,
    PRIMARY KEY (ImmigrationClass)
);

-- Insert data into the ImmigrationLevelsPlan table
INSERT INTO ImmigrationLevelsPlan (ImmigrationClass, Year2024, Year2025, Year2026)
VALUES 
    ('Economic', 281135, 301250, 301250),
    ('Family', 114000, 118000, 118000),
    ('Refugee', 76115, 72750, 72750),
    ('Humanitarian', 13750, 8000, 8000),
    ('Total', 485000, 500000, 500000);


-- Create economic_programs table
CREATE TABLE EconomicPrograms (
    program VARCHAR(100),
    descriptions TEXT,
    PRIMARY KEY (program)
);

-- Insert data into the economic_programs table
INSERT INTO EconomicPrograms (program, descriptions)
VALUES 
    ('Federal Skilled Worker (FSW) Program', 'This Express Entry-managed program is for immigrants with the requisite education, work experience, proficiency in English and/or French and other skills needed to establish themselves economically in Canada.'),
    ('Federal Skilled Trades Class (FSTC)', 'The Express Entry-managed Federal Skilled Trades Class is for foreign workers with qualifications in a skilled trade.'),
    ('Canadian Experience Class (CEC)', 'The Canadian Experience Class is managed by the Express Entry system and welcomes expressions of interest from foreign workers with Canadian work experience or recent graduates of Canadian educational institutions working in Canada.'),
    ('Atlantic Immigration Pilot Program (AIPP)', 'The Atlantic Immigration Pilot allows designated Atlantic employers to recruit and hire foreign skilled workers or international graduates in the Atlantic Canada region (Newfoundland and Labrador, Prince Edward Island, Nova Scotia, and New Brunswick).'),
    ('Caregivers Program', 'Canada allows eligible foreigners caring for children and people with high medical needs the opportunity to apply for Canadian permanent residence.'),
    ('Federal Business (Start-Up Visa Program and Self-Employed Person)', 'Federal business class programs allow foreigners who meet eligibility requirements the chance to run new or pre-existing businesses in Canada.'),
    ('Provincial Nominee Program (PNP)', 'This program allows participating provinces and territories to nominate eligible economic immigration candidates for Canadian permanent residence.'),
    ('Quebec Skilled Worker Program and Quebec Business', 'The province of Quebec runs its own immigration system outside the federal system.');




