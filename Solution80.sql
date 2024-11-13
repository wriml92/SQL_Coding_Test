select distinct(author_id) id
from Views
where author_id = viewer_id
order by id

-- Article Views I (https://leetcode.com/problems/article-views-i/description/)
-- find all the authors that viewed at least one of their own articles
-- sorted by id in ascending order