-- Creation of appuser table
CREATE SEQUENCE seq_appuser_id START 1;

CREATE TABLE appuser (
	id int8 NOT NULL,
	username varchar(50) NOT NULL,
	email varchar(255) UNIQUE NOT NULL,
	firstname varchar(100) NOT NULL,
	lastname varchar(255) NULL,
	biography text NULL,
	creationdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	isactive bool NOT NULL DEFAULT true,
	CONSTRAINT appuser_pkey PRIMARY KEY (id),
  CONSTRAINT appuser_mail_uk UNIQUE(email),
  CONSTRAINT appuser_username_uk UNIQUE(username)
);

-- Creation of failed message table
CREATE SEQUENCE seq_failedmsg_id START 1;

CREATE TABLE failedmessage (
	id int8 NOT NULL,
	correlationid varchar(100) NULL,
	serializedpayload text NOT NULL,
	reason varchar(255) NULL,
	failedtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	isprocessed bool NOT NULL DEFAULT false,
	CONSTRAINT failedmessage_pkey PRIMARY KEY (id)
);

--Create User and set privileges
CREATE ROLE appuser WITH LOGIN PASSWORD 'Tq6y24Lt4NuAa4Fr';

GRANT ALL PRIVILEGES ON DATABASE postgres TO appuser;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO appuser;

GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO appuser;