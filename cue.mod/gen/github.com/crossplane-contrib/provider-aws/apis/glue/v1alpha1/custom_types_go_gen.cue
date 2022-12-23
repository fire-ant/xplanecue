// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1

package v1alpha1

import xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"

// CustomJobParameters contains the additional fields for JobParameters.
#CustomJobParameters: {
	// The connections used for this job.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1.Connection
	// +crossplane:generate:reference:refFieldName=ConnectionRefs
	// +crossplane:generate:reference:selectorFieldName=ConnectionSelector
	connections?: [...null | string] @go(Connections,[]*string)

	// ConnectionRefs is a list of references to Connections used to set
	// the Connections.
	// +optional
	connectionRefs?: [...xpv1.#Reference] @go(ConnectionRefs,[]xpv1.Reference)

	// ConnectionsSelector selects references to Connections used
	// to set the Connections.
	// +optional
	connectionSelector?: null | xpv1.#Selector @go(ConnectionSelector,*xpv1.Selector)

	// The name or Amazon Resource Name (ARN) of the IAM role associated with this
	// job. Role is a required field
	// +immutable
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.RoleARN()
	// +crossplane:generate:reference:refFieldName=RoleRef
	// +crossplane:generate:reference:selectorFieldName=RoleSelector
	role?: string @go(Role)

	// RoleRef is a reference to an IAMRole used to set
	// the Role.
	// +immutable
	// +optional
	roleRef?: null | xpv1.#Reference @go(RoleRef,*xpv1.Reference)

	// RoleSelector selects references to IAMRole used
	// to set the Role.
	// +optional
	roleSelector?: null | xpv1.#Selector @go(RoleSelector,*xpv1.Selector)

	// The name of the SecurityConfiguration structure to be used with this job.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1.SecurityConfiguration
	// +crossplane:generate:reference:refFieldName=SecurityConfigurationRef
	// +crossplane:generate:reference:selectorFieldName=SecurityConfigurationSelector
	securityConfiguration?: null | string @go(SecurityConfiguration,*string)

	// SecurityConfigurationRef is a reference to an SecurityConfiguration used to set
	// the SecurityConfiguration.
	// +optional
	securityConfigurationRef?: null | xpv1.#Reference @go(SecurityConfigurationRef,*xpv1.Reference)

	// SecurityConfigurationSelector selects references to SecurityConfiguration used
	// to set the SecurityConfiguration.
	// +optional
	securityConfigurationSelector?: null | xpv1.#Selector @go(SecurityConfigurationSelector,*xpv1.Selector)
}

// CustomSecurityConfigurationParameters contains the additional fields for SecurityConfigurationParameters
#CustomSecurityConfigurationParameters: {
	// The encryption configuration for the new security configuration.
	encryptionConfiguration?: null | #CustomEncryptionConfiguration @go(CustomEncryptionConfiguration,*CustomEncryptionConfiguration)
}

// CustomEncryptionConfiguration contains the additional fields for EncryptionConfiguration
#CustomEncryptionConfiguration: {
	// Specifies how Amazon CloudWatch data should be encrypted.
	// +optional
	cloudWatchEncryption?: null | #CustomCloudWatchEncryption @go(CustomCloudWatchEncryption,*CustomCloudWatchEncryption)

	// Specifies how job bookmark data should be encrypted.
	// +optional
	jobBookmarksEncryption?: null | #CustomJobBookmarksEncryption @go(CustomJobBookmarksEncryption,*CustomJobBookmarksEncryption)

	// Specifies how Amazon Simple Storage Service (Amazon S3) data should be encrypted.
	// +optional
	s3Encryption?: [...null | #CustomS3Encryption] @go(CustomS3Encryption,[]*CustomS3Encryption)
}

