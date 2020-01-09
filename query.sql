select providerid,
providername,
isonline,
salechannel
count(distinct orderid) order_num, sum(amount) amount, sum(persons) persons
from dw_diydb.tmp_factallpkgorder_vbk1016
where butype='团队游'
and d='2020-01-07'
and startdate between '2019-01-01' and '2019-12-31'
 group by providerid,
providername