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
     - Create different measures (DAX) 
  4. Analysis:
     - Analyze the results and be able to reach a conclusion.

## Results 
The data analysis reveals a clear narrative about business growth, churn, and market opportunities. While the company shows healthy growth, a significant amount of churn is concentrated within specific market segments. This churn is not linked to customer service quality, but rather is directly driven by dissatisfaction with specific product features.

Growth and Business Health:
  - The company has solid growth, indicating it is effectively acquiring and retaining customers. However, this growth needs to be closely monitored in the segments that show the highest churn.

Churn Analysis and Root Causes:
  - Churn is primarily concentrated among customers on the Basic plan and in the DevTools industry.
  - The main cause is not customer support, but rather dissatisfaction with specific product features.

Product Feature Impact:
  - The use of certain features (features 2, 16, 17 y 26) is directly linked to a higher risk of churn. This is a critical insight for the product team.

Customer Value and Market Opportunities:
  - The LTV analysis reveals that the most valuable customers come from France, Australia, and the United States, and from the EdTech and Cybersecurity industries.
  - Report directly to the marketing and sales teams.

The Role of Customer Support:
  - Contrary to initial assumptions, the customer support team is not a factor influencing churn. The analysis shows that satisfaction and resolution times are consistent across all customers, which validates the support team's good work.

## Recommendations
  - For the Product Team: Prioritize the review and improvement of the "high-risk" features. This will have a direct impact on reducing the churn rate.

  - For the Marketing and Sales Teams: Focus investment and acquisition efforts on the most valuable markets and industries.

  - For the Support Team: Acknowledge their excellent work. The analysis proves that their consistent performance is a valuable asset to the company.

## Next steps
The next step is to create a machine learning model to predict customer churn, using the modeled data as the foundation for the analysis.
