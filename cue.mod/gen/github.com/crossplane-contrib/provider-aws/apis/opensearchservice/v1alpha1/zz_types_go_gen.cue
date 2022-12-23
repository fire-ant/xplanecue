// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/opensearchservice/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// +kubebuilder:skipversion
#AWSDomainInformation: {
	// The name of an domain. Domain names are unique across the domains owned by
	// an account within an AWS region. Domain names start with a letter or number
	// and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
	domainName?: null | string @go(DomainName,*string)
}

// +kubebuilder:skipversion
#AccessPoliciesStatus: {
	// Access policy rules for a domain service endpoints. For more information,
	// see Configuring access policies (http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies).
	// The maximum size of a policy document is 100 KB.
	options?: null | string @go(Options,*string)
}

// +kubebuilder:skipversion
#AdvancedOptionsStatus: {
	// Exposes select native OpenSearch configuration values from opensearch.yml.
	// Currently, the following advanced options are available:
	//
	//    * Option to allow references to indices in an HTTP request body. Must
	//    be false when configuring access to individual sub-resources. By default,
	//    the value is true. See Advanced cluster parameters for more information.
	//
	//    * Option to specify the percentage of heap space allocated to field data.
	//    By default, this setting is unbounded.
	//
	// For more information, see Advanced cluster parameters (http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options).
	options?: {[string]: null | string} @go(Options,map[string]*string)
}

// +kubebuilder:skipversion
#AdvancedSecurityOptions: {
	anonymousAuthDisableDate?:    null | metav1.#Time @go(AnonymousAuthDisableDate,*metav1.Time)
	anonymousAuthEnabled?:        null | bool         @go(AnonymousAuthEnabled,*bool)
	enabled?:                     null | bool         @go(Enabled,*bool)
	internalUserDatabaseEnabled?: null | bool         @go(InternalUserDatabaseEnabled,*bool)

	// Describes the SAML application configured for the domain.
	sAMLOptions?: null | #SAMLOptionsOutput @go(SAMLOptions,*SAMLOptionsOutput)
}

// +kubebuilder:skipversion
#AdvancedSecurityOptionsInput: {
	anonymousAuthEnabled?:        null | bool @go(AnonymousAuthEnabled,*bool)
	enabled?:                     null | bool @go(Enabled,*bool)
	internalUserDatabaseEnabled?: null | bool @go(InternalUserDatabaseEnabled,*bool)

	// Credentials for the master user: username and password, ARN, or both.
	masterUserOptions?: null | #MasterUserOptions @go(MasterUserOptions,*MasterUserOptions)

	// The SAML application configuration for the domain.
	sAMLOptions?: null | #SAMLOptionsInput @go(SAMLOptions,*SAMLOptionsInput)
}

// +kubebuilder:skipversion
#AdvancedSecurityOptionsStatus: {
	// The advanced security configuration: whether advanced security is enabled,
	// whether the internal database option is enabled.
	options?: null | #AdvancedSecurityOptions @go(Options,*AdvancedSecurityOptions)
}

// +kubebuilder:skipversion
#AutoTuneMaintenanceSchedule: {
	cronExpressionForRecurrence?: null | string @go(CronExpressionForRecurrence,*string)

	// The maintenance schedule duration: duration value and duration unit. See
	// Auto-Tune for Amazon OpenSearch Service (https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html)
	// for more information.
	duration?: null | #Duration    @go(Duration,*Duration)
	startAt?:  null | metav1.#Time @go(StartAt,*metav1.Time)
}

// +kubebuilder:skipversion
#AutoTuneOptions: {
	// The Auto-Tune desired state. Valid values are ENABLED and DISABLED.
	desiredState?: null | string @go(DesiredState,*string)
	maintenanceSchedules?: [...null | #AutoTuneMaintenanceSchedule] @go(MaintenanceSchedules,[]*AutoTuneMaintenanceSchedule)
}

// +kubebuilder:skipversion
#AutoTuneOptionsInput: {
	// The Auto-Tune desired state. Valid values are ENABLED and DISABLED.
	desiredState?: null | string @go(DesiredState,*string)
	maintenanceSchedules?: [...null | #AutoTuneMaintenanceSchedule] @go(MaintenanceSchedules,[]*AutoTuneMaintenanceSchedule)
}

// +kubebuilder:skipversion
#AutoTuneOptionsOutput: {
	errorMessage?: null | string @go(ErrorMessage,*string)

	// The Auto-Tune state for the domain. For valid states see Auto-Tune for Amazon
	// OpenSearch Service (https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html).
	state?: null | string @go(State,*string)
}

