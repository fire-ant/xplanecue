// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// +kubebuilder:skipversion
#Action: {
	arguments?: {[string]: null | string} @go(Arguments,map[string]*string)
	crawlerName?: null | string @go(CrawlerName,*string)
	jobName?:     null | string @go(JobName,*string)

	// Specifies configuration properties of a notification.
	notificationProperty?:  null | #NotificationProperty @go(NotificationProperty,*NotificationProperty)
	securityConfiguration?: null | string                @go(SecurityConfiguration,*string)
	timeout?:               null | int64                 @go(Timeout,*int64)
}

// +kubebuilder:skipversion
#AuditContext: {
	allColumnsRequested?: null | bool @go(AllColumnsRequested,*bool)
}

// +kubebuilder:skipversion
#BatchStopJobRunError: {
	jobName?: null | string @go(JobName,*string)
}

// +kubebuilder:skipversion
#BatchStopJobRunSuccessfulSubmission: {
	jobName?: null | string @go(JobName,*string)
}

// +kubebuilder:skipversion
#Blueprint: {
	blueprintLocation?:        null | string       @go(BlueprintLocation,*string)
	blueprintServiceLocation?: null | string       @go(BlueprintServiceLocation,*string)
	createdOn?:                null | metav1.#Time @go(CreatedOn,*metav1.Time)
	lastModifiedOn?:           null | metav1.#Time @go(LastModifiedOn,*metav1.Time)
}

// +kubebuilder:skipversion
#BlueprintRun: {
	completedOn?:  null | metav1.#Time @go(CompletedOn,*metav1.Time)
	startedOn?:    null | metav1.#Time @go(StartedOn,*metav1.Time)
	workflowName?: null | string       @go(WorkflowName,*string)
}

// +kubebuilder:skipversion
#CatalogEntry: {
	databaseName?: null | string @go(DatabaseName,*string)
	tableName?:    null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#CatalogImportStatus: {
	importCompleted?: null | bool         @go(ImportCompleted,*bool)
	importTime?:      null | metav1.#Time @go(ImportTime,*metav1.Time)
	importedBy?:      null | string       @go(ImportedBy,*string)
}

// +kubebuilder:skipversion
#CatalogTarget: {
	connectionName?: null | string @go(ConnectionName,*string)
	databaseName?:   null | string @go(DatabaseName,*string)
	tables?: [...null | string] @go(Tables,[]*string)
}

// +kubebuilder:skipversion
#Classifier_SDK: {
	// A classifier for custom CSV content.
	csvClassifier?: null | #CsvClassifier @go(CsvClassifier,*CsvClassifier)

	// A classifier that uses grok patterns.
	grokClassifier?: null | #GrokClassifier @go(GrokClassifier,*GrokClassifier)

	// A classifier for JSON content.
	jsonClassifier?: null | #JSONClassifier @go(JSONClassifier,*JSONClassifier)

	// A classifier for XML content.
	xmlClassifier?: null | #XMLClassifier @go(XMLClassifier,*XMLClassifier)
}

// +kubebuilder:skipversion
#CloudWatchEncryption: {
	cloudWatchEncryptionMode?: null | string @go(CloudWatchEncryptionMode,*string)
	kmsKeyARN?:                null | string @go(KMSKeyARN,*string)
}

// +kubebuilder:skipversion
#CodeGenNodeArg: {
	param?: null | bool @go(Param,*bool)
}

// +kubebuilder:skipversion
#Column: {
	name?: null | string @go(Name,*string)
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

// +kubebuilder:skipversion
#ColumnError: {
	columnName?: null | string @go(ColumnName,*string)
}

// +kubebuilder:skipversion
#ColumnImportance: {
	columnName?: null | string @go(ColumnName,*string)
}

// +kubebuilder:skipversion
#ColumnRowFilter: {
	columnName?: null | string @go(ColumnName,*string)
}

// +kubebuilder:skipversion
#ColumnStatistics: {
	analyzedTime?: null | metav1.#Time @go(AnalyzedTime,*metav1.Time)
	columnName?:   null | string       @go(ColumnName,*string)
}

// +kubebuilder:skipversion
#Condition: {
	crawlerName?: null | string @go(CrawlerName,*string)
	jobName?:     null | string @go(JobName,*string)
}

// +kubebuilder:skipversion
#ConnectionInput: {
	connectionProperties?: {[string]: null | string} @go(ConnectionProperties,map[string]*string)
	connectionType?: null | string @go(ConnectionType,*string)
	description?:    null | string @go(Description,*string)
	matchCriteria?: [...null | string] @go(MatchCriteria,[]*string)
	name?: null | string @go(Name,*string)

	// Specifies the physical requirements for a connection.
	physicalConnectionRequirements?: null | #PhysicalConnectionRequirements @go(PhysicalConnectionRequirements,*PhysicalConnectionRequirements)
}

// +kubebuilder:skipversion
#ConnectionPasswordEncryption: {
	awsKMSKeyID?:                       null | string @go(AWSKMSKeyID,*string)
	returnConnectionPasswordEncrypted?: null | bool   @go(ReturnConnectionPasswordEncrypted,*bool)
}