// CustomS3Encryption contains the additional fields for S3Encryption
#CustomS3Encryption: {
	// The encryption mode to use for Amazon S3 data.
	// +kubebuilder:validation:Enum=DISABLED;SSE-KMS;SSE-S3
	s3EncryptionMode?: null | string @go(S3EncryptionMode,*string)

	// The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
	// +optional
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1.Key
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1.KMSKeyARN()
	// +crossplane:generate:reference:refFieldName=KMSKeyARNRef
	// +crossplane:generate:reference:selectorFieldName=KMSKeyARNSelector
	kmsKeyArn?: null | string @go(KMSKeyARN,*string)

	// KMSKeyARNRef is a reference to an KMSKey used to set the KMSKeyARN.
	// +optional
	kmsKeyArnRef?: null | xpv1.#Reference @go(KMSKeyARNRef,*xpv1.Reference)

	// KMSKeyARNSelector selects references to an KMSKey used to set the KMSKeyARN.
	// +optional
	kmsKeyArnSelector?: null | xpv1.#Selector @go(KMSKeyARNSelector,*xpv1.Selector)
}

// CustomJobBookmarksEncryption contains the additional fields for JobBookmarksEncryption
#CustomJobBookmarksEncryption: {
	// The encryption mode to use for job bookmarks data.
	// +kubebuilder:validation:Enum=DISABLED;CSE-KMS
	jobBookmarksEncryptionMode?: null | string @go(JobBookmarksEncryptionMode,*string)

	// The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1.Key
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1.KMSKeyARN()
	// +crossplane:generate:reference:refFieldName=KMSKeyARNRef
	// +crossplane:generate:reference:selectorFieldName=KMSKeyARNSelector
	kmsKeyArn?: null | string @go(KMSKeyARN,*string)

	// KMSKeyARNRef is a reference to an KMSKey used to set the KMSKeyARN.
	// +optional
	kmsKeyArnRef?: null | xpv1.#Reference @go(KMSKeyARNRef,*xpv1.Reference)

	// KMSKeyARNSelector selects references to an KMSKey used to set the KMSKeyARN.
	// +optional
	kmsKeyArnSelector?: null | xpv1.#Selector @go(KMSKeyARNSelector,*xpv1.Selector)
}

// CustomCloudWatchEncryption contains the additional fields for CloudWatchEncryption
#CustomCloudWatchEncryption: {
	// The encryption mode to use for CloudWatch data.
	// +kubebuilder:validation:Enum=DISABLED;SSE-KMS
	cloudWatchEncryptionMode?: null | string @go(CloudWatchEncryptionMode,*string)

	// The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1.Key
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1.KMSKeyARN()
	// +crossplane:generate:reference:refFieldName=KMSKeyARNRef
	// +crossplane:generate:reference:selectorFieldName=KMSKeyARNSelector
	kmsKeyArn?: null | string @go(KMSKeyARN,*string)

	// KMSKeyARNRef is a reference to an KMSKey used to set the KMSKeyARN.
	// +optional
	kmsKeyArnRef?: null | xpv1.#Reference @go(KMSKeyARNRef,*xpv1.Reference)

	// KMSKeyARNSelector selects references to an KMSKey used to set the KMSKeyARN.
	// +optional
	kmsKeyArnSelector?: null | xpv1.#Selector @go(KMSKeyARNSelector,*xpv1.Selector)
}

// CustomConnectionParameters contains the additional fields for ConnectionParameters
#CustomConnectionParameters: {
	// A ConnectionInput object defining the connection to create.
	connectionInput?: null | #CustomConnectionInput @go(CustomConnectionInput,*CustomConnectionInput)
}

