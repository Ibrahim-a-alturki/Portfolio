# 🚗 Vehicle Insurance Portal — Malath Insurance

> A field-training project covering the full lifecycle of an internal insurance system: requirements analysis, database design, SQL implementation, automation, reporting, and a working low-code application built on Oracle APEX.

---

## 📌 Overview

During my MIS (Management Information Systems) field training at **Malath Insurance**, I was assigned to design and build a **Vehicle Insurance Portal** — an internal system to manage the vehicle insurance policy lifecycle, from customer/vehicle registration and coverage selection, to payment-triggered policy activation and claims tracking.

The project followed a full systems-development path:

**Requirements Analysis → Database Design (ERD) → SQL Implementation → Automation & Auditing → Reporting → Low-Code Application (Oracle APEX)**

> **Note on data:** This repository documents and showcases the project — including the actual SQL schema and automation scripts, database design artifacts, and interface screenshots produced during training. All data shown (e.g. in screenshots) is dummy/test data used for training purposes, not real customer records. The live Oracle database environment itself belongs to Malath Insurance and is not included here.

---

## 🧭 Project Journey

| Phase | Focus | What I Did |
|---|---|---|
| 1. Requirements Analysis | Business process mapping | Documented the business process (Business Process Documentation) and designed a Process Flow Diagram mapping the customer's end-to-end vehicle insurance journey |
| 2. Database Design | Data modeling | Defined entities and attributes (Entity Schema), identified Primary and Foreign Keys, and designed an Entity Relationship Diagram (ERD) reflecting real insurance business rules |
| 3. Database Implementation | SQL / Oracle | Translated the ERD into live database tables using `CREATE TABLE`, `ALTER`, and `DROP` commands via Toad for Oracle, with precise data typing (e.g. `VARCHAR`, `NUMBER`) |
| 4. Automation & Auditing | PL/SQL Triggers | Built a trigger linking the **Payment** and **Policy** tables so a policy automatically becomes "Active" once payment is completed; added a full audit trail (Creation By, Last Creation By, Modified By, Last Modified By) |
| 5. Reporting | Advanced SQL | Wrote multi-table SQL queries (`SELECT` with aliases, `JOIN` on PK/FK) to generate reports such as the highest-value policy with client details, and a client–vehicle–product report |
| 6. Low-Code App Development | Oracle APEX | Researched Oracle APEX, then built a set of interactive pages to manage owners, policies, coverage, vehicles, and claims, plus dashboards for claim monitoring |

---

## ✨ Key Features

**Data Entry**
- Owner Information Entry page (Oracle APEX) that automatically populates the Owners Details table from the underlying schema
- Corrected a `Created By` trigger issue so it correctly logs the actual system user instead of a generic `APEX_USER` value

**Policy & Coverage Management**
- Policies & Coverages page — selecting a policy reveals its coverage details (e.g. roadside assistance, agency maintenance, driving in GCC countries)
- Policies & Vehicles page — automatically displays the vehicle registered to a selected policy
- `Line of Business (LOB)` classification column distinguishing **Comprehensive** vs. **Third-Party** coverage

**Automation & Data Integrity**
- Trigger-based automatic policy activation on successful payment
- Full audit-trail columns tracking creation and modification per record

**Claims Tracking & Dashboards**
- Dedicated Claims page showing claim status against each policy
- Interactive dashboard with a pie chart comparing Approved vs. Pending claims
- A prominent "Big Card" KPI widget highlighting the count of pending requests

**Reporting**
- Advanced SQL reports joining multiple related tables (policies, clients, vehicles, products) for management insights

---

## 🛠️ Tech Stack

| Category | Tools |
|---|---|
| Database & SQL Development | Oracle Database — schema, queries, and triggers all built and managed through **Toad for Oracle** |
| Application Layer | Oracle APEX (low-code) — interactive pages connected to the same schema created in Toad |
| Automation | PL/SQL Triggers |
| Modeling | Entity Relationship Diagrams (ERD), Process Flow Diagrams |

---

## 🧩 Problem-Solving Highlights

