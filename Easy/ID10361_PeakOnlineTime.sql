-- You are given a dataset from Amazon that tracks and aggregates user activity on their platform in certain time periods. For each device type, find the time period with the highest number of active users.

-- The output should contain 'user_count',
-- 'time_period',
-- and 'device_type',
-- where
--     'time_period' is a concatenation of 'start_timestamp'
--     and 'end_timestamp',
--     like;

-- "start_timestamp to end_timestamp".

--table: user_activity

-- columns: 
--     start_timestamp:
-- datetime
-- end_timestamp:
-- datetime
-- user_count:
-- int
-- device_type:
-- varchar
-- time_difference:
-- float

--Code in Oracle SQL

SELECT 
    user_count,
    start_timestamp || ' to ' || end_timestamp AS time_period,
    device_type
FROM    
    user_activity
WHERE
    (device_type, user_count) IN (
        SELECT 
            device_type,
            MAX(user_count)
        FROM 
            user_activity
        GROUP BY 
            device_type
    );