// +kubebuilder:skipversion
#AutoTuneStatus: {
	errorMessage?:    null | string @go(ErrorMessage,*string)
	pendingDeletion?: null | bool   @go(PendingDeletion,*bool)

	// The Auto-Tune state for the domain. For valid states see Auto-Tune for Amazon
	// OpenSearch Service (https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html).
	state?: null | string @go(State,*string)
}

// +kubebuilder:skipversion
#ChangeProgressDetails: {
	changeID?: null | string @go(ChangeID,*string)
	message?:  null | string @go(Message,*string)
}

// +kubebuilder:skipversion
#ChangeProgressStatusDetails: {
	changeID?: null | string @go(ChangeID,*string)
	completedProperties?: [...null | string] @go(CompletedProperties,[]*string)
	pendingProperties?: [...null | string] @go(PendingProperties,[]*string)
}

// +kubebuilder:skipversion
#ClusterConfig: {
	// Specifies the configuration for cold storage options such as enabled
	coldStorageOptions?:     null | #ColdStorageOptions @go(ColdStorageOptions,*ColdStorageOptions)
	dedicatedMasterCount?:   null | int64               @go(DedicatedMasterCount,*int64)
	dedicatedMasterEnabled?: null | bool                @go(DedicatedMasterEnabled,*bool)
	dedicatedMasterType?:    null | string              @go(DedicatedMasterType,*string)
	instanceCount?:          null | int64               @go(InstanceCount,*int64)
	instanceType?:           null | string              @go(InstanceType,*string)
	warmCount?:              null | int64               @go(WarmCount,*int64)
	warmEnabled?:            null | bool                @go(WarmEnabled,*bool)
	warmType?:               null | string              @go(WarmType,*string)

	// The zone awareness configuration for the domain cluster, such as the number
	// of availability zones.
	zoneAwarenessConfig?:  null | #ZoneAwarenessConfig @go(ZoneAwarenessConfig,*ZoneAwarenessConfig)
	zoneAwarenessEnabled?: null | bool                 @go(ZoneAwarenessEnabled,*bool)
}

// +kubebuilder:skipversion
#ClusterConfigStatus: {
	// The configuration for the domain cluster, such as the type and number of
	// instances.
	options?: null | #ClusterConfig @go(Options,*ClusterConfig)
}

// +kubebuilder:skipversion
#CognitoOptions: {
	enabled?:        null | bool   @go(Enabled,*bool)
	identityPoolID?: null | string @go(IdentityPoolID,*string)
	roleARN?:        null | string @go(RoleARN,*string)
	userPoolID?:     null | string @go(UserPoolID,*string)
}

// +kubebuilder:skipversion
#CognitoOptionsStatus: {
	// Options to specify the Cognito user and identity pools for OpenSearch Dashboards
	// authentication. For more information, see Configuring Amazon Cognito authentication
	// for OpenSearch Dashboards (http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html).
	options?: null | #CognitoOptions @go(Options,*CognitoOptions)
}

// +kubebuilder:skipversion
#ColdStorageOptions: {
	enabled?: null | bool @go(Enabled,*bool)
}

// +kubebuilder:skipversion
#CompatibleVersionsMap: {
	sourceVersion?: null | string @go(SourceVersion,*string)
}

// +kubebuilder:skipversion
#DomainConfig: {
	// Specifies change details of the domain configuration change.
	changeProgressDetails?: null | #ChangeProgressDetails @go(ChangeProgressDetails,*ChangeProgressDetails)
}

// +kubebuilder:skipversion
#DomainEndpointOptions: {
	customEndpoint?: null | string @go(CustomEndpoint,*string)

	// The Amazon Resource Name (ARN) of the domain. See Identifiers for IAM Entities
	// (http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html) in Using AWS
	// Identity and Access Management for more information.
	customEndpointCertificateARN?: null | string @go(CustomEndpointCertificateARN,*string)
	customEndpointEnabled?:        null | bool   @go(CustomEndpointEnabled,*bool)
	enforceHTTPS?:                 null | bool   @go(EnforceHTTPS,*bool)
	tlsSecurityPolicy?:            null | string @go(TLSSecurityPolicy,*string)
}

// +kubebuilder:skipversion
#DomainEndpointOptionsStatus: {
	// Options to configure the endpoint for the domain.
	options?: null | #DomainEndpointOptions @go(Options,*DomainEndpointOptions)
}

// +kubebuilder:skipversion
#DomainInfo: {
	// The name of an domain. Domain names are unique across the domains owned by
	// an account within an AWS region. Domain names start with a letter or number
	// and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
	domainName?: null | string @go(DomainName,*string)
}