// CustomConnectionInput contains the additional fields for ConnectionInput
#CustomConnectionInput: {
	// These key-value pairs define parameters for the connection.
	// Possible keys for connection properties:
	// "HOST"|"PORT"|"USERNAME"|"PASSWORD"|"ENCRYPTED_PASSWORD"|"JDBC_DRIVER_JAR_URI"
	// "JDBC_DRIVER_CLASS_NAME"|"JDBC_ENGINE"|"JDBC_ENGINE_VERSION"|"CONFIG_FILES"
	// "INSTANCE_ID"|"JDBC_CONNECTION_URL"|"JDBC_ENFORCE_SSL"|"CUSTOM_JDBC_CERT"
	// "SKIP_CUSTOM_JDBC_CERT_VALIDATION"|"CUSTOM_JDBC_CERT_STRING"|"CONNECTION_URL"
	// "KAFKA_BOOTSTRAP_SERVERS"|"KAFKA_SSL_ENABLED"|"KAFKA_CUSTOM_CERT"
	// "KAFKA_SKIP_CUSTOM_CERT_VALIDATION"|"KAFKA_CLIENT_KEYSTORE"
	// "KAFKA_CLIENT_KEYSTORE_PASSWORD"|"KAFKA_CLIENT_KEY_PASSWORD"
	// "ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD"|"ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD"
	// "SECRET_ID"|"CONNECTOR_URL"|"CONNECTOR_TYPE"|"CONNECTOR_CLASS_NAME"
	//
	// ConnectionProperties is a required field
	// +kubebuilder:validation:Required
	connectionProperties: {[string]: null | string} @go(ConnectionProperties,map[string]*string)

	// The type of the connection. Currently, these types are supported:
	//
	//    * JDBC - Designates a connection to a database through Java Database Connectivity
	//    (JDBC).
	//
	//    * KAFKA - Designates a connection to an Apache Kafka streaming platform.
	//
	//    * MONGODB - Designates a connection to a MongoDB document database.
	//
	//    * NETWORK - Designates a network connection to a data source within an
	//    Amazon Virtual Private Cloud environment (Amazon VPC).
	//
	//    * MARKETPLACE - Uses configuration settings contained in a connector purchased
	//    from Amazon Web Services Marketplace to read from and write to data stores
	//    that are not natively supported by Glue.
	//
	//    * CUSTOM - Uses configuration settings contained in a custom connector
	//    to read from and write to data stores that are not natively supported
	//    by Glue.
	//
	// SFTP is not supported.
	//
	// ConnectionType is a required field
	// +kubebuilder:validation:Required
	// +kubebuilder:validation:Enum=JDBC;KAFKA;MONGODB;NETWORK;MARKETPLACE;CUSTOM
	connectionType: string @go(ConnectionType)

	// The description of the connection.
	description?: null | string @go(Description,*string)

	// A list of criteria that can be used in selecting this connection.
	matchCriteria?: [...null | string] @go(MatchCriteria,[]*string)

	// Specifies the physical requirements for a connection.
	physicalConnectionRequirements?: null | #CustomPhysicalConnectionRequirements @go(CustomPhysicalConnectionRequirements,*CustomPhysicalConnectionRequirements)
}

// CustomPhysicalConnectionRequirements contains the additional fields for PhysicalConnectionRequirements
#CustomPhysicalConnectionRequirements: {
	// The connection's Availability Zone. This field is redundant because the specified
	// subnet implies the Availability Zone to be used. Currently the field must
	// be populated, but it will be removed in the future.
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// The security group ID list used by the connection.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=SecurityGroupIDRefs
	// +crossplane:generate:reference:selectorFieldName=SecurityGroupIDSelector
	securityGroupIdList?: [...string] @go(SecurityGroupIDList,[]string)

	// SecurityGroupIDRefs are references to SecurityGroups used to set
	// the SecurityGroupIDs.
	// +immutable
	// +optional
	securityGroupIdRefs?: [...xpv1.#Reference] @go(SecurityGroupIDRefs,[]xpv1.Reference)

	// SecurityGroupIDSelector selects references to SecurityGroups used
	// to set the SecurityGroupIDs.
	// +immutable
	// +optional
	securityGroupIdSelector?: null | xpv1.#Selector @go(SecurityGroupIDSelector,*xpv1.Selector)

	// The subnet ID used by the connection.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:refFieldName=SubnetIDRef
	// +crossplane:generate:reference:selectorFieldName=SubnetIDSelector
	subnetId?: null | string @go(SubnetID,*string)

	// SubnetIDRef is a reference to SubnetID used to set the SubnetID.
	// +immutable
	// +optional
	subnetIdRef?: null | xpv1.#Reference @go(SubnetIDRef,*xpv1.Reference)

	// SubnetIDSelector selects a reference to SubnetID used to set the SubnetID.
	// +immutable
	// +optional
	subnetIdSelector?: null | xpv1.#Selector @go(SubnetIDSelector,*xpv1.Selector)
}

