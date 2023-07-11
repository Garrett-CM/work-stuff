select * 
from FogBugz_SQLAdmin.dbo.Delete_ClinicSetting_03575246v1;

select *
from claim
where claimKey in (39549615,39549616);

select top 10 * 
from patientTask


/*select tasks in corp*/
select t.TaskName, ltt.revenueCode, t.fListTaskTypeKey, *
from ClinicTask ct
Join task t on t.TaskKey = ct.fTaskKey
join listTaskType ltt on ltt.listTaskTypeKey = t.fListTaskTypeKey
where fClinicKey IN (select fClinicKey from CorporationClinic where fCorporationKey = 310)
and t.fListTaskTypeKey = 10
/*and ltt.RevenueCode = NULL*/
order by t.TaskName desc

Select * /*41805 total*/
from patientTask pt
join episode e on pt.fEpisodeKey = e.episodeKey
Join patient p on e.fPatientKey = p.patientKey
JOIN clinic c on c.clinicKey = p.fClinicKey
JOIN corporationClinic cc on cc.fclinicKey = c.clinickey
where fTaskKey IN ( select t.taskKey
					from ClinicTask ct
					Join task t on t.TaskKey = ct.fTaskKey
					join listTaskType ltt on ltt.listTaskTypeKey = t.fListTaskTypeKey
					where fClinicKey IN (select fClinicKey from CorporationClinic where fCorporationKey = 310) )
and cc.fCorporationKey = 310
and pt.fTaskKey IN (85060,
64860,
85059,
85575,
27152,
85034,
85051,
85052,
85053,
85049,
85050,
85047,
85048,
85055,
85054,
85043,
85044,
85040,
85039,
85037,
85038,
85035,
85036,
85041,
85042,
85045,
86716,
85046,
85061)

Select top 10 *
from patient

select *
from episode
where episodeKey IN (2554031,
2554160,
2740170,
2740170,
2554160,
3043575,
3043575,
2554417,
2554417,
3043575)

select top 10*
from patientTask
where CorporationKey = 310


SELECT t.name AS table_name, SCHEMA_NAME(schema_id) AS schema_name, c.name AS column_name
FROM sys.tables AS t
INNER JOIN sys.columns c ON t.OBJECT_ID = c.OBJECT_ID
WHERE c.name LIKE '%RevenueCode%' /* adjust filter criteria here */
ORDER BY schema_name, table_name;

select top 10 *
from task

select top 10 *
from ClinicTask

select *
from batch


select *
from ListVisitCategory

select *
from ListTaskType

select top 10 *
from claimBatch


use support

