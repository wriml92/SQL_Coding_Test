select tweet_id
from Tweets
where length(content) > 15

-- Invalid Tweets (https://leetcode.com/problems/invalid-tweets/description/)
-- find the IDs of the invalid tweets
-- The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15