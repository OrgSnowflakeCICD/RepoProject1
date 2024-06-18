CREATE SCHEMA IF NOT EXISTS ORCHESTRATION;
CREATE OR ALTER TABLE ORCHESTRATION.MAINCONTROLTABLE (
	ID NUMBER(38,0) NOT NULL autoincrement start 1 increment 1 order COMMENT 'identity',
	PROJECT VARCHAR(100) NOT NULL,
	GOLDTABLE VARCHAR(100) NOT NULL,
	TRIGGERNAME VARCHAR(100) NOT NULL,
	TASKID NUMBER(38,0) NOT NULL,
	NEXTSTARTDATETIMEUTC VARCHAR(19) NOT NULL,
	NEXTENDDATETIMEUTC VARCHAR(19) NOT NULL,
	ENABLEDFLAG BOOLEAN NOT NULL,
	ERRORNOTIFICATIONEMAILS VARCHAR(100) NOT NULL,
	SUBSCRIPTIONID VARCHAR(36) NOT NULL,
	RESOURCEGROUP VARCHAR(100) NOT NULL,
    CONNECTIONSETTING VARCHAR(100) NOT NULL,
    SNOWFLAKESTOREDPROCEDURE VARCHAR(500) NOT NULL,
    ADDITIONALPARAMETERS VARCHAR NULL,
    UPDATEDATETIMEUTC VARCHAR(19) NOT NULL,
	constraint ORCHESTRATION_MAIN_UK unique (PROJECT, GOLDTABLE),
	constraint ORCHESTRATION_MAIN_PK primary key (ID)
);