// +kubebuilder:skipversion
#Connection_SDK: {
	connectionProperties?: {[string]: null | string} @go(ConnectionProperties,map[string]*string)
	connectionType?:  null | string       @go(ConnectionType,*string)
	creationTime?:    null | metav1.#Time @go(CreationTime,*metav1.Time)
	description?:     null | string       @go(Description,*string)
	lastUpdatedBy?:   null | string       @go(LastUpdatedBy,*string)
	lastUpdatedTime?: null | metav1.#Time @go(LastUpdatedTime,*metav1.Time)
	matchCriteria?: [...null | string] @go(MatchCriteria,[]*string)
	name?: null | string @go(Name,*string)

	// Specifies the physical requirements for a connection.
	physicalConnectionRequirements?: null | #PhysicalConnectionRequirements @go(PhysicalConnectionRequirements,*PhysicalConnectionRequirements)
}

// +kubebuilder:skipversion
#ConnectionsList: {
	connections?: [...null | string] @go(Connections,[]*string)
}

// +kubebuilder:skipversion
#Crawl: {
	completedOn?:  null | metav1.#Time @go(CompletedOn,*metav1.Time)
	errorMessage?: null | string       @go(ErrorMessage,*string)
	logGroup?:     null | string       @go(LogGroup,*string)
	logStream?:    null | string       @go(LogStream,*string)
	startedOn?:    null | metav1.#Time @go(StartedOn,*metav1.Time)
}

// +kubebuilder:skipversion
#CrawlerMetrics: {
	crawlerName?:     null | string @go(CrawlerName,*string)
	stillEstimating?: null | bool   @go(StillEstimating,*bool)
}

// +kubebuilder:skipversion
#CrawlerTargets: {
	catalogTargets?: [...null | #CatalogTarget] @go(CatalogTargets,[]*CatalogTarget)
	deltaTargets?: [...null | #DeltaTarget] @go(DeltaTargets,[]*DeltaTarget)
	dynamoDBTargets?: [...null | #DynamoDBTarget] @go(DynamoDBTargets,[]*DynamoDBTarget)
	jdbcTargets?: [...null | #JdbcTarget] @go(JdbcTargets,[]*JdbcTarget)
	mongoDBTargets?: [...null | #MongoDBTarget] @go(MongoDBTargets,[]*MongoDBTarget)
	s3Targets?: [...null | #S3Target] @go(S3Targets,[]*S3Target)
}

// +kubebuilder:skipversion
#Crawler_SDK: {
	classifiers?: [...null | string] @go(Classifiers,[]*string)
	configuration?:                null | string                      @go(Configuration,*string)
	crawlElapsedTime?:             null | int64                       @go(CrawlElapsedTime,*int64)
	crawlerSecurityConfiguration?: null | string                      @go(CrawlerSecurityConfiguration,*string)
	creationTime?:                 null | metav1.#Time                @go(CreationTime,*metav1.Time)
	databaseName?:                 null | string                      @go(DatabaseName,*string)
	description?:                  null | string                      @go(Description,*string)
	lakeFormationConfiguration?:   null | #LakeFormationConfiguration @go(LakeFormationConfiguration,*LakeFormationConfiguration)

	// Status and error information about the most recent crawl.
	lastCrawl?:   null | #LastCrawlInfo @go(LastCrawl,*LastCrawlInfo)
	lastUpdated?: null | metav1.#Time   @go(LastUpdated,*metav1.Time)

	// Specifies data lineage configuration settings for the crawler.
	lineageConfiguration?: null | #LineageConfiguration @go(LineageConfiguration,*LineageConfiguration)
	name?:                 null | string                @go(Name,*string)

	// When crawling an Amazon S3 data source after the first crawl is complete,
	// specifies whether to crawl the entire dataset again or to crawl only folders
	// that were added since the last crawler run. For more information, see Incremental
	// Crawls in Glue (https://docs.aws.amazon.com/glue/latest/dg/incremental-crawls.html)
	// in the developer guide.
	recrawlPolicy?: null | #RecrawlPolicy @go(RecrawlPolicy,*RecrawlPolicy)
	role?:          null | string         @go(Role,*string)

	// A scheduling object using a cron statement to schedule an event.
	schedule?: null | #Schedule @go(Schedule,*Schedule)

	// A policy that specifies update and deletion behaviors for the crawler.
	schemaChangePolicy?: null | #SchemaChangePolicy @go(SchemaChangePolicy,*SchemaChangePolicy)
	state?:              null | string              @go(State,*string)
	tablePrefix?:        null | string              @go(TablePrefix,*string)

	// Specifies data stores to crawl.
	targets?: null | #CrawlerTargets @go(Targets,*CrawlerTargets)
	version?: null | int64           @go(Version,*int64)
}

// +kubebuilder:skipversion
#CreateCsvClassifierRequest: {
	allowSingleColumn?:    null | bool   @go(AllowSingleColumn,*bool)
	containsHeader?:       null | string @go(ContainsHeader,*string)
	delimiter?:            null | string @go(Delimiter,*string)
	disableValueTrimming?: null | bool   @go(DisableValueTrimming,*bool)
	header?: [...null | string] @go(Header,[]*string)
	name?:        null | string @go(Name,*string)
	quoteSymbol?: null | string @go(QuoteSymbol,*string)
}

// +kubebuilder:skipversion
#CreateGrokClassifierRequest: {
	classification?: null | string @go(Classification,*string)
	customPatterns?: null | string @go(CustomPatterns,*string)
	grokPattern?:    null | string @go(GrokPattern,*string)
	name?:           null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#CreateJSONClassifierRequest: {
	jsonPath?: null | string @go(JSONPath,*string)
	name?:     null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#CreateXMLClassifierRequest: {
	classification?: null | string @go(Classification,*string)
	name?:           null | string @go(Name,*string)
	rowTag?:         null | string @go(RowTag,*string)
}

// +kubebuilder:skipversion
#CsvClassifier: {
	allowSingleColumn?:    null | bool         @go(AllowSingleColumn,*bool)
	containsHeader?:       null | string       @go(ContainsHeader,*string)
	creationTime?:         null | metav1.#Time @go(CreationTime,*metav1.Time)
	delimiter?:            null | string       @go(Delimiter,*string)
	disableValueTrimming?: null | bool         @go(DisableValueTrimming,*bool)
	header?: [...null | string] @go(Header,[]*string)
	lastUpdated?: null | metav1.#Time @go(LastUpdated,*metav1.Time)
	name?:        null | string       @go(Name,*string)
	quoteSymbol?: null | string       @go(QuoteSymbol,*string)
	version?:     null | int64        @go(Version,*int64)
}

// +kubebuilder:skipversion
#CustomEntityType: {
	name?:        null | string @go(Name,*string)
	regexString?: null | string @go(RegexString,*string)
}

