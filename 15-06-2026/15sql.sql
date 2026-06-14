SELECT 
  SUM(CASE WHEN caller.phone_number LIKE '+1-212%' THEN 1
    WHEN receiver.phone_number LIKE '+1-212%' THEN 1
  ELSE 0 END) AS nyc_count
FROM phone_calls
LEFT JOIN phone_info AS caller
  ON phone_calls.caller_id = caller.caller_id
LEFT JOIN phone_info AS receiver
  ON phone_calls.receiver_id = receiver.caller_id

  --learnt more about case