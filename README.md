# RevOps Performance a Saas Customer Revenue Analysis
RavenStack is a fictional AI-powered collaboration platform used to simulate a real-world SaaS business. End-to-end data pipeline built to provide a SaaS Revenue Operations (RevOps) team with key insights into customer behavior, subscription revenue, and churn drivers. The analysis transforms raw customer data into actionable business intelligence using a modern data stack.

## Goal
The primary goal was to create a comprehensive dashboard to answer critical business questions and help the RevOps team identify opportunities for revenue growth and customer retention. The project focuses on key areas such as:
  - Understanding Monthly Recurring Revenue (MRR) and other key performance indicators (KPIs).
  - Analyzing customer behavior and feature usage.
  - Identifying key drivers of customer churn.
  - Providing data-driven recommendations to improve product and sales strategy.

## Skills & Tools
- Data Engineering: Docker, PostgreSQL   
- Data Management: DBeaver    
- Data Modeling: dbt (Data Build Tool), SQL    
- Business Intelligence: Power BI, DAX    
- Analysis: Revenue Analysis, Churn Analysis, Feature Usage Analysis, Data Visualization

## Process
We will approach the problem by performing the following steps:    
     
  1. Data Collection & Storage:
     - The project uses a simulated dataset containing records for customer accounts, subscription events and feature usage. (Source: Kaggle)
     - A Docker container was used to set up a local and reproducible PostgreSQL database instance. This approach ensures the data environment is consistent and easy to manage.  
     - Raw data files were loaded into the PostgreSQL database, which serves as the central data warehouse for the project. 
  2. Data Modeling (dbt):
     - ETL Pipeline: A dbt project was created to define a series of views and tables, building a robust data model. This process included data cleaning, standardization, and aggregation.     
     - Key Metrics: The pipeline generates several crucial metrics and insights, including: 
       - NRR (Net Revenue Retention): Monthly revenue analysis.
       - LTV (Lifetime Value): The projected total revenue from a single customer.
       - Feature Usage Analysis: Tracking how customers interact with the product.
       - Churn Rate %: A custom DAX measure to calculate the percentage of customers who churned after using a specific feature.
  3. Visualization:
     - Power BI was connected directly to the PostgreSQL database, ensuring all visualizations are built on the most current data.
     - A robust data model was established within Power BI by defining key relationships between tables.
     - Key charts were created to address the project's goals
  4. Analysis:
     - Binary classification models: Decision Tree, Random Forest, Logistic Regression, Gradient Descent.
     - Perform a final test with all models, compare, and view the best model.
     - Extract metrics and graphs of F1 and AUC-ROC

## Results (falta)


## Next steps
To build on this project's insights, the next step is to create a machine learning model to predict customer churn, using the modeled data as the foundation for the analysis.
