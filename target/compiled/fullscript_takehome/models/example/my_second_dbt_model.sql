-- Use the `ref` function to select from other models

select *
from TEST_DB.PUBLIC.my_first_dbt_model
where id = 1