// CustomDatabaseParameters contains the additional fields for DatabaseParameters
#CustomDatabaseParameters: {
	// The metadata for the database.
	databaseInput?: null | #CustomDatabaseInput @go(CustomDatabaseInput,*CustomDatabaseInput)
}

// CustomDatabaseInput contains the fields for DatabaseInput.
#CustomDatabaseInput: {
	// Creates a set of default permissions on the table for principals.
	// If left empty on creation, AWS defaults it to
	// [Permissions: ["All"], Principal: DataLake Prinicpal Identifier : "IAM_ALLOWED_PRINCIPALS"]
	createTableDefaultPermissions?: [...null | #PrincipalPermissions] @go(CreateTableDefaultPermissions,[]*PrincipalPermissions)

	// A description of the database.
	// +optional
	description?: null | string @go(Description,*string)

	// The location of the database (for example, an HDFS path).
	// +optional
	locationURI?: null | string @go(LocationURI,*string)

	// These key-value pairs define parameters and properties of the database.
	// +optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// A structure that describes a target database for resource linking.
	// +optional
	targetDatabase?: null | #DatabaseIdentifier @go(TargetDatabase,*DatabaseIdentifier)
}

// CustomCrawlerParameters contains the additional fields for CrawlerParameters
#CustomCrawlerParameters: {
	// A list of custom classifiers that the user has registered. By default, all
	// built-in classifiers are included in a crawl, but these custom classifiers
	// always override the default classifiers for a given classification.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1.Classifier
	// +crossplane:generate:reference:refFieldName=ClassifierRefs
	// +crossplane:generate:reference:selectorFieldName=ClassifierSelector
	classifiers?: [...null | string] @go(Classifiers,[]*string)

	// ClassifierRefs is a list of references to Classifiers used to set
	// the Classifiers.
	// +optional
	classifierRefs?: [...xpv1.#Reference] @go(ClassifierRefs,[]xpv1.Reference)

	// ClassifiersSelector selects references to Classifiers used
	// to set the Classifiers.
	// +optional
	classifierSelector?: null | xpv1.#Selector @go(ClassifierSelector,*xpv1.Selector)

	// The name of the SecurityConfiguration structure to be used by this crawler.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1.SecurityConfiguration
	// +crossplane:generate:reference:refFieldName=CrawlerSecurityConfigurationRef
	// +crossplane:generate:reference:selectorFieldName=CrawlerSecurityConfigurationSelector
	crawlerSecurityConfiguration?: null | string @go(CrawlerSecurityConfiguration,*string)

	// CrawlerSecurityConfigurationRef is a reference to an SecurityConfiguration used to set
	// the CrawlerSecurityConfiguration.
	// +optional
	crawlerSecurityConfigurationRef?: null | xpv1.#Reference @go(CrawlerSecurityConfigurationRef,*xpv1.Reference)

	// CrawlerSecurityConfigurationSelector selects references to SecurityConfiguration used
	// to set the CrawlerSecurityConfiguration.
	// +optional
	crawlerSecurityConfigurationSelector?: null | xpv1.#Selector @go(CrawlerSecurityConfigurationSelector,*xpv1.Selector)

	// The Glue database where results are written, such as: arn:aws:daylight:us-east-1::database/sometable/*.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1.Database
	// +crossplane:generate:reference:refFieldName=DatabaseNameRef
	// +crossplane:generate:reference:selectorFieldName=DatabaseNameSelector
	databaseName?: null | string @go(DatabaseName,*string)

	// DatabaseNameRef is a reference to an Database used to set
	// the DatabaseName.
	// +optional
	databaseNameRef?: null | xpv1.#Reference @go(DatabaseNameRef,*xpv1.Reference)

	// DatabaseNamesSelector selects references to Database used
	// to set the DatabaseName.
	// +optional
	databaseNameSelector?: null | xpv1.#Selector @go(DatabaseNameSelector,*xpv1.Selector)

	// The IAM role or Amazon Resource Name (ARN) of an IAM role used by the new
	// crawler to access customer resources.
	// AWS API seems to give just name of the role back (not ARN)
	// +immutable
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.RoleARN()
	// +crossplane:generate:reference:refFieldName=RoleRef
	// +crossplane:generate:reference:selectorFieldName=RoleSelector
	role?: string @go(Role)

	// RoleRef is a reference to an IAMRole used to set
	// the Role.
	// +immutable
	// +optional
	roleRef?: null | xpv1.#Reference @go(RoleRef,*xpv1.Reference)

	// RoleSelector selects references to IAMRole used
	// to set the Role.
	// +optional
	roleSelector?: null | xpv1.#Selector @go(RoleSelector,*xpv1.Selector)

	// A list of collection of targets to crawl.
	//
	// Targets is a required field
	// +kubebuilder:validation:Required
	targets: #CustomCrawlerTargets @go(Targets)
}

