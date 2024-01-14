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
    ('Federal', 'Provided by the government such as through the Canada Student Loan program.', 'A student pursuing post-secondary education/ Full-time students, part-time students, and students with permanent disabilities/The college of your choice as well as the study program that you are enrolled in should be supported by Canada Student Loans and Grants.'),
    ('Private', 'Provided by a privately funded organization.', 'Loan funds can only be disbursed after the amount is confirmed by the financial aid office at your school.');
