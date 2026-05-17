WITH highest_data AS (
    SELECT 
        ticker,
        TO_CHAR(date, 'Mon-YYYY') AS highest_mth,
        open AS highest_open,
        ROW_NUMBER() OVER (
            PARTITION BY ticker
            ORDER BY open DESC
        ) AS rn
    FROM stock_prices
),

lowest_data AS (
    SELECT 
        ticker,
        TO_CHAR(date, 'Mon-YYYY') AS lowest_mth,
        open AS lowest_open,
        ROW_NUMBER() OVER (
            PARTITION BY ticker
            ORDER BY open ASC
        ) AS rn
    FROM stock_prices
)

SELECT 
    h.ticker,
    h.highest_mth,
    h.highest_open,
    l.lowest_mth,
    l.lowest_open
FROM highest_data h
JOIN lowest_data l
    ON h.ticker = l.ticker
WHERE h.rn = 1
  AND l.rn = 1;