- **Access & permissions:** Implementation was delayed while security approvals for the SQL environment were processed across multiple departments — resolved through coordination rather than technical workaround, then implementation proceeded as planned.
- **Trigger debugging:** Diagnosed and fixed a `Created By` field defaulting to a generic APEX system value, tracing the issue back to the underlying trigger logic and correcting it at the source.
- **Multi-table joins:** Early SQL reports required careful mapping of relationships across interlinked tables to keep JOIN results accurate as the schema grew more complex.

---

## 📁 Design & Planning Documents

The full analysis and design artifacts produced before implementation are available in [`design-docs/`](design-docs/):

- 📄 [Business Process Documentation](design-docs/Business%20Process%20Documentation.pdf) — textual breakdown of the customer's vehicle insurance journey
- 📄 [Process Flow Diagram](design-docs/Process%20Flow%20Diagram.pdf) — visual flow of the customer journey
- 📄 [Entity Relationship Diagram](design-docs/Entity%20Relationship%20Diagram.pdf) — full ERD with entities, attributes, and PK/FK relationships
- 📄 [Database Schema](design-docs/Database%20Schema.pdf) — final entity schema

---

## 💾 SQL Scripts

The full SQL used to build and automate the database is available in [`sql/`](sql/):

| File | Contents |
|---|---|
| [`create_tables.sql`](sql/create_tables.sql) | Core tables — `Owner`, `Policy`, `Vehicle`, `Coverage`, `Payments`, `Claims` — fully linked via primary/foreign key constraints |
| [`triggers.sql`](sql/triggers.sql) | Automation logic — auto-activating a policy on payment, plus audit-trail triggers (Created By, Creation Date, Modified By, Last Modified Date) applied across all six tables |
| [`outcomes_screenshots/`](sql/outcomes_screenshots/) | Screenshots of live data in each table (Owner, Policy, Vehicle, Coverage, Payments, Claims) running in the Toad for Oracle environment — visual proof the schema above is actually deployed |

---

## 🖥️ Oracle APEX Application

The interactive front-end was built entirely in **Oracle APEX**, connected to the schema created in `sql/`.

| Page | Preview |
| :--- | :--- |
| Owner's Information Entry (create form) | [oracle-apex/screenshots/owners-entry.png](oracle-apex/screenshots/owners-entry.png) |
| Owners Details (records grid) | [oracle-apex/screenshots/owners-details.png](oracle-apex/screenshots/owners-details.png) |
| Policies & Coverages | [oracle-apex/screenshots/policies-and-coverages.png](oracle-apex/screenshots/policies-and-coverages.png) |
| Policies By Vehicle | [oracle-apex/screenshots/policies-by-vehicle.png](oracle-apex/screenshots/policies-by-vehicle.png) |
| Claims By Policies | [oracle-apex/screenshots/claims-by-policy.png](oracle-apex/screenshots/claims-by-policy.png) |
| Claims Dashboard | [oracle-apex/screenshots/claims-piechart.png](oracle-apex/screenshots/claims-piechart.png) |


---

## 🌱 Additional Skills Gained During Training

Beyond the Vehicle Insurance Portal itself, the training program also included:

- **Power BI:** Connected Oracle SQL data to Power BI and built KPIs, an interactive pie chart, and a Debit/Credit slicer on a separate, pre-existing production dataset (unrelated to the Vehicle Insurance Portal, so not detailed here).
- **Oracle APEX research:** Dedicated research into low-code application development principles ahead of hands-on building.
- **Cybersecurity & data governance:** Reviewed and summarized internal policies on data access, business continuity management, and cybersecurity incident/threat management.

---


## 👤 About Me

### **Ibrahim Abdulrahman Alturki**
*Management Information Systems (MIS) Graduate | Data & Business Analyst*

I am a Management Information Systems (MIS) graduate passionate about bridging the gap between business logic and technical data environments. I specialize in database systems, SQL querying, and transforming raw operational data into actionable insights and decision-ready dashboards using **Power BI**.

📫 **Connect with Me:**
* 💼 **LinkedIn:** [linkedin.com/in/ibrahim-a-alturki](https://www.linkedin.com/in/ibrahim-a-alturki/)
* ✉️ **Email:** [a.alturki1@outlook.com](mailto:a.alturki1@outlook.com)
  