// +kubebuilder:skipversion
#DomainPackageDetails: {
	// The name of an domain. Domain names are unique across the domains owned by
	// an account within an AWS region. Domain names start with a letter or number
	// and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
	domainName?: null | string @go(DomainName,*string)
}

// +kubebuilder:skipversion
#DomainStatus_SDK: {
	// The Amazon Resource Name (ARN) of the domain. See Identifiers for IAM Entities
	// (http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html) in Using AWS
	// Identity and Access Management for more information.
	arn?: null | string @go(ARN,*string)

	// Access policy rules for a domain service endpoints. For more information,
	// see Configuring access policies (http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies).
	// The maximum size of a policy document is 100 KB.
	accessPolicies?: null | string @go(AccessPolicies,*string)

	// Exposes select native OpenSearch configuration values from opensearch.yml.
	// Currently, the following advanced options are available:
	//
	//    * Option to allow references to indices in an HTTP request body. Must
	//    be false when configuring access to individual sub-resources. By default,
	//    the value is true. See Advanced cluster parameters for more information.
	//
	//    * Option to specify the percentage of heap space allocated to field data.
	//    By default, this setting is unbounded.
	//
	// For more information, see Advanced cluster parameters (http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options).
	advancedOptions?: {[string]: null | string} @go(AdvancedOptions,map[string]*string)

	// The advanced security configuration: whether advanced security is enabled,
	// whether the internal database option is enabled.
	advancedSecurityOptions?: null | #AdvancedSecurityOptions @go(AdvancedSecurityOptions,*AdvancedSecurityOptions)

	// The Auto-Tune options: the Auto-Tune desired state for the domain and list
	// of maintenance schedules.
	autoTuneOptions?: null | #AutoTuneOptionsOutput @go(AutoTuneOptions,*AutoTuneOptionsOutput)

	// Specifies change details of the domain configuration change.
	changeProgressDetails?: null | #ChangeProgressDetails @go(ChangeProgressDetails,*ChangeProgressDetails)

	// The configuration for the domain cluster, such as the type and number of
	// instances.
	clusterConfig?: null | #ClusterConfig @go(ClusterConfig,*ClusterConfig)

	// Options to specify the Cognito user and identity pools for OpenSearch Dashboards
	// authentication. For more information, see Configuring Amazon Cognito authentication
	// for OpenSearch Dashboards (http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html).
	cognitoOptions?: null | #CognitoOptions @go(CognitoOptions,*CognitoOptions)
	created?:        null | bool            @go(Created,*bool)
	deleted?:        null | bool            @go(Deleted,*bool)

	// Options to configure the endpoint for the domain.
	domainEndpointOptions?: null | #DomainEndpointOptions @go(DomainEndpointOptions,*DomainEndpointOptions)

	// Unique identifier for the domain.
	domainID?: null | string @go(DomainID,*string)

	// The name of an domain. Domain names are unique across the domains owned by
	// an account within an AWS region. Domain names start with a letter or number
	// and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
	domainName?: null | string @go(DomainName,*string)

	// Options to enable, disable, and specify the properties of EBS storage volumes.
	ebsOptions?: null | #EBSOptions @go(EBSOptions,*EBSOptions)

	// Specifies encryption at rest options.
	encryptionAtRestOptions?: null | #EncryptionAtRestOptions @go(EncryptionAtRestOptions,*EncryptionAtRestOptions)

	// The endpoint to which service requests are submitted. For example, search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com
	// or doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com.
	endpoint?: null | string @go(Endpoint,*string)
	endpoints?: {[string]: null | string} @go(Endpoints,map[string]*string)
	engineVersion?: null | string @go(EngineVersion,*string)
	logPublishingOptions?: {[string]: null | #LogPublishingOption} @go(LogPublishingOptions,map[string]*LogPublishingOption)

	// The node-to-node encryption options.
	nodeToNodeEncryptionOptions?: null | #NodeToNodeEncryptionOptions @go(NodeToNodeEncryptionOptions,*NodeToNodeEncryptionOptions)
	processing?:                  null | bool                         @go(Processing,*bool)

	// The current options of an domain service software options.
	serviceSoftwareOptions?: null | #ServiceSoftwareOptions @go(ServiceSoftwareOptions,*ServiceSoftwareOptions)

	// The time, in UTC format, when the service takes a daily automated snapshot
	// of the specified domain. Default is 0 hours.
	snapshotOptions?:   null | #SnapshotOptions @go(SnapshotOptions,*SnapshotOptions)
	upgradeProcessing?: null | bool             @go(UpgradeProcessing,*bool)

	// Options to specify the subnets and security groups for the VPC endpoint.
	// For more information, see Launching your Amazon OpenSearch Service domains
	// using a VPC (http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html).
	vpcOptions?: null | #VPCDerivedInfo @go(VPCOptions,*VPCDerivedInfo)
}

