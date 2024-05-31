-- You're tasked with analyzing a Spotify-like dataset that captures user listening habits.
-- For each user, calculate the total listening time and the count of unique songs they've listened to. In the database duration values are displayed in seconds. Round the total listening duration to the nearest whole minute.


-- The output should contain three columns: 'user_id', 'total_listen_duration', and 'unique_song_count'.

SELECT
    user_id,
    ROUND(SUM(listen_duration) / 60) AS total_listen_duration,
    COUNT(DISTINCT song_id) AS unique_song_count
FROM listening_habits
GROUP BY
    user_id;