// CustomCrawlerTargets contains the additional fields for CrawlerTargets
#CustomCrawlerTargets: {
	// Specifies Glue Data Catalog targets.
	catalogTargets?: [...null | #CustomCatalogTarget] @go(CatalogTargets,[]*CustomCatalogTarget)

	// Specifies Amazon DynamoDB targets.
	dynamoDBTargets?: [...null | #DynamoDBTarget] @go(DynamoDBTargets,[]*DynamoDBTarget)

	// Specifies JDBC targets.
	jdbcTargets?: [...null | #CustomJDBCTarget] @go(JDBCTargets,[]*CustomJDBCTarget)

	// Specifies Amazon DocumentDB or MongoDB targets.
	mongoDBTargets?: [...null | #CustomMongoDBTarget] @go(MongoDBTargets,[]*CustomMongoDBTarget)

	// Specifies Amazon Simple Storage Service (Amazon S3) targets.
	s3Targets?: [...null | #CustomS3Target] @go(S3Targets,[]*CustomS3Target)
}

// CustomCatalogTarget contains the additional fields for CatalogTarget
#CustomCatalogTarget: {
	// The name of the database to be synchronized.
	//
	// DatabaseName is a required field
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1.Database
	// +crossplane:generate:reference:refFieldName=DatabaseNameRef
	// +crossplane:generate:reference:selectorFieldName=DatabaseNameSelector
	databaseName?: string @go(DatabaseName)

	// DatabaseNameRef is a reference to an Database used to set
	// the DatabaseName.
	// +optional
	databaseNameRef?: null | xpv1.#Reference @go(DatabaseNameRef,*xpv1.Reference)

	// DatabaseNamesSelector selects references to Database used
	// to set the DatabaseName.
	// +optional
	databaseNameSelector?: null | xpv1.#Selector @go(DatabaseNameSelector,*xpv1.Selector)

	// A list of the tables to be synchronized.
	//
	// Tables is a required field
	// +kubebuilder:validation:Required
	tables: [...string] @go(Tables,[]string)
}

// CustomJDBCTarget contains the additional fields for JdbcTarget
#CustomJDBCTarget: {
	// The name of the connection to use to connect to the JDBC target.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1.Connection
	// +crossplane:generate:reference:refFieldName=ConnectionNameRef
	// +crossplane:generate:reference:selectorFieldName=ConnectionNameSelector
	connectionName?: null | string @go(ConnectionName,*string)

	// ConnectionNameRef is a reference to an Connection used to set
	// the ConnectionName.
	// +optional
	connectionNameRef?: null | xpv1.#Reference @go(ConnectionNameRef,*xpv1.Reference)

	// ConnectionNamesSelector selects references to Connection used
	// to set the ConnectionName.
	// +optional
	connectionNameSelector?: null | xpv1.#Selector @go(ConnectionNameSelector,*xpv1.Selector)

	// A list of glob patterns used to exclude from the crawl. For more information,
	// see Catalog Tables with a Crawler (https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html).
	exclusions?: [...null | string] @go(Exclusions,[]*string)

	// The path of the JDBC target.
	path?: null | string @go(Path,*string)
}

// CustomMongoDBTarget contains the additional fields for MongoDBTarget
#CustomMongoDBTarget: {
	// The name of the connection to use to connect to the Amazon DocumentDB or
	// MongoDB target.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1.Connection
	// +crossplane:generate:reference:refFieldName=ConnectionNameRef
	// +crossplane:generate:reference:selectorFieldName=ConnectionNameSelector
	connectionName?: null | string @go(ConnectionName,*string)

	// ConnectionNameRef is a reference to an Connection used to set
	// the ConnectionName.
	// +optional
	connectionNameRef?: null | xpv1.#Reference @go(ConnectionNameRef,*xpv1.Reference)

	// ConnectionNamesSelector selects references to Connection used
	// to set the ConnectionName.
	// +optional
	connectionNameSelector?: null | xpv1.#Selector @go(ConnectionNameSelector,*xpv1.Selector)

	// The path of the Amazon DocumentDB or MongoDB target (database/collection).
	path?: null | string @go(Path,*string)

	// Indicates whether to scan all the records, or to sample rows from the table.
	// Scanning all the records can take a long time when the table is not a high
	// throughput table.
	//
	// A value of true means to scan all records, while a value of false means to
	// sample the records. If no value is specified, the value defaults to true.
	scanAll?: null | bool @go(ScanAll,*bool)
}

// CustomS3Target contains the additional fields for S3Target
#CustomS3Target: {
	// The name of a connection which allows a job or crawler to access data in
	// Amazon S3 within an Amazon Virtual Private Cloud environment (Amazon VPC).
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1.Connection
	// +crossplane:generate:reference:refFieldName=ConnectionNameRef
	// +crossplane:generate:reference:selectorFieldName=ConnectionNameSelector
	connectionName?: null | string @go(ConnectionName,*string)

	// ConnectionNameRef is a reference to an Connection used to set
	// the ConnectionName.
	// +optional
	connectionNameRef?: null | xpv1.#Reference @go(ConnectionNameRef,*xpv1.Reference)

	// ConnectionNamesSelector selects references to Connection used
	// to set the ConnectionName.
	// +optional
	connectionNameSelector?: null | xpv1.#Selector @go(ConnectionNameSelector,*xpv1.Selector)

	// A valid Amazon dead-letter SQS ARN. For example, arn:aws:sqs:region:account:deadLetterQueue.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/sqs/v1beta1.Queue
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/sqs/v1beta1.QueueARN()
	// +crossplane:generate:reference:refFieldName=DlqEventQueueARNRef
	// +crossplane:generate:reference:selectorFieldName=DlqEventQueueARNSelector
	dlqEventQueueArn?: null | string @go(DlqEventQueueARN,*string)

	// DlqEventQueueARNRef is a reference to an SQSEventQueue used to set
	// the DlqEventQueueARN.
	// +optional
	dlqEventQueueArnRef?: null | xpv1.#Reference @go(DlqEventQueueARNRef,*xpv1.Reference)

	// DlqEventQueueARNSelector selects references to SQSEventQueue used
	// to set the DlqEventQueueARN.
	// +optional
	dlqEventQueueArnSelector?: null | xpv1.#Selector @go(DlqEventQueueARNSelector,*xpv1.Selector)

	// A valid Amazon SQS ARN. For example, arn:aws:sqs:region:account:sqs.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/sqs/v1beta1.Queue
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/sqs/v1beta1.QueueARN()
	// +crossplane:generate:reference:refFieldName=EventQueueARNRef
	// +crossplane:generate:reference:selectorFieldName=EventQueueARNSelector
	eventQueueArn?: null | string @go(EventQueueARN,*string)

	// EventQueueARNRef is a reference to an SQSEventQueue used to set
	// the EventQueueARN.
	// +optional
	eventQueueArnRef?: null | xpv1.#Reference @go(EventQueueARNRef,*xpv1.Reference)

	// EventQueueARNSelector selects references to SQSEventQueue used
	// to set the EventQueueARN.
	// +optional
	eventQueueArnSelector?: null | xpv1.#Selector @go(EventQueueARNSelector,*xpv1.Selector)

	// A list of glob patterns used to exclude from the crawl. For more information,
	// see Catalog Tables with a Crawler (https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html).
	exclusions?: [...null | string] @go(Exclusions,[]*string)

	// The path to the Amazon S3 target.
	path?: null | string @go(Path,*string)

	// Sets the number of files in each leaf folder to be crawled when crawling
	// sample files in a dataset. If not set, all the files are crawled. A valid
	// value is an integer between 1 and 249.
	sampleSize?: null | int64 @go(SampleSize,*int64)
}

