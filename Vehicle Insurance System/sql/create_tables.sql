-- ============================================================
-- Vehicle Insurance Portal — Malath Insurance
-- File: create_tables.sql
-- Description: Core table definitions for the Vehicle Insurance
--              Portal database (Owner, Policy, Vehicle, Coverage,
--              Payments, Claims) with primary/foreign key constraints.
-- ============================================================

CREATE TABLE Owner (
  Owner_ID            NUMBER PRIMARY KEY,
  Full_Name            VARCHAR2(100),
  National_ID_Iqama    VARCHAR2(10) UNIQUE,
  Birth_Date           DATE,
  Gender                CHAR(1),
  Mobile_Number        VARCHAR2(15),
  Address               VARCHAR2(255),
  Driving_License_No   VARCHAR2(20),
  License_Expiry_Date  DATE
);

CREATE TABLE Policy (
  Policy_ID           NUMBER PRIMARY KEY,
  Owner_ID             NUMBER,
  Policy_Number        VARCHAR2(50) UNIQUE,
  Issue_Date           DATE,
  Start_Date           DATE,
  Expiry_Date          DATE,
  Policy_Status        VARCHAR2(20),
  Premium_Amount       NUMBER(10,2),
  Total_Sum_Insured    NUMBER(10,2),
  CONSTRAINT fk_policy_owner
    FOREIGN KEY (Owner_ID) REFERENCES Owner(Owner_ID)
);

CREATE TABLE Vehicle (
  Vehicle_ID           NUMBER PRIMARY KEY,
  Owner_ID              NUMBER,
  Policy_ID             NUMBER,
  Make_Model            VARCHAR2(50),
  Manufacturing_Year    NUMBER,
  Vehicle_Value         NUMBER(10,2),
  Plate_Number          VARCHAR2(20) UNIQUE,
  Chassis_Number        VARCHAR2(30) UNIQUE,
  CONSTRAINT fk_vehicle_owner
    FOREIGN KEY (Owner_ID) REFERENCES Owner(Owner_ID),
  CONSTRAINT fk_vehicle_policy
    FOREIGN KEY (Policy_ID) REFERENCES Policy(Policy_ID)
);

CREATE TABLE Coverage (
  Coverage_ID          NUMBER PRIMARY KEY,
  Policy_ID             NUMBER,
  Coverage_Name         VARCHAR2(50),
  Category              VARCHAR2(50),
  Coverage_Description  VARCHAR2(500),
  Base_Price            NUMBER(10,2),
  Max_Limit             NUMBER(10,2),
  CONSTRAINT fk_coverage_policy
    FOREIGN KEY (Policy_ID) REFERENCES Policy(Policy_ID)
);

CREATE TABLE Payments (
  Payments_ID          NUMBER PRIMARY KEY,
  Policy_ID             NUMBER,
  Trans_ID              VARCHAR2(50),
  Amount                NUMBER(10,2),
  Payment_Date          DATE,
  Payment_Method        VARCHAR2(20),
  Status                 VARCHAR2(20),
  CONSTRAINT fk_payments_policy
    FOREIGN KEY (Policy_ID) REFERENCES Policy(Policy_ID)
);

CREATE TABLE Claims (
  Claim_ID              NUMBER PRIMARY KEY,
  Policy_ID              NUMBER,
  Payments_ID            NUMBER,
  Accident_Description   VARCHAR2(1000),
  Policy_Report_No       VARCHAR2(50),
  Liability_Percent      NUMBER,
  Estimated_Amount       NUMBER(10,2),
  Claim_Status            VARCHAR2(20),
  Attachment_Link         VARCHAR2(255),
  CONSTRAINT fk_claims_policy
    FOREIGN KEY (Policy_ID) REFERENCES Policy(Policy_ID),
  CONSTRAINT fk_claims_payments
    FOREIGN KEY (Payments_ID) REFERENCES Payments(Payments_ID)
);