// +kubebuilder:skipversion
#DryRunResults: {
	message?: null | string @go(Message,*string)
}

// +kubebuilder:skipversion
#Duration: {
	// The unit of a maintenance schedule duration. Valid value is HOUR. See Auto-Tune
	// for Amazon OpenSearch Service (https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html)
	// for more information.
	unit?: null | string @go(Unit,*string)

	// Integer to specify the value of a maintenance schedule duration. See Auto-Tune
	// for Amazon OpenSearch Service (https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html)
	// for more information.
	value?: null | int64 @go(Value,*int64)
}

// +kubebuilder:skipversion
#EBSOptions: {
	ebsEnabled?: null | bool  @go(EBSEnabled,*bool)
	iops?:       null | int64 @go(IOPS,*int64)
	volumeSize?: null | int64 @go(VolumeSize,*int64)

	// The type of EBS volume, standard, gp2, or io1. See Configuring EBS-based
	// Storage (http://docs.aws.amazon.com/opensearch-service/latest/developerguide/opensearch-createupdatedomains.html#opensearch-createdomain-configure-ebs)
	// for more information.
	volumeType?: null | string @go(VolumeType,*string)
}

// +kubebuilder:skipversion
#EBSOptionsStatus: {
	// Options to enable, disable, and specify the properties of EBS storage volumes.
	options?: null | #EBSOptions @go(Options,*EBSOptions)
}

// +kubebuilder:skipversion
#EncryptionAtRestOptions: {
	enabled?:  null | bool   @go(Enabled,*bool)
	kmsKeyID?: null | string @go(KMSKeyID,*string)
}

// +kubebuilder:skipversion
#EncryptionAtRestOptionsStatus: {
	// Specifies encryption at rest options.
	options?: null | #EncryptionAtRestOptions @go(Options,*EncryptionAtRestOptions)
}

// +kubebuilder:skipversion
#InstanceTypeDetails: {
	advancedSecurityEnabled?: null | bool   @go(AdvancedSecurityEnabled,*bool)
	appLogsEnabled?:          null | bool   @go(AppLogsEnabled,*bool)
	cognitoEnabled?:          null | bool   @go(CognitoEnabled,*bool)
	encryptionEnabled?:       null | bool   @go(EncryptionEnabled,*bool)
	instanceType?:            null | string @go(InstanceType,*string)
	warmEnabled?:             null | bool   @go(WarmEnabled,*bool)
}

// +kubebuilder:skipversion
#LogPublishingOption: {
	// ARN of the Cloudwatch log group to publish logs to.
	cloudWatchLogsLogGroupARN?: null | string @go(CloudWatchLogsLogGroupARN,*string)
	enabled?:                   null | bool   @go(Enabled,*bool)
}

// +kubebuilder:skipversion
#LogPublishingOptionsStatus: {
	options?: {[string]: null | #LogPublishingOption} @go(Options,map[string]*LogPublishingOption)
}

// +kubebuilder:skipversion
#MasterUserOptions: {
	// The Amazon Resource Name (ARN) of the domain. See Identifiers for IAM Entities
	// (http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html) in Using AWS
	// Identity and Access Management for more information.
	masterUserARN?:      null | string @go(MasterUserARN,*string)
	masterUserName?:     null | string @go(MasterUserName,*string)
	masterUserPassword?: null | string @go(MasterUserPassword,*string)
}

// +kubebuilder:skipversion
#NodeToNodeEncryptionOptions: {
	enabled?: null | bool @go(Enabled,*bool)
}

// +kubebuilder:skipversion
#NodeToNodeEncryptionOptionsStatus: {
	// The node-to-node encryption options.
	options?: null | #NodeToNodeEncryptionOptions @go(Options,*NodeToNodeEncryptionOptions)
}

// +kubebuilder:skipversion
#OptionStatus: {
	pendingDeletion?: null | bool @go(PendingDeletion,*bool)
}

// +kubebuilder:skipversion
#RecurringCharge: {
	recurringChargeFrequency?: null | string @go(RecurringChargeFrequency,*string)
}