// CustomClassifierParameters contains the additional fields for ClassifierParameters
#CustomClassifierParameters: {
	// A CSVClassifier object specifying the classifier to create.
	csvClassifier?: null | #CustomCreateCSVClassifierRequest @go(CustomCSVClassifier,*CustomCreateCSVClassifierRequest)

	// A XMLClassifier object specifying the classifier to create.
	xmlClassifier?: null | #CustomCreateXMLClassifierRequest @go(CustomXMLClassifier,*CustomCreateXMLClassifierRequest)

	// A GrokClassifier object specifying the classifier to create.
	grokClassifier?: null | #CustomCreateGrokClassifierRequest @go(CustomGrokClassifier,*CustomCreateGrokClassifierRequest)

	// A JsonClassifier object specifying the classifier to create.
	jsonClassifier?: null | #CustomCreateJSONClassifierRequest @go(CustomJSONClassifier,*CustomCreateJSONClassifierRequest)
}

// CustomCreateGrokClassifierRequest contains the fields for CreateGrokClassifierRequest.
#CustomCreateGrokClassifierRequest: {
	// An identifier of the data format that the classifier matches, such as Twitter,
	// JSON, Omniture logs, Amazon CloudWatch Logs, and so on.
	// +kubebuilder:validation:Required
	classification: string @go(Classification)

	// Optional custom grok patterns used by this classifier.
	// +optional
	customPatterns?: null | string @go(CustomPatterns,*string)

	// The grok pattern used by this classifier.
	// +kubebuilder:validation:Required
	grokPattern: string @go(GrokPattern)
}

