Audit: and ct.CreateBy=10979270 and ct.CreateDt> '2015-04-08 16:00'  order by id desc
Find: select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'CARAPracticeLog%' and COLUMN_NAME like '%Deadline%'
T-SQL: Merge Truncate Print,With cte as (...), If not exists(...), If object_id() is not null, begin end,
Select: Like Between,  a not in (b,c,null),  having count(*)>1,  %_[^] ESCAPE
Func: Row_Number() Max() CAST() CONVERT () STUFF COALESCE , ViewList from LeftPanel
Vars: Declare @var1 @table1(a,b,c),  set @var1=1, select @@rowcount
Perf: SET STATISTICS [TIME,IO,PROFILE] ON

Tran: Begin tran,  commit Tran, rollback Tran (if @@ error>0)
IF: Case When, Then, Else End,
Sub: select * from (select top(9) * from t1 order by id asc) t2
Perf: select from t1 with(nolock)

* select * into #t from t1
* insert #t select from t1 where not exists(...)

* set IDENTITY_INSERT InstitutionSettingType on
* set TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

-------------------------------------------------------
-- JF-10817 DESC Verify RollBack

ALTER TABLE CARAPracticeLogWeekUser 
WITH CHECK  -- use WITH CHECK to ensure the constraints are valid...
ADD 
CARAPracticeLogWeekUserId int IDENTITY(1,1) NOT NULL,
CARAPracticeLogWeekUserDesc varchar(max) NULL default 'MyDesc',
CONSTRAINT PK_CARAPracticeLogWeekUser    PRIMARY KEY  (CARAPracticeLogWeekUserId),
CONSTRAINT IX_CARAPracticeLogWeekUser    UNIQUE NONCLUSTERED (InstitutionId, SportId, AcademicYearId)
CONSTRAINT FK_CARAPracticeLogWeekUser_SportMaster FOREIGN KEY(SportId) REFERENCES SportMaster (SportId),
DROP
CARAPracticeLogWeekUserDesc,
CONSTRAINT PK_CARAPracticeLogWeekUser,
GO