// +kubebuilder:skipversion
#DataLakePrincipal: {
	dataLakePrincipalIdentifier?: null | string @go(DataLakePrincipalIdentifier,*string)
}

// +kubebuilder:skipversion
#DatabaseIdentifier: {
	catalogID?:    null | string @go(CatalogID,*string)
	databaseName?: null | string @go(DatabaseName,*string)
}

// +kubebuilder:skipversion
#DatabaseInput: {
	createTableDefaultPermissions?: [...null | #PrincipalPermissions] @go(CreateTableDefaultPermissions,[]*PrincipalPermissions)
	description?: null | string @go(Description,*string)
	locationURI?: null | string @go(LocationURI,*string)
	name?:        null | string @go(Name,*string)
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// A structure that describes a target database for resource linking.
	targetDatabase?: null | #DatabaseIdentifier @go(TargetDatabase,*DatabaseIdentifier)
}

// +kubebuilder:skipversion
#Database_SDK: {
	catalogID?: null | string @go(CatalogID,*string)
	createTableDefaultPermissions?: [...null | #PrincipalPermissions] @go(CreateTableDefaultPermissions,[]*PrincipalPermissions)
	createTime?:  null | metav1.#Time @go(CreateTime,*metav1.Time)
	description?: null | string       @go(Description,*string)
	locationURI?: null | string       @go(LocationURI,*string)
	name?:        null | string       @go(Name,*string)
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// A structure that describes a target database for resource linking.
	targetDatabase?: null | #DatabaseIdentifier @go(TargetDatabase,*DatabaseIdentifier)
}

// +kubebuilder:skipversion
#DateColumnStatisticsData: {
	maximumValue?: null | metav1.#Time @go(MaximumValue,*metav1.Time)
	minimumValue?: null | metav1.#Time @go(MinimumValue,*metav1.Time)
}

// +kubebuilder:skipversion
#DeltaTarget: {
	connectionName?: null | string @go(ConnectionName,*string)
	deltaTables?: [...null | string] @go(DeltaTables,[]*string)
	writeManifest?: null | bool @go(WriteManifest,*bool)
}

// +kubebuilder:skipversion
#DevEndpoint: {
	availabilityZone?:                   null | string       @go(AvailabilityZone,*string)
	createdTimestamp?:                   null | metav1.#Time @go(CreatedTimestamp,*metav1.Time)
	endpointName?:                       null | string       @go(EndpointName,*string)
	extraJarsS3Path?:                    null | string       @go(ExtraJarsS3Path,*string)
	extraPythonLibsS3Path?:              null | string       @go(ExtraPythonLibsS3Path,*string)
	failureReason?:                      null | string       @go(FailureReason,*string)
	glueVersion?:                        null | string       @go(GlueVersion,*string)
	lastModifiedTimestamp?:              null | metav1.#Time @go(LastModifiedTimestamp,*metav1.Time)
	lastUpdateStatus?:                   null | string       @go(LastUpdateStatus,*string)
	numberOfNodes?:                      null | int64        @go(NumberOfNodes,*int64)
	numberOfWorkers?:                    null | int64        @go(NumberOfWorkers,*int64)
	privateAddress?:                     null | string       @go(PrivateAddress,*string)
	publicAddress?:                      null | string       @go(PublicAddress,*string)
	publicKey?:                          null | string       @go(PublicKey,*string)
	securityConfiguration?:              null | string       @go(SecurityConfiguration,*string)
	status?:                             null | string       @go(Status,*string)
	subnetID?:                           null | string       @go(SubnetID,*string)
	vpcID?:                              null | string       @go(VPCID,*string)
	workerType?:                         null | string       @go(WorkerType,*string)
	yarnEndpointAddress?:                null | string       @go(YarnEndpointAddress,*string)
	zeppelinRemoteSparkInterpreterPort?: null | int64        @go(ZeppelinRemoteSparkInterpreterPort,*int64)
}

