-- clear data/ reset tables
DROP TABLE CLIENTINFO;
DROP TABLE PRIMARYCONTACT;
DROP TABLE PAYMENT;
DROP TABLE JOBS;
DROP TABLE CREW;
DROP TABLE EMPLOYEE;

CREATE TABLE clientInfo(
    clientName          VARCHAR2(50) NOT NULL,
    address             VARCHAR2(50),
    firstJob            DATE,
    previousJob         DATE,
    jobFrequency        NUMBER DEFAULT 3,
    previousPriceAdj    DATE,

    CONSTRAINT clientPK PRIMARY KEY (clientName)
);

CREATE TABLE primaryContact(
		firstName       VARCHAR2(50 CHAR) DEFAULT ' ' NOT NULL,
		lastName        VARCHAR2(50 CHAR) DEFAULT ' ' NOT NULL,
		email           VARCHAR2(100) DEFAULT ' ' NOT NULL,
		phoneNumber     VARCHAR2(12) DEFAULT ' ' NOT NULL,
        
		CONSTRAINT contactInfo PRIMARY KEY(firstName, lastName)
);

CREATE TABLE employee(
		employeeID      NUMBER DEFAULT 0 NOT NULL,
		firstName       VARCHAR2(50 CHAR) DEFAULT ' ' NOT NULL,
		lastName        VARCHAR2(50 CHAR) DEFAULT ' ' NOT NULL,
		email           VARCHAR2(100 CHAR) DEFAULT ' ' NOT NULL,
		phoneNumber     VARCHAR2(12 CHAR) DEFAULT ' ' NOT NULL,
        --job id?  -TA suggestion
        
        CONSTRAINT employeePK PRIMARY KEY (employeeID)
);

CREATE TABLE supervisor (
    
        changeLog       VARCHAR2(50 CHAR) DEFAULT ' ' NOT NULL,
        supervisorID    NUMBER DEFAULT 0 NOT NULL,
        
        CONSTRAINT supervisorID FOREIGN KEY (supervisorID) REFERENCES employee(employeeID)
);

CREATE TABLE worker (
        crewID          NUMBER DEFAULT 0 NOT NULL,
        workerID        NUMBER DEFAULT 0 NOT NULL,
        
        CONSTRAINT crewPK PRIMARY KEY (crewID),
        CONSTRAINT workerID FOREIGN KEY (workerID) REFERENCES employee(employeeID)
);


CREATE TABLE payment(
		hoursWorked     NUMBER DEFAULT 0 NOT NULL,
		rate            NUMBER DEFAULT 0 NOT NULL,
        employee        NUMBER DEFAULT 0 NOT NULL,
        
        CONSTRAINT employeeFK FOREIGN KEY (employee) REFERENCES employee(employeeID)
);


CREATE TABLE jobs(
		jobID           NUMBER DEFAULT 0 NOT NULL,
		jobDate         DATE DEFAULT CURRENT_DATE NOT NULL,
		startTime       TIMESTAMP,
		crewAssignment  NUMBER DEFAULT 0 NOT NULL,
		price           NUMBER DEFAULT 0 NOT NULL,
        recentJobID     DATE DEFAULT CURRENT_DATE NOT NULL,
        
        CONSTRAINT jobPK PRIMARY KEY (jobID),
        CONSTRAINT jobFK FOREIGN KEY (crewAssignment) REFERENCES worker(crewID)
);



--INSERT DUMMY DATA

--clients
INSERT INTO clientInfo(clientName, contactName, address, firstJob, previousJob, jobFrequency, previousPriceAdj) VALUES ('Jack Astor’s Ancastor', 'Mark Elliot', '839 Golflinks Rd Ancaster', TO_DATE('2010-05-02 8:30:00AM','YYYY-MM-DD HH:MI:SS'), TO_DATE('2022-09-29 21:02:44', 'yyyy-mm-dd hh24:mi:ss'), 3,TO_DATE('2021-12-13 21:02:44', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO clientInfo(clientName, contactName, address, firstJob, previousJob, jobFrequency, previousPriceAdj) VALUES ('The Keg Scarborough', 'Chantelle Anderson','60 Estate Drive Scarborough'
,TO_DATE('2014-09-16 21:02:44', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2022-11-06 21:02:44', 'yyyy-mm-dd hh24:mi:ss'), 3, TO_DATE('2022-04-10 21:02:44', 'yyyy-mm-dd hh24:mi:ss'));


