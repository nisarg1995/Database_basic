select m.mid, m.name, m.rel_year, m.director, m.genre from movie m where m.mid in(select mid from review group by mid having avg(rating) =(select min(avg_rat) from (select avg(rating) as avg_rat from review group by mid)))and m.mid in (select mid from review group by mid having count(*) =(select max(y.num) from (select count(*) as num from review group by mid)y));