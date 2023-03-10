// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/ec2/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// FlowLogParameters defines the desired state of FlowLog
#FlowLogParameters: {
	// Region is which region the FlowLog will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// Unique, case-sensitive identifier that you provide to ensure the idempotency
	// of the request. For more information, see How to ensure idempotency (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
	clientToken?: null | string @go(ClientToken,*string)

	// The destination options.
	destinationOptions?: null | #DestinationOptionsRequest @go(DestinationOptions,*DestinationOptionsRequest)

	// The destination to which the flow log data is to be published. Flow log data
	// can be published to a CloudWatch Logs log group or an Amazon S3 bucket. The
	// value specified for this parameter depends on the value specified for LogDestinationType.
	//
	// If LogDestinationType is not specified or cloud-watch-logs, specify the Amazon
	// Resource Name (ARN) of the CloudWatch Logs log group. For example, to publish
	// to a log group called my-logs, specify arn:aws:logs:us-east-1:123456789012:log-group:my-logs.
	// Alternatively, use LogGroupName instead.
	//
	// If LogDestinationType is s3, specify the ARN of the Amazon S3 bucket. You
	// can also specify a subfolder in the bucket. To specify a subfolder in the
	// bucket, use the following ARN format: bucket_ARN/subfolder_name/. For example,
	// to specify a subfolder named my-logs in a bucket named my-bucket, use the
	// following ARN: arn:aws:s3:::my-bucket/my-logs/. You cannot use AWSLogs as
	// a subfolder name. This is a reserved term.
	logDestination?: null | string @go(LogDestination,*string)

	// The type of destination to which the flow log data is to be published. Flow
	// log data can be published to CloudWatch Logs or Amazon S3. To publish flow
	// log data to CloudWatch Logs, specify cloud-watch-logs. To publish flow log
	// data to Amazon S3, specify s3.
	//
	// If you specify LogDestinationType as s3, do not specify DeliverLogsPermissionArn
	// or LogGroupName.
	//
	// Default: cloud-watch-logs
	logDestinationType?: null | string @go(LogDestinationType,*string)

	// The fields to include in the flow log record, in the order in which they
	// should appear. For a list of available fields, see Flow log records (https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records).
	// If you omit this parameter, the flow log is created using the default format.
	// If you specify this parameter, you must specify at least one field.
	//
	// Specify the fields using the ${field-id} format, separated by spaces. For
	// the CLI, surround this parameter value with single quotes on Linux or double
	// quotes on Windows.
	logFormat?: null | string @go(LogFormat,*string)

	// The name of a new or existing CloudWatch Logs log group where Amazon EC2
	// publishes your flow logs.
	//
	// If you specify LogDestinationType as s3, do not specify DeliverLogsPermissionArn
	// or LogGroupName.
	logGroupName?: null | string @go(LogGroupName,*string)

	// The maximum interval of time during which a flow of packets is captured and
	// aggregated into a flow log record. You can specify 60 seconds (1 minute)
	// or 600 seconds (10 minutes).
	//
	// When a network interface is attached to a Nitro-based instance (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances),
	// the aggregation interval is always 60 seconds or less, regardless of the
	// value that you specify.
	//
	// Default: 600
	maxAggregationInterval?: null | int64 @go(MaxAggregationInterval,*int64)

	// The type of traffic to log. You can log traffic that the resource accepts
	// or rejects, or all traffic.
	// +kubebuilder:validation:Required
	trafficType?: null | string @go(TrafficType,*string)

	#CustomFlowLogParameters
}

// FlowLogSpec defines the desired state of FlowLog
#FlowLogSpec: {
	xpv1.#ResourceSpec
	forProvider: #FlowLogParameters @go(ForProvider)
}

// FlowLogObservation defines the observed state of FlowLog
#FlowLogObservation: {
	// The date and time the flow log was created.
	creationTime?: null | metav1.#Time @go(CreationTime,*metav1.Time)

	// The status of the logs delivery (SUCCESS | FAILED).
	deliverLogsStatus?: null | string @go(DeliverLogsStatus,*string)

	// The flow log ID.
	flowLogID?: null | string @go(FlowLogID,*string)

	// The status of the flow log (ACTIVE).
	flowLogStatus?: null | string @go(FlowLogStatus,*string)

	// The ID of the resource on which the flow log was created.
	resourceID?: null | string @go(ResourceID,*string)

	// The tags for the flow log.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// FlowLogStatus defines the observed state of FlowLog.
#FlowLogStatus: {
	xpv1.#ResourceStatus
	atProvider?: #FlowLogObservation @go(AtProvider)
}

// FlowLog is the Schema for the FlowLogs API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#FlowLog: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #FlowLogSpec       @go(Spec)
	status?:   #FlowLogStatus     @go(Status)
}

// FlowLogList contains a list of FlowLogs
#FlowLogList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#FlowLog] @go(Items,[]FlowLog)
}