// CustomCreateJSONClassifierRequest contains the fields for CreateJSONClassifierRequest.
#CustomCreateJSONClassifierRequest: {
	// A JsonPath string defining the JSON data for the classifier to classify.
	// Glue supports a subset of JsonPath, as described in Writing JsonPath Custom
	// Classifiers (https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json).
	// +optional
	jsonPath?: null | string @go(JSONPath,*string)
}

// CustomCreateXMLClassifierRequest contains the fields for CreateXMLClassifierRequest.
#CustomCreateXMLClassifierRequest: {
	// An identifier of the data format that the classifier matches.
	// Classification is a required field
	// +kubebuilder:validation:Required
	classification: string @go(Classification)

	// The XML tag designating the element that contains each record in an XML document
	// being parsed. This can't identify a self-closing element (closed by />).
	// An empty row element that contains only attributes can be parsed as long
	// as it ends with a closing tag (for example, <row item_a="A" item_b="B"></row>
	// is okay, but <row item_a="A" item_b="B" /> is not).
	rowTag?: null | string @go(RowTag,*string)
}

// CustomCreateCSVClassifierRequest contains the fields for CreateCSVClassifierRequest.
#CustomCreateCSVClassifierRequest: {
	// Enables the processing of files that contain only one column.
	// +optional
	allowSingleColumn?: null | bool @go(AllowSingleColumn,*bool)

	// Indicates whether the CSV file contains a header.
	// UNKNOWN = "Detect headings"
	// PRESENT = "Has headings"
	// ABSENT = "No headings"
	// +optional
	// +kubebuilder:validation:Enum=UNKNOWN;PRESENT;ABSENT
	containsHeader?: null | string @go(ContainsHeader,*string)

	// A custom symbol to denote what separates each column entry in the row.
	// +optional
	delimiter?: null | string @go(Delimiter,*string)

	// Specifies not to trim values before identifying the type of column values.
	// The default value is true.
	// +optional
	disableValueTrimming?: null | bool @go(DisableValueTrimming,*bool)

	// A list of strings representing column names.
	// +optional
	header?: [...null | string] @go(Header,[]*string)

	// A custom symbol to denote what combines content into a single column value.
	// Must be different from the column delimiter.
	// +optional
	quoteSymbol?: null | string @go(QuoteSymbol,*string)
}
