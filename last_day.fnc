/***********************
-Author: Michal Cierlica
-Script purpose: creates a function that returns the very last day of previous month with 23:59:59 timestamp
-Feel free to give me any suggestions, remarks or comments at cwirus88@gmail.com
**********************/

create or replace FUNCTION           your_schema_name.last_day
  RETURN DATE
IS
  v_last_day DATE;
BEGIN
  SELECT
    replace(to_date(TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-1)))),'00:00:00','23:59:59')
  INTO
    v_last_day
  FROM
    DUAL;
  RETURN v_last_day;
END;