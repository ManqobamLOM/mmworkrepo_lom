{{ config(materialized='table') }}

with brz_ledger360_portfolio_accounts as (

SELECT 
    businessname as business_name,
    accountname as account_name,
    Accountno as account_no,
    bidno as bid_no,
    registrationnumber as registration_number,
    portfolioname as portfolio_name,
    cast(delphiscore as string) as delphi_score,
    cast(delhpitrend as string) as delphi_trend,
    riskband as risk_band,
    previousriskband as previous_risk_band,
    cast(accountdbt as string) as account_dbt,
    cast(accountdbttrend as string) as account_dbt_trend,
    cast(experiandbt as string) as experian_dbt,
    cast(experiandbttrend as string) as experian_dbt_trend,
    cast(accountcreditlimit as string) as account_credit_limit,
    cast(accountcreditlimitexposure as string) as account_credit_limit_exposure,
    cast(accountbalance as string) as account_balance,
    cast(accountoverduebalance as string) as account_overdue_balance,
    cast(accountoverduecost as string) as account_overdue_cost,
    cast(currentageing as string) as current_ageing,
    cast(thirtydaysage1 as string) as thirty_days_sage_1,
    cast(sixtydaysage2 as string)  as sixty_days_sage_2,
    cast(ninetydaysage3 as string) as ninety_days_sage_3,
    cast(onetwentytydaysage4 as string) as onetwenty_days_sage_4,
    courtrecords as court_records,
    companystatus as company_status,
    reasonnotscred as reason_not_scored,
    cast(reportageinmonths as string) as report_ageing_months 
FROM 
    `lombard-prod.Raw_Guarantees_Experian_Leger360.portfolio_accounts`

)

select *
from brz_ledger360_portfolio_accounts