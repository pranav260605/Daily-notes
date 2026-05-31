select pages.page_id
from pages
left join page_likes
on pages.page_id=page_likes.page_id
where page_likes.page_id IS NULL
order by page_id;