// +kubebuilder:skipversion
#DevEndpointCustomLibraries: {
	extraJarsS3Path?:       null | string @go(ExtraJarsS3Path,*string)
	extraPythonLibsS3Path?: null | string @go(ExtraPythonLibsS3Path,*string)
}

// +kubebuilder:skipversion
#DynamoDBTarget: {
	path?:     null | string  @go(Path,*string)
	scanAll?:  null | bool    @go(ScanAll,*bool)
	scanRate?: null | float64 @go(ScanRate,*float64)
}

// +kubebuilder:skipversion
#Edge: {
	destinationID?: null | string @go(DestinationID,*string)
	sourceID?:      null | string @go(SourceID,*string)
}

// +kubebuilder:skipversion
#EncryptionAtRest: {
	sseAWSKMSKeyID?: null | string @go(SSEAWSKMSKeyID,*string)
}

// +kubebuilder:skipversion
#EncryptionConfiguration: {
	// Specifies how Amazon CloudWatch data should be encrypted.
	cloudWatchEncryption?: null | #CloudWatchEncryption @go(CloudWatchEncryption,*CloudWatchEncryption)

	// Specifies how job bookmark data should be encrypted.
	jobBookmarksEncryption?: null | #JobBookmarksEncryption @go(JobBookmarksEncryption,*JobBookmarksEncryption)
	s3Encryption?: [...null | #S3Encryption] @go(S3Encryption,[]*S3Encryption)
}

// +kubebuilder:skipversion
#ErrorDetail: {
	errorCode?:    null | string @go(ErrorCode,*string)
	errorMessage?: null | string @go(ErrorMessage,*string)
}

// +kubebuilder:skipversion
#ExecutionProperty: {
	maxConcurrentRuns?: null | int64 @go(MaxConcurrentRuns,*int64)
}

// +kubebuilder:skipversion
#ExportLabelsTaskRunProperties: {
	outputS3Path?: null | string @go(OutputS3Path,*string)
}

// +kubebuilder:skipversion
#FindMatchesParameters: {
	enforceProvidedLabels?: null | bool @go(EnforceProvidedLabels,*bool)
}

// +kubebuilder:skipversion
#FindMatchesTaskRunProperties: {
	jobName?: null | string @go(JobName,*string)
}

// +kubebuilder:skipversion
#GetConnectionsFilter: {
	connectionType?: null | string @go(ConnectionType,*string)
	matchCriteria?: [...null | string] @go(MatchCriteria,[]*string)
}

// +kubebuilder:skipversion
#GluePolicy: {
	createTime?: null | metav1.#Time @go(CreateTime,*metav1.Time)
	updateTime?: null | metav1.#Time @go(UpdateTime,*metav1.Time)
}

// +kubebuilder:skipversion
#GrokClassifier: {
	classification?: null | string       @go(Classification,*string)
	creationTime?:   null | metav1.#Time @go(CreationTime,*metav1.Time)
	customPatterns?: null | string       @go(CustomPatterns,*string)
	grokPattern?:    null | string       @go(GrokPattern,*string)
	lastUpdated?:    null | metav1.#Time @go(LastUpdated,*metav1.Time)
	name?:           null | string       @go(Name,*string)
	version?:        null | int64        @go(Version,*int64)
}

// +kubebuilder:skipversion
#ImportLabelsTaskRunProperties: {
	inputS3Path?: null | string @go(InputS3Path,*string)
}

// +kubebuilder:skipversion
#JSONClassifier: {
	creationTime?: null | metav1.#Time @go(CreationTime,*metav1.Time)
	jsonPath?:     null | string       @go(JSONPath,*string)
	lastUpdated?:  null | metav1.#Time @go(LastUpdated,*metav1.Time)
	name?:         null | string       @go(Name,*string)
	version?:      null | int64        @go(Version,*int64)
}

// +kubebuilder:skipversion
#JdbcTarget: {
	connectionName?: null | string @go(ConnectionName,*string)
	exclusions?: [...null | string] @go(Exclusions,[]*string)
	path?: null | string @go(Path,*string)
}

// +kubebuilder:skipversion
#JobBookmarkEntry: {
	attempt?: null | int64 @go(Attempt,*int64)
	run?:     null | int64 @go(Run,*int64)
	version?: null | int64 @go(Version,*int64)
}

// +kubebuilder:skipversion
#JobBookmarksEncryption: {
	jobBookmarksEncryptionMode?: null | string @go(JobBookmarksEncryptionMode,*string)
	kmsKeyARN?:                  null | string @go(KMSKeyARN,*string)
}

// +kubebuilder:skipversion
#JobCommand: {
	name?:           null | string @go(Name,*string)
	pythonVersion?:  null | string @go(PythonVersion,*string)
	scriptLocation?: null | string @go(ScriptLocation,*string)
}

