select son.id id, son.GENOTYPE GENOTYPE, mon.GENOTYPE PARENT_GENOTYPE
from ECOLI_DATA son, ECOLI_DATA mon
where son.PARENT_ID=mon.id and
son.GENOTYPE & mon.GENOTYPE = mon.GENOTYPE
order by  1 asc