// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/cloudwatchlogs/v1alpha1

package v1alpha1

// +kubebuilder:skipversion
#Destination: {
	arn?:          null | string @go(ARN,*string)
	creationTime?: null | int64  @go(CreationTime,*int64)
}

// +kubebuilder:skipversion
#ExportTask: {
	from?:         null | int64  @go(From,*int64)
	logGroupName?: null | string @go(LogGroupName,*string)
	to?:           null | int64  @go(To,*int64)
}

// +kubebuilder:skipversion
#ExportTaskExecutionInfo: {
	completionTime?: null | int64 @go(CompletionTime,*int64)
	creationTime?:   null | int64 @go(CreationTime,*int64)
}

// +kubebuilder:skipversion
#FilteredLogEvent: {
	ingestionTime?: null | int64 @go(IngestionTime,*int64)
	timestamp?:     null | int64 @go(Timestamp,*int64)
}

// +kubebuilder:skipversion
#InputLogEvent: {
	timestamp?: null | int64 @go(Timestamp,*int64)
}

// +kubebuilder:skipversion
#LogGroup_SDK: {
	arn?:               null | string @go(ARN,*string)
	creationTime?:      null | int64  @go(CreationTime,*int64)
	kmsKeyID?:          null | string @go(KMSKeyID,*string)
	logGroupName?:      null | string @go(LogGroupName,*string)
	metricFilterCount?: null | int64  @go(MetricFilterCount,*int64)

	// The number of days to retain the log events in the specified log group. Possible
	// values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731,
	// 1827, and 3653.
	//
	// To set a log group to never have log events expire, use DeleteRetentionPolicy
	// (https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html).
	retentionInDays?: null | int64 @go(RetentionInDays,*int64)
	storedBytes?:     null | int64 @go(StoredBytes,*int64)
}

// +kubebuilder:skipversion
#LogStream: {
	arn?:                 null | string @go(ARN,*string)
	creationTime?:        null | int64  @go(CreationTime,*int64)
	firstEventTimestamp?: null | int64  @go(FirstEventTimestamp,*int64)
	lastEventTimestamp?:  null | int64  @go(LastEventTimestamp,*int64)
	lastIngestionTime?:   null | int64  @go(LastIngestionTime,*int64)
	storedBytes?:         null | int64  @go(StoredBytes,*int64)
}

// +kubebuilder:skipversion
#MetricFilter: {
	creationTime?: null | int64  @go(CreationTime,*int64)
	logGroupName?: null | string @go(LogGroupName,*string)
}

// +kubebuilder:skipversion
#OutputLogEvent: {
	ingestionTime?: null | int64 @go(IngestionTime,*int64)
	timestamp?:     null | int64 @go(Timestamp,*int64)
}

// +kubebuilder:skipversion
#QueryDefinition: {
	lastModified?: null | int64 @go(LastModified,*int64)
}

// +kubebuilder:skipversion
#QueryInfo: {
	createTime?:   null | int64  @go(CreateTime,*int64)
	logGroupName?: null | string @go(LogGroupName,*string)
}

// +kubebuilder:skipversion
#ResourcePolicy: {
	lastUpdatedTime?: null | int64 @go(LastUpdatedTime,*int64)
}

// +kubebuilder:skipversion
#SubscriptionFilter: {
	creationTime?: null | int64  @go(CreationTime,*int64)
	logGroupName?: null | string @go(LogGroupName,*string)
}