// +kubebuilder:skipversion
#JobRun: {
	allocatedCapacity?: null | int64 @go(AllocatedCapacity,*int64)
	arguments?: {[string]: null | string} @go(Arguments,map[string]*string)
	completedOn?:    null | metav1.#Time @go(CompletedOn,*metav1.Time)
	dPUSeconds?:     null | float64      @go(DPUSeconds,*float64)
	glueVersion?:    null | string       @go(GlueVersion,*string)
	jobName?:        null | string       @go(JobName,*string)
	lastModifiedOn?: null | metav1.#Time @go(LastModifiedOn,*metav1.Time)
	logGroupName?:   null | string       @go(LogGroupName,*string)
	maxCapacity?:    null | float64      @go(MaxCapacity,*float64)

	// Specifies configuration properties of a notification.
	notificationProperty?:  null | #NotificationProperty @go(NotificationProperty,*NotificationProperty)
	numberOfWorkers?:       null | int64                 @go(NumberOfWorkers,*int64)
	securityConfiguration?: null | string                @go(SecurityConfiguration,*string)
	startedOn?:             null | metav1.#Time          @go(StartedOn,*metav1.Time)
	timeout?:               null | int64                 @go(Timeout,*int64)
	triggerName?:           null | string                @go(TriggerName,*string)
	workerType?:            null | string                @go(WorkerType,*string)
}

// +kubebuilder:skipversion
#JobUpdate: {
	allocatedCapacity?: null | int64 @go(AllocatedCapacity,*int64)

	// Specifies code that runs when a job is run.
	command?: null | #JobCommand @go(Command,*JobCommand)

	// Specifies the connections used by a job.
	connections?: null | #ConnectionsList @go(Connections,*ConnectionsList)
	defaultArguments?: {[string]: null | string} @go(DefaultArguments,map[string]*string)
	description?: null | string @go(Description,*string)

	// An execution property of a job.
	executionProperty?: null | #ExecutionProperty @go(ExecutionProperty,*ExecutionProperty)
	glueVersion?:       null | string             @go(GlueVersion,*string)
	logURI?:            null | string             @go(LogURI,*string)
	maxCapacity?:       null | float64            @go(MaxCapacity,*float64)
	maxRetries?:        null | int64              @go(MaxRetries,*int64)
	nonOverridableArguments?: {[string]: null | string} @go(NonOverridableArguments,map[string]*string)

	// Specifies configuration properties of a notification.
	notificationProperty?:  null | #NotificationProperty @go(NotificationProperty,*NotificationProperty)
	numberOfWorkers?:       null | int64                 @go(NumberOfWorkers,*int64)
	role?:                  null | string                @go(Role,*string)
	securityConfiguration?: null | string                @go(SecurityConfiguration,*string)
	timeout?:               null | int64                 @go(Timeout,*int64)
	workerType?:            null | string                @go(WorkerType,*string)
}

// +kubebuilder:skipversion
#Job_SDK: {
	allocatedCapacity?: null | int64 @go(AllocatedCapacity,*int64)

	// Specifies code that runs when a job is run.
	command?: null | #JobCommand @go(Command,*JobCommand)

	// Specifies the connections used by a job.
	connections?: null | #ConnectionsList @go(Connections,*ConnectionsList)
	createdOn?:   null | metav1.#Time     @go(CreatedOn,*metav1.Time)
	defaultArguments?: {[string]: null | string} @go(DefaultArguments,map[string]*string)
	description?: null | string @go(Description,*string)

	// An execution property of a job.
	executionProperty?: null | #ExecutionProperty @go(ExecutionProperty,*ExecutionProperty)
	glueVersion?:       null | string             @go(GlueVersion,*string)
	lastModifiedOn?:    null | metav1.#Time       @go(LastModifiedOn,*metav1.Time)
	logURI?:            null | string             @go(LogURI,*string)
	maxCapacity?:       null | float64            @go(MaxCapacity,*float64)
	maxRetries?:        null | int64              @go(MaxRetries,*int64)
	name?:              null | string             @go(Name,*string)
	nonOverridableArguments?: {[string]: null | string} @go(NonOverridableArguments,map[string]*string)

	// Specifies configuration properties of a notification.
	notificationProperty?:  null | #NotificationProperty @go(NotificationProperty,*NotificationProperty)
	numberOfWorkers?:       null | int64                 @go(NumberOfWorkers,*int64)
	role?:                  null | string                @go(Role,*string)
	securityConfiguration?: null | string                @go(SecurityConfiguration,*string)
	timeout?:               null | int64                 @go(Timeout,*int64)
	workerType?:            null | string                @go(WorkerType,*string)
}

// +kubebuilder:skipversion
#KeySchemaElement: {
	name?: null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#LabelingSetGenerationTaskRunProperties: {
	outputS3Path?: null | string @go(OutputS3Path,*string)
}

// +kubebuilder:skipversion
#LakeFormationConfiguration: {
	accountID?:                   null | string @go(AccountID,*string)
	useLakeFormationCredentials?: null | bool   @go(UseLakeFormationCredentials,*bool)
}

// +kubebuilder:skipversion
#LastActiveDefinition: {
	blueprintLocation?:        null | string       @go(BlueprintLocation,*string)
	blueprintServiceLocation?: null | string       @go(BlueprintServiceLocation,*string)
	lastModifiedOn?:           null | metav1.#Time @go(LastModifiedOn,*metav1.Time)
}

