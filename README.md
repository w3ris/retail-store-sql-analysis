# Retail Store Sales Analysis (SQL)

## Overview
I analyzed about 99,000 retail sales records from 10 shopping malls to answer one business question:

**Where does revenue come from, and where should the business focus to grow?**

- **Tools:** SQL (PostgreSQL) in Supabase
- **Data source:** Customer Shopping Dataset (Kaggle)
- **Data range:** January 2021 – March 8, 2023

## Key Findings

| Question | Finding |
|---|---|
| What sells? | Clothing, Shoes, and Technology make up over 90% of revenue. |
| Who buys? | Women bring in about 60% of revenue because they shop more often, not because they spend more per purchase. |
| How do they pay? | Cash is the most used method (about 45% of purchases). Payment method does not affect how much people spend. |
| When do they buy? | Revenue is steady at about 9–10M per month with no major seasonal swings. |
| Where do they buy? | Two malls, Mall of Istanbul and Kanyon, bring in about 40% of revenue through higher customer traffic. |

## Main Takeaway
Average spend per purchase is almost the same across genders, payment methods, and malls. **Revenue grows with the number of purchases, not the size of each one.** The business should focus on bringing in more customers and getting them to return, especially in its top three categories.

## Data Quality Check
The monthly chart showed a sharp drop in March 2023. Before reporting it, I checked the latest date in the data and found it ends on March 8, 2023. The drop reflects a partial month, not a real decline.

## SQL Skills Used
- Aggregations: `SUM`, `AVG`, `COUNT`, `MAX`
- Grouping and sorting: `GROUP BY`, `ORDER BY`
- Rounding and type conversion: `ROUND`, `::numeric`
- Date handling: converted text dates with `TO_DATE` and grouped by month with `DATE_TRUNC`

## Files
- `analysis_queries.sql` – all six queries, labeled by question
