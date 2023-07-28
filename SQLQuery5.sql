
select *
from clinic c
JOIN ClinicBranchAddress cba on cba.fClinicKeyold = c.ClinicKey
where fListClinicTypeKey IN (10,11,12)
and fListClinicStatusKey = 1
and MedicaidSubmitterID IS NOT NULL
and cba.State like 'VA'

select *
from ListClinicType


SELECT t.name AS table_name, SCHEMA_NAME(schema_id) AS schema_name, c.name AS column_name
FROM sys.tables AS t
INNER JOIN sys.columns c ON t.OBJECT_ID = c.OBJECT_ID
WHERE c.name LIKE '%addressKey%' /* adjust filter criteria here */
ORDER BY schema_name, table_name;


select top 10 *
from Address

select top 10 *
from ClinicBranchAddressHistory
Where state like 'VA'
group BY

select distinct fClinicKeyold, fClinicBranchKey, ClinicName, AddressOne, City, State, ZIPCode
from ClinicBranchAddressHistory
where State like '%VA%'
Group BY fClinicKeyold 
ORDER BY ClinicBranchAddressKey, fClinicBranchKey, ClinicName, AddressOne, City, State, ZIPCode

select top 10 *
from EDI835

select fClinicKeyold, clinicName, AddressOne, City, State, ZIPCode
from ClinicBranchAddress cba
JOIN clinic c on c.ClinicKey = cba.fClinicKeyold
where State like '%VA%'
and c.fListClinicStatusKey = 1
and fClinicKeyold IN (select distinct clinicKey from Clinic)
group by fClinicKeyold, clinicName, AddressOne, City, State, ZIPCode
order by fClinicKeyOld DESC


select distinct fClinicKeyold, ClinicName
FROM ClinicBranchAddress CBA
JOIN Clinic C on CBA.fClinicKeyold = C.ClinicKey
where State LIKE 'VA'
and c.fListClinicStatusKey = 1
Group BY fClinicKeyold, ClinicName

Select distinct Clinic, ClinicShortName, ClinicKey
from clinic
where ClinicKey IN (select fClinicKeyold from ClinicBranchAddress where state like '%VA%')
and fListClinicStatusKey = 1
and fListClinicTypeKey IN (10,11,12)
and medicaidProviderKey not like ''
ORDER BY ClinicKey ASC


select *
from Clinic