// +kubebuilder:skipversion
#LastCrawlInfo: {
	errorMessage?:  null | string       @go(ErrorMessage,*string)
	logGroup?:      null | string       @go(LogGroup,*string)
	logStream?:     null | string       @go(LogStream,*string)
	messagePrefix?: null | string       @go(MessagePrefix,*string)
	startTime?:     null | metav1.#Time @go(StartTime,*metav1.Time)
	status?:        null | string       @go(Status,*string)
}

// +kubebuilder:skipversion
#LineageConfiguration: {
	crawlerLineageSettings?: null | string @go(CrawlerLineageSettings,*string)
}

// +kubebuilder:skipversion
#MLTransform: {
	createdOn?:       null | metav1.#Time @go(CreatedOn,*metav1.Time)
	description?:     null | string       @go(Description,*string)
	glueVersion?:     null | string       @go(GlueVersion,*string)
	lastModifiedOn?:  null | metav1.#Time @go(LastModifiedOn,*metav1.Time)
	maxCapacity?:     null | float64      @go(MaxCapacity,*float64)
	maxRetries?:      null | int64        @go(MaxRetries,*int64)
	name?:            null | string       @go(Name,*string)
	numberOfWorkers?: null | int64        @go(NumberOfWorkers,*int64)
	role?:            null | string       @go(Role,*string)
	timeout?:         null | int64        @go(Timeout,*int64)
	workerType?:      null | string       @go(WorkerType,*string)
}

// +kubebuilder:skipversion
#MLUserDataEncryption: {
	kmsKeyID?: null | string @go(KMSKeyID,*string)
}

// +kubebuilder:skipversion
#MongoDBTarget: {
	connectionName?: null | string @go(ConnectionName,*string)
	path?:           null | string @go(Path,*string)
	scanAll?:        null | bool   @go(ScanAll,*bool)
}

// +kubebuilder:skipversion
#Node: {
	name?:     null | string @go(Name,*string)
	uniqueID?: null | string @go(UniqueID,*string)
}

// +kubebuilder:skipversion
#NotificationProperty: {
	notifyDelayAfter?: null | int64 @go(NotifyDelayAfter,*int64)
}

// +kubebuilder:skipversion
#Order: {
	column?: null | string @go(Column,*string)
}

// +kubebuilder:skipversion
#Partition: {
	catalogID?:        null | string       @go(CatalogID,*string)
	creationTime?:     null | metav1.#Time @go(CreationTime,*metav1.Time)
	databaseName?:     null | string       @go(DatabaseName,*string)
	lastAccessTime?:   null | metav1.#Time @go(LastAccessTime,*metav1.Time)
	lastAnalyzedTime?: null | metav1.#Time @go(LastAnalyzedTime,*metav1.Time)
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#PartitionIndex: {
	indexName?: null | string @go(IndexName,*string)
}

// +kubebuilder:skipversion
#PartitionIndexDescriptor: {
	indexName?: null | string @go(IndexName,*string)
}

// +kubebuilder:skipversion
#PartitionInput: {
	lastAccessTime?:   null | metav1.#Time @go(LastAccessTime,*metav1.Time)
	lastAnalyzedTime?: null | metav1.#Time @go(LastAnalyzedTime,*metav1.Time)
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

// +kubebuilder:skipversion
#PhysicalConnectionRequirements: {
	availabilityZone?: null | string @go(AvailabilityZone,*string)
	securityGroupIDList?: [...null | string] @go(SecurityGroupIDList,[]*string)
	subnetID?: null | string @go(SubnetID,*string)
}

// +kubebuilder:skipversion
#Predecessor: {
	jobName?: null | string @go(JobName,*string)
}

// +kubebuilder:skipversion
#PrincipalPermissions: {
	permissions?: [...null | string] @go(Permissions,[]*string)

	// The Lake Formation principal.
	principal?: null | #DataLakePrincipal @go(Principal,*DataLakePrincipal)
}

// +kubebuilder:skipversion
#PropertyPredicate: {
	key?:   null | string @go(Key,*string)
	value?: null | string @go(Value,*string)
}

// +kubebuilder:skipversion
#RecrawlPolicy: {
	recrawlBehavior?: null | string @go(RecrawlBehavior,*string)
}

// +kubebuilder:skipversion
#RegistryListItem: {
	description?: null | string @go(Description,*string)
}

// +kubebuilder:skipversion
#ResourceURI: {
	uri?: null | string @go(URI,*string)
}

// +kubebuilder:skipversion
#S3Encryption: {
	kmsKeyARN?:        null | string @go(KMSKeyARN,*string)
	s3EncryptionMode?: null | string @go(S3EncryptionMode,*string)
}

// +kubebuilder:skipversion
#S3Target: {
	connectionName?:   null | string @go(ConnectionName,*string)
	dlqEventQueueARN?: null | string @go(DlqEventQueueARN,*string)
	eventQueueARN?:    null | string @go(EventQueueARN,*string)
	exclusions?: [...null | string] @go(Exclusions,[]*string)
	path?:       null | string @go(Path,*string)
	sampleSize?: null | int64  @go(SampleSize,*int64)
}

// +kubebuilder:skipversion
#Schedule: {
	scheduleExpression?: null | string @go(ScheduleExpression,*string)
	state?:              null | string @go(State,*string)
}

