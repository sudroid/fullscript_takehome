 

with customer_dim as (

    SELECT CUSTOMER.C_CUSTKEY
    , CUSTOMER.C_NAME AS CUSTOMERNC_AME
    , CUSTOMER.C_ADDRESS AS CUSTOMERAC_DDRESS
    , NATION.N_NAME AS NATIONNAME
    , REGION.R_NAME AS REGIONNAME
    , CUSTOMER.C_PHONE AS CUSTOMERPC_HONE
    , CUSTOMER.C_ACCTBAL AS CUSTOMERAC_CCTBAL
    , CUSTOMER.C_MKTSEGMENT AS CUSTOMERMC_KTSEGMENT
    , CUSTOMER.C_COMMENT AS CUSTOMERCC_OMMENT    
    FROM CUSTOMER  
    LEFT join NATION  ON CUSTOMER.C_NATIONKEY  = NATION.N_NATIONKEY
    LEFT JOIN REGION  ON NATION.N_REGIONKEY = REGION.R_REGIONKEY 

)

select *
from customer_dim