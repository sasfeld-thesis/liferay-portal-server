create table Calendar (
	uuid_ varchar(75) null,
	calendarId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate datetime null,
	modifiedDate datetime null,
	resourceBlockId bigint,
	calendarResourceId bigint,
	name longtext null,
	description longtext null,
	timeZoneId varchar(75) null,
	color integer,
	defaultCalendar tinyint,
	enableComments tinyint,
	enableRatings tinyint
) engine InnoDB;

create table CalendarBooking (
	uuid_ varchar(75) null,
	calendarBookingId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate datetime null,
	modifiedDate datetime null,
	resourceBlockId bigint,
	calendarId bigint,
	calendarResourceId bigint,
	parentCalendarBookingId bigint,
	vEventUid varchar(255) null,
	title longtext null,
	description longtext null,
	location longtext null,
	startTime bigint,
	endTime bigint,
	allDay tinyint,
	recurrence longtext null,
	firstReminder bigint,
	firstReminderType varchar(75) null,
	secondReminder bigint,
	secondReminderType varchar(75) null,
	status integer,
	statusByUserId bigint,
	statusByUserName varchar(75) null,
	statusDate datetime null
) engine InnoDB;

create table CalendarNotificationTemplate (
	uuid_ varchar(75) null,
	calendarNotificationTemplateId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate datetime null,
	modifiedDate datetime null,
	calendarId bigint,
	notificationType varchar(75) null,
	notificationTypeSettings varchar(75) null,
	notificationTemplateType varchar(75) null,
	subject varchar(75) null,
	body longtext null
) engine InnoDB;

create table CalendarResource (
	uuid_ varchar(75) null,
	calendarResourceId bigint not null primary key,
	groupId bigint,
	companyId bigint,
	userId bigint,
	userName varchar(75) null,
	createDate datetime null,
	modifiedDate datetime null,
	resourceBlockId bigint,
	classNameId bigint,
	classPK bigint,
	classUuid varchar(75) null,
	code_ varchar(75) null,
	name longtext null,
	description longtext null,
	active_ tinyint
) engine InnoDB;