// +kubebuilder:skipversion
#SchemaChangePolicy: {
	deleteBehavior?: null | string @go(DeleteBehavior,*string)
	updateBehavior?: null | string @go(UpdateBehavior,*string)
}

// +kubebuilder:skipversion
#SchemaListItem: {
	description?: null | string @go(Description,*string)
}

// +kubebuilder:skipversion
#SecurityConfiguration_SDK: {
	createdTimeStamp?: null | metav1.#Time @go(CreatedTimeStamp,*metav1.Time)

	// Specifies an encryption configuration.
	encryptionConfiguration?: null | #EncryptionConfiguration @go(EncryptionConfiguration,*EncryptionConfiguration)
	name?:                    null | string                   @go(Name,*string)
}

// +kubebuilder:skipversion
#SerDeInfo: {
	name?: null | string @go(Name,*string)
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
	serializationLibrary?: null | string @go(SerializationLibrary,*string)
}

// +kubebuilder:skipversion
#Session: {
	// Specifies the connections used by a job.
	connections?:           null | #ConnectionsList @go(Connections,*ConnectionsList)
	createdOn?:             null | metav1.#Time     @go(CreatedOn,*metav1.Time)
	description?:           null | string           @go(Description,*string)
	errorMessage?:          null | string           @go(ErrorMessage,*string)
	glueVersion?:           null | string           @go(GlueVersion,*string)
	id?:                    null | string           @go(ID,*string)
	maxCapacity?:           null | float64          @go(MaxCapacity,*float64)
	securityConfiguration?: null | string           @go(SecurityConfiguration,*string)
}

// +kubebuilder:skipversion
#SessionCommand: {
	name?:          null | string @go(Name,*string)
	pythonVersion?: null | string @go(PythonVersion,*string)
}

// +kubebuilder:skipversion
#SortCriterion: {
	fieldName?: null | string @go(FieldName,*string)
}

// +kubebuilder:skipversion
#StartingEventBatchCondition: {
	batchSize?:   null | int64 @go(BatchSize,*int64)
	batchWindow?: null | int64 @go(BatchWindow,*int64)
}

// +kubebuilder:skipversion
#Statement: {
	code?: null | string @go(Code,*string)
	id?:   null | int64  @go(ID,*int64)
}

// +kubebuilder:skipversion
#StatementOutput: {
	errorName?:      null | string @go(ErrorName,*string)
	errorValue?:     null | string @go(ErrorValue,*string)
	executionCount?: null | int64  @go(ExecutionCount,*int64)
	traceback?: [...null | string] @go(Traceback,[]*string)
}

// +kubebuilder:skipversion
#StatementOutputData: {
	textPlain?: null | string @go(TextPlain,*string)
}

// +kubebuilder:skipversion
#StorageDescriptor: {
	compressed?: null | bool @go(Compressed,*bool)
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
	storedAsSubDirectories?: null | bool @go(StoredAsSubDirectories,*bool)
}

// +kubebuilder:skipversion
#Table: {
	catalogID?:      null | string @go(CatalogID,*string)
	connectionName?: null | string @go(ConnectionName,*string)
	databaseName?:   null | string @go(DatabaseName,*string)
	tableName?:      null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#TableData: {
	catalogID?:                     null | string       @go(CatalogID,*string)
	createTime?:                    null | metav1.#Time @go(CreateTime,*metav1.Time)
	createdBy?:                     null | string       @go(CreatedBy,*string)
	databaseName?:                  null | string       @go(DatabaseName,*string)
	description?:                   null | string       @go(Description,*string)
	isRegisteredWithLakeFormation?: null | bool         @go(IsRegisteredWithLakeFormation,*bool)
	lastAccessTime?:                null | metav1.#Time @go(LastAccessTime,*metav1.Time)
	lastAnalyzedTime?:              null | metav1.#Time @go(LastAnalyzedTime,*metav1.Time)
	name?:                          null | string       @go(Name,*string)
	owner?:                         null | string       @go(Owner,*string)
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
	updateTime?: null | metav1.#Time @go(UpdateTime,*metav1.Time)
}

// +kubebuilder:skipversion
#TableError: {
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#TableIdentifier: {
	catalogID?:    null | string @go(CatalogID,*string)
	databaseName?: null | string @go(DatabaseName,*string)
	name?:         null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#TableInput: {
	description?:      null | string       @go(Description,*string)
	lastAccessTime?:   null | metav1.#Time @go(LastAccessTime,*metav1.Time)
	lastAnalyzedTime?: null | metav1.#Time @go(LastAnalyzedTime,*metav1.Time)
	name?:             null | string       @go(Name,*string)
	owner?:            null | string       @go(Owner,*string)
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

// +kubebuilder:skipversion
#TableVersionError: {
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#TaskRun: {
	completedOn?:    null | metav1.#Time @go(CompletedOn,*metav1.Time)
	errorString?:    null | string       @go(ErrorString,*string)
	lastModifiedOn?: null | metav1.#Time @go(LastModifiedOn,*metav1.Time)
	logGroupName?:   null | string       @go(LogGroupName,*string)
	startedOn?:      null | metav1.#Time @go(StartedOn,*metav1.Time)
}

