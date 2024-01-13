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