select *
from clinicTask ct
JOIN corporationClinic c on ct.fClinicKey = c.fclinicKey
JOIN corporation corp on corp.corporationKey = c.fCorporationKey
where fTaskKey IN (	select TaskKey from Task
					where taskKey IN (taskName like 'Virtual Capability Screening' or
							taskName like 'Virtual Visit (Audio/Video)- SN' OR
							taskName like 'Virtual Visit (Audio/Video)- PT/PTA' OR
							taskName like 'Virtual Visit (Audio/Video)- OT/COTA' OR
							taskName like 'Virtual Visit (Audio/Video)- ST' OR
							taskName like 'Virtual Visit (Audio/Video)- MSW' OR
							taskName like 'Virtual Visit- Triage (Audio/Video)- SN' OR
							taskName like 'Virtual Visit-Triage (Audio Only)- SN' OR
							taskName like 'Virtual Visit (Audio Only)- SN' OR
							taskName like 'Virtual Visit (Audio Only)- PT/PTA' OR
							taskName like 'Virtual Visit (Audio Only)- OT/COTA' OR
							taskName like 'Virtual Visit (Audio Only)- ST' OR
							taskName like 'Telehealth Report' OR
							taskName like 'Telehealth Assessment'
							)

select *
from patientTask
where fTaskKey IN (select TaskKey from Task
					where  (taskName like 'Virtual Capability Screening' or
							taskName like 'Virtual Visit (Audio/Video)- SN' OR
							taskName like 'Virtual Visit (Audio/Video)- PT/PTA' OR
							taskName like 'Virtual Visit (Audio/Video)- OT/COTA' OR
							taskName like 'Virtual Visit (Audio/Video)- ST' OR
							taskName like 'Virtual Visit (Audio/Video)- MSW' OR
							taskName like 'Virtual Visit- Triage (Audio/Video)- SN' OR
							taskName like 'Virtual Visit-Triage (Audio Only)- SN' OR
							taskName like 'Virtual Visit (Audio Only)- SN' OR
							taskName like 'Virtual Visit (Audio Only)- PT/PTA' OR
							taskName like 'Virtual Visit (Audio Only)- OT/COTA' OR
							taskName like 'Virtual Visit (Audio Only)- ST' OR
							taskName like 'Telehealth Report' OR
							taskName like 'Telehealth Assessment'
							))

select t.taskname, count(fTaskKey) as 'task count', fTaskKey /*41806 total*/
from PatientTask pt
join task t on pt.fTaskKey = t.taskKey
where fTaskKey IN (85060,
64860,
85059,
85575,
27152, 
85034,
85051,
85052,
85053,
85049,
85050,
85047,
85048,
85055,
85054,
85043,
85044,
85040,
85039,
85037,
85038,
85035,
85036,
85041,
85042,
85045,
86716,
85046,
85061)
group BY fTaskKey, t.taskname
				
				select top 10 *
				from patientTask	
select *
from Task
where (taskName like 'Virtual Capability Screening' or
		taskName like 'Virtual Visit (Audio/Video)- SN' OR
		taskName like 'Virtual Visit (Audio/Video)- PT/PTA' OR
		taskName like 'Virtual Visit (Audio/Video)- OT/COTA' OR
		taskName like 'Virtual Visit (Audio/Video)- ST' OR
		taskName like 'Virtual Visit (Audio/Video)- MSW' OR
		taskName like 'Virtual Visit- Triage (Audio/Video)- SN' OR
		taskName like 'Virtual Visit-Triage (Audio Only)- SN' OR
		taskName like 'Virtual Visit (Audio Only)- SN' OR
		taskName like 'Virtual Visit (Audio Only)- PT/PTA' OR
		taskName like 'Virtual Visit (Audio Only)- OT/COTA' OR
		taskName like 'Virtual Visit (Audio Only)- ST' OR
		taskName like 'Telehealth Report' OR
		taskName like 'Telehealth Assessment'
		)
And revenueCode IS NULL /*is null 17 */
Order BY TaskKey ASC

Telehealth Report
Virtual Visit (Audio Only)- ST
Virtual Visit (Audio Only)- OT/COTA
Virtual Visit (Audio Only)- PT/PTAVirtual Visit (Audio Only)- SNVirtual Visit-Triage (Audio Only)- SNVirtual Visit- Triage (Audio/Video)- SNVirtual Visit (Audio/Video)- MSWVirtual Visit (Audio/Video)- OT/COTAVirtual Visit (Audio/Video)- PT/PTAVirtual Visit (Audio/Video)- SNVirtual Capability ScreeningVirtual Visit (Audio/Video)- STselect p.FirstName, *from episode ejoin patient p on e.fPatientKey = p.PatientKeywhere episodeKey = 11934210select *from clinicBranchwhere clinicBranchKey = 9249/*select all pt with keys based off name and null*/select *from patientTaskwhere fTaskKey IN (					select taskKey from Task
					where (taskName like 'Virtual Capability Screening' or
							taskName like 'Virtual Visit (Audio/Video)- SN' OR
							taskName like 'Virtual Visit (Audio/Video)- PT/PTA' OR
							taskName like 'Virtual Visit (Audio/Video)- OT/COTA' OR
							taskName like 'Virtual Visit (Audio/Video)- ST' OR
							taskName like 'Virtual Visit (Audio/Video)- MSW' OR
							taskName like 'Virtual Visit- Triage (Audio/Video)- SN' OR
							taskName like 'Virtual Visit-Triage (Audio Only)- SN' OR
							taskName like 'Virtual Visit (Audio Only)- SN' OR
							taskName like 'Virtual Visit (Audio Only)- PT/PTA' OR
							taskName like 'Virtual Visit (Audio Only)- OT/COTA' OR
							taskName like 'Virtual Visit (Audio Only)- ST' OR
							taskName like 'Telehealth Report' OR
							taskName like 'Telehealth Assessment'
							)
					And revenueCode IS NULL)

/*select all off hard key 22618*/
select *
from patientTask
where fTaskKey IN (
85060,
64860,
85059,
85575,
27152,
85034,
85053,
85050,
85048,
85054,
85044,
85039,
85038,
85036,
85042,
85046,
85061)
