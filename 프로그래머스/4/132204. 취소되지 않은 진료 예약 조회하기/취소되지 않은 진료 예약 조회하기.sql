-- 코드를 입력하세요
SELECT a.APNT_NO,p.PT_NAME,a.PT_NO,a.MCDP_CD,d.DR_NAME,a.APNT_YMD
from APPOINTMENT a, DOCTOR d, PATIENT p
where p.PT_NO= a.PT_NO and a.MDDR_ID= d.DR_ID and to_char(a.APNT_YMD,'YYYYMMDD')='20220413' and a.mcdp_cd='CS'  and APNT_CNCL_YN='N'
order by a.APNT_YMD