// +kubebuilder:skipversion
#TaskRunFilterCriteria: {
	startedAfter?:  null | metav1.#Time @go(StartedAfter,*metav1.Time)
	startedBefore?: null | metav1.#Time @go(StartedBefore,*metav1.Time)
}

// +kubebuilder:skipversion
#TransformEncryption: {
	taskRunSecurityConfigurationName?: null | string @go(TaskRunSecurityConfigurationName,*string)
}

// +kubebuilder:skipversion
#TransformFilterCriteria: {
	createdAfter?:       null | metav1.#Time @go(CreatedAfter,*metav1.Time)
	createdBefore?:      null | metav1.#Time @go(CreatedBefore,*metav1.Time)
	glueVersion?:        null | string       @go(GlueVersion,*string)
	lastModifiedAfter?:  null | metav1.#Time @go(LastModifiedAfter,*metav1.Time)
	lastModifiedBefore?: null | metav1.#Time @go(LastModifiedBefore,*metav1.Time)
	name?:               null | string       @go(Name,*string)
}

// +kubebuilder:skipversion
#Trigger: {
	description?:  null | string @go(Description,*string)
	name?:         null | string @go(Name,*string)
	schedule?:     null | string @go(Schedule,*string)
	workflowName?: null | string @go(WorkflowName,*string)
}

// +kubebuilder:skipversion
#TriggerUpdate: {
	description?: null | string @go(Description,*string)
	name?:        null | string @go(Name,*string)
	schedule?:    null | string @go(Schedule,*string)
}

// +kubebuilder:skipversion
#UnfilteredPartition: {
	isRegisteredWithLakeFormation?: null | bool @go(IsRegisteredWithLakeFormation,*bool)
}

// +kubebuilder:skipversion
#UpdateCsvClassifierRequest: {
	allowSingleColumn?:    null | bool   @go(AllowSingleColumn,*bool)
	containsHeader?:       null | string @go(ContainsHeader,*string)
	delimiter?:            null | string @go(Delimiter,*string)
	disableValueTrimming?: null | bool   @go(DisableValueTrimming,*bool)
	header?: [...null | string] @go(Header,[]*string)
	name?:        null | string @go(Name,*string)
	quoteSymbol?: null | string @go(QuoteSymbol,*string)
}

// +kubebuilder:skipversion
#UpdateGrokClassifierRequest: {
	classification?: null | string @go(Classification,*string)
	customPatterns?: null | string @go(CustomPatterns,*string)
	grokPattern?:    null | string @go(GrokPattern,*string)
	name?:           null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#UpdateJSONClassifierRequest: {
	jsonPath?: null | string @go(JSONPath,*string)
	name?:     null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#UpdateXMLClassifierRequest: {
	classification?: null | string @go(Classification,*string)
	name?:           null | string @go(Name,*string)
	rowTag?:         null | string @go(RowTag,*string)
}

// +kubebuilder:skipversion
#UserDefinedFunction: {
	catalogID?:    null | string       @go(CatalogID,*string)
	className?:    null | string       @go(ClassName,*string)
	createTime?:   null | metav1.#Time @go(CreateTime,*metav1.Time)
	databaseName?: null | string       @go(DatabaseName,*string)
	functionName?: null | string       @go(FunctionName,*string)
	ownerName?:    null | string       @go(OwnerName,*string)
}

// +kubebuilder:skipversion
#UserDefinedFunctionInput: {
	className?:    null | string @go(ClassName,*string)
	functionName?: null | string @go(FunctionName,*string)
	ownerName?:    null | string @go(OwnerName,*string)
}

// +kubebuilder:skipversion
#Workflow: {
	createdOn?:         null | metav1.#Time @go(CreatedOn,*metav1.Time)
	description?:       null | string       @go(Description,*string)
	lastModifiedOn?:    null | metav1.#Time @go(LastModifiedOn,*metav1.Time)
	maxConcurrentRuns?: null | int64        @go(MaxConcurrentRuns,*int64)
	name?:              null | string       @go(Name,*string)
}

// +kubebuilder:skipversion
#WorkflowRun: {
	completedOn?: null | metav1.#Time @go(CompletedOn,*metav1.Time)
	name?:        null | string       @go(Name,*string)
	startedOn?:   null | metav1.#Time @go(StartedOn,*metav1.Time)
}

// +kubebuilder:skipversion
#WorkflowRunStatistics: {
	failedActions?:    null | int64 @go(FailedActions,*int64)
	runningActions?:   null | int64 @go(RunningActions,*int64)
	stoppedActions?:   null | int64 @go(StoppedActions,*int64)
	succeededActions?: null | int64 @go(SucceededActions,*int64)
	timeoutActions?:   null | int64 @go(TimeoutActions,*int64)
	totalActions?:     null | int64 @go(TotalActions,*int64)
}

// +kubebuilder:skipversion
#XMLClassifier: {
	classification?: null | string       @go(Classification,*string)
	creationTime?:   null | metav1.#Time @go(CreationTime,*metav1.Time)
	lastUpdated?:    null | metav1.#Time @go(LastUpdated,*metav1.Time)
	name?:           null | string       @go(Name,*string)
	rowTag?:         null | string       @go(RowTag,*string)
	version?:        null | int64        @go(Version,*int64)
}
