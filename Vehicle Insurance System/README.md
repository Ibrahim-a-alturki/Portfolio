# 🚗 Vehicle Insurance Portal — Malath Insurance

> A field-training project covering the full lifecycle of an internal insurance system: requirements analysis, database design, SQL implementation, automation, reporting, and a working low-code application built on Oracle APEX.

---

## 📌 Overview

During my MIS (Management Information Systems) field training at **Malath Insurance**, I was assigned to design and build a **Vehicle Insurance Portal** — an internal system to manage the vehicle insurance policy lifecycle, from customer/vehicle registration and coverage selection, to payment-triggered policy activation and claims tracking.

The project followed a full systems-development path:

**Requirements Analysis → Database Design (ERD) → SQL Implementation → Automation & Auditing → Reporting → Low-Code Application (Oracle APEX)**

> **Note on data:** This repository documents and showcases the project — its design decisions, database structure, and interface — using the weekly reports and screenshots produced during training. The live company database and customer data belong to Malath Insurance and are not included here.

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

**Data Entry & Validation**
- Owner Information Entry page (Oracle APEX) that automatically populates the Owners Details table from the underlying schema
- PL/SQL validation enforcing a strict 10-digit Owner ID format, with custom error messaging
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
- Interactive dashboard with a gauge/indicator comparing Approved vs. Pending claims
- A prominent "Big Card" KPI widget highlighting the count of pending requests

**Reporting**
- Advanced SQL reports joining multiple related tables (policies, clients, vehicles, products) for management insights

---

## 🛠️ Tech Stack

| Category | Tools |
|---|---|
| Database & SQL Development | Oracle Database — schema, queries, triggers, and procedures all built and managed through **Toad for Oracle** |
| Application Layer | Oracle APEX (low-code) — interactive pages connected to the same schema created in Toad |
| Automation & Validation | PL/SQL (Triggers, Validation logic) |
| Modeling | Entity Relationship Diagrams (ERD), Process Flow Diagrams |

---

## 🧩 Problem-Solving Highlights

- **Access & permissions:** Implementation was delayed while security approvals for the SQL environment were processed across multiple departments — resolved through coordination rather than technical workaround, then implementation proceeded as planned.
- **Trigger debugging:** Diagnosed and fixed a `Created By` field defaulting to a generic APEX system value, tracing the issue back to the underlying trigger logic and correcting it at the source.
- **Multi-table joins:** Early SQL reports required careful mapping of relationships across interlinked tables to keep JOIN results accurate as the schema grew more complex.

---

## 📸 Screenshots

*(Add your outcome screenshots to a `/screenshots` folder in the repo and reference them below, for example:)*

| Page | Preview |
|---|---|
| Owners Information Entry | `screenshots/owners-entry.png` |
| Policies & Coverages | `screenshots/policies-coverages.png` |
| Policies & Vehicles | `screenshots/policies-vehicles.png` |
| Claims Tracking | `screenshots/claims-page.png` |
| Claims Dashboard | `screenshots/claims-dashboard.png` |

```markdown
![Owners Information Entry](screenshots/owners-entry.png)
![Claims Dashboard](screenshots/claims-dashboard.png)
```

---

## 🌱 Additional Skills Gained During Training

Beyond the Vehicle Insurance Portal itself, the training program also included:

- **Power BI:** Connected Oracle SQL data to Power BI and built KPIs, an interactive pie chart, and a Debit/Credit slicer on a separate, pre-existing production dataset (unrelated to the Vehicle Insurance Portal, so not detailed here).
- **Oracle APEX research:** Dedicated research into low-code application development principles ahead of hands-on building.
- **Cybersecurity & data governance:** Reviewed and summarized internal policies on data access, business continuity management, and cybersecurity incident/threat management.

---



## 👤 About Me

**Ibrahim Abdulrahman Alturki** -
Management Information Systems (MIS) Graduate -
Trained at Malath Insurance

- LinkedIn: [https://www.linkedin.com/in/ibrahim-a-alturki]
- Email: [a.alturki1@outlook.com]