// +kubebuilder:skipversion
#ReservedInstance: {
	currencyCode?:               null | string @go(CurrencyCode,*string)
	instanceType?:               null | string @go(InstanceType,*string)
	reservedInstanceID?:         null | string @go(ReservedInstanceID,*string)
	reservedInstanceOfferingID?: null | string @go(ReservedInstanceOfferingID,*string)
	state?:                      null | string @go(State,*string)
}

// +kubebuilder:skipversion
#ReservedInstanceOffering: {
	currencyCode?:               null | string @go(CurrencyCode,*string)
	instanceType?:               null | string @go(InstanceType,*string)
	reservedInstanceOfferingID?: null | string @go(ReservedInstanceOfferingID,*string)
}

// +kubebuilder:skipversion
#SAMLIDp: {
	entityID?:        null | string @go(EntityID,*string)
	metadataContent?: null | string @go(MetadataContent,*string)
}

// +kubebuilder:skipversion
#SAMLOptionsInput: {
	enabled?: null | bool @go(Enabled,*bool)

	// The SAML identity povider's information.
	idp?:                   null | #SAMLIDp @go(IDp,*SAMLIDp)
	masterBackendRole?:     null | string   @go(MasterBackendRole,*string)
	masterUserName?:        null | string   @go(MasterUserName,*string)
	rolesKey?:              null | string   @go(RolesKey,*string)
	sessionTimeoutMinutes?: null | int64    @go(SessionTimeoutMinutes,*int64)
	subjectKey?:            null | string   @go(SubjectKey,*string)
}

// +kubebuilder:skipversion
#SAMLOptionsOutput: {
	enabled?: null | bool @go(Enabled,*bool)

	// The SAML identity povider's information.
	idp?:                   null | #SAMLIDp @go(IDp,*SAMLIDp)
	rolesKey?:              null | string   @go(RolesKey,*string)
	sessionTimeoutMinutes?: null | int64    @go(SessionTimeoutMinutes,*int64)
	subjectKey?:            null | string   @go(SubjectKey,*string)
}

// +kubebuilder:skipversion
#ServiceSoftwareOptions: {
	automatedUpdateDate?: null | metav1.#Time @go(AutomatedUpdateDate,*metav1.Time)
	cancellable?:         null | bool         @go(Cancellable,*bool)
	currentVersion?:      null | string       @go(CurrentVersion,*string)
	description?:         null | string       @go(Description,*string)
	newVersion?:          null | string       @go(NewVersion,*string)
	optionalDeployment?:  null | bool         @go(OptionalDeployment,*bool)
	updateAvailable?:     null | bool         @go(UpdateAvailable,*bool)
	updateStatus?:        null | string       @go(UpdateStatus,*string)
}

// +kubebuilder:skipversion
#SnapshotOptions: {
	automatedSnapshotStartHour?: null | int64 @go(AutomatedSnapshotStartHour,*int64)
}

// +kubebuilder:skipversion
#SnapshotOptionsStatus: {
	// The time, in UTC format, when the service takes a daily automated snapshot
	// of the specified domain. Default is 0 hours.
	options?: null | #SnapshotOptions @go(Options,*SnapshotOptions)
}

// +kubebuilder:skipversion
#Tag: {
	// A string of length from 1 to 128 characters that specifies the key for a
	// tag. Tag keys must be unique for the domain to which they're attached.
	key?: null | string @go(Key,*string)

	// A string of length from 0 to 256 characters that specifies the value for
	// a tag. Tag values can be null and don't have to be unique in a tag set.
	value?: null | string @go(Value,*string)
}

// +kubebuilder:skipversion
#VPCDerivedInfo: {
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)
	securityGroupIDs?: [...null | string] @go(SecurityGroupIDs,[]*string)
	subnetIDs?: [...null | string] @go(SubnetIDs,[]*string)
	vpcID?: null | string @go(VPCID,*string)
}

// +kubebuilder:skipversion
#VPCDerivedInfoStatus: {
	// Options to specify the subnets and security groups for the VPC endpoint.
	// For more information, see Launching your Amazon OpenSearch Service domains
	// using a VPC (http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html).
	options?: null | #VPCDerivedInfo @go(Options,*VPCDerivedInfo)
}

// +kubebuilder:skipversion
#VPCOptions: {
	securityGroupIDs?: [...null | string] @go(SecurityGroupIDs,[]*string)
	subnetIDs?: [...null | string] @go(SubnetIDs,[]*string)
}

// +kubebuilder:skipversion
#VersionStatus: {
	options?: null | string @go(Options,*string)
}

// +kubebuilder:skipversion
#ZoneAwarenessConfig: {
	availabilityZoneCount?: null | int64 @go(AvailabilityZoneCount,*int64)
}
