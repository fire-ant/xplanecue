// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/sqs/v1beta1

package v1beta1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#AttributeAll:                                   "All"
#AttributePolicy:                                "Policy"
#AttributeVisibilityTimeout:                     "VisibilityTimeout"
#AttributeMaximumMessageSize:                    "MaximumMessageSize"
#AttributeMessageRetentionPeriod:                "MessageRetentionPeriod"
#AttributeApproximateNumberOfMessages:           "ApproximateNumberOfMessages"
#AttributeApproximateNumberOfMessagesNotVisible: "ApproximateNumberOfMessagesNotVisible"
#AttributeCreatedTimestamp:                      "CreatedTimestamp"
#AttributeLastModifiedTimestamp:                 "LastModifiedTimestamp"
#AttributeQueueArn:                              "QueueArn"
#AttributeApproximateNumberOfMessagesDelayed:    "ApproximateNumberOfMessagesDelayed"
#AttributeDelaySeconds:                          "DelaySeconds"
#AttributeReceiveMessageWaitTimeSeconds:         "ReceiveMessageWaitTimeSeconds"
#AttributeRedrivePolicy:                         "RedrivePolicy"
#AttributeFifoQueue:                             "FifoQueue"
#AttributeContentBasedDeduplication:             "ContentBasedDeduplication"
#AttributeKmsMasterKeyID:                        "KmsMasterKeyId"
#AttributeKmsDataKeyReusePeriodSeconds:          "KmsDataKeyReusePeriodSeconds"

// RedrivePolicy includes the parameters for the dead-letter queue functionality of the source queue.
#RedrivePolicy: {
	// The Amazon Resource Name (ARN) of the dead-letter queue to which Amazon
	// SQS moves messages after the value of maxReceiveCount is exceeded.
	// +crossplane:generate:reference:type=Queue
	// +crossplane:generate:reference:extractor=QueueARN()
	deadLetterTargetArn?: null | string @go(DeadLetterTargetARN,*string)

	// DeadLetterTargetARNRef reference a Queue to retrieve its ARN.
	// +optional
	deadLetterTargetArnRef?: null | xpv1.#Reference @go(DeadLetterTargetARNRef,*xpv1.Reference)

	// DeadLetterTargetARNSelector selects reference to a Queue to retrieve its ARN
	// +optional
	deadLetterTargetArnSelector?: null | xpv1.#Selector @go(DeadLetterTargetARNSelector,*xpv1.Selector)

	// The number of times a message is delivered to the source queue before
	// being moved to the dead-letter queue.
	maxReceiveCount: int64 @go(MaxReceiveCount)
}

// QueueParameters define the desired state of an AWS Queue
#QueueParameters: {
	// Region is the region you'd like your Queue to be created in.
	region: string @go(Region)

	// DelaySeconds - The length of time, in seconds, for which the delivery
	// of all messages in the queue is delayed. Valid values: An integer from
	// 0 to 900 (15 minutes). Default: 0.
	// +optional
	delaySeconds?: null | int64 @go(DelaySeconds,*int64)

	// MaximumMessageSize is the limit of how many bytes a message can contain
	// before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes
	// (1 KiB) up to 262,144 bytes (256 KiB). Default: 262,144 (256 KiB).
	// +optional
	maximumMessageSize?: null | int64 @go(MaximumMessageSize,*int64)

	// MessageRetentionPeriod - The length of time, in seconds, for which Amazon
	// SQS retains a message. Valid values: An integer representing seconds,
	// from 60 (1 minute) to 1,209,600 (14 days). Default: 345,600 (4 days).
	// +optional
	messageRetentionPeriod?: null | int64 @go(MessageRetentionPeriod,*int64)

	// The queue's policy. A valid AWS policy. For more information
	// about policy structure, see Overview of AWS IAM Policies (https://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html)
	// in the Amazon IAM User Guide.
	// +optional
	policy?: null | string @go(Policy,*string)

	// ReceiveMessageWaitTimeSeconds - The length of time, in seconds, for
	// which a ReceiveMessage action waits for a message to arrive. Valid values:
	// an integer from 0 to 20 (seconds). Default: 0.
	// +optional
	receiveMessageWaitTimeSeconds?: null | int64 @go(ReceiveMessageWaitTimeSeconds,*int64)

	// RedrivePolicy includes the parameters for the dead-letter
	// queue functionality of the source queue. For more information about the
	// redrive policy and dead-letter queues, see Using Amazon SQS Dead-Letter
	// Queues (https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)
	// in the Amazon Simple Queue Service Developer Guide
	// +optional
	redrivePolicy?: null | #RedrivePolicy @go(RedrivePolicy,*RedrivePolicy)

	// VisibilityTimeout - The visibility timeout for the queue, in seconds.
	// Valid values: an integer from 0 to 43,200 (12 hours). Default: 30. For
	// more information about the visibility timeout, see Visibility Timeout
	// (https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html)
	// in the Amazon Simple Queue Service Developer Guide.
	// +optional
	visibilityTimeout?: null | int64 @go(VisibilityTimeout,*int64)

	// KMSMasterKeyID - The ID of an AWS-managed customer master key (CMK)
	// for Amazon SQS or a custom CMK. For more information, see Key Terms (https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).
	// While the alias of the AWS-managed CMK for Amazon SQS is always alias/aws/sqs,
	// the alias of a custom CMK can, for example, be alias/MyAlias . For more
	// examples, see KeyId (https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters)
	// in the AWS Key Management Service API Reference.
	// Applies only to server-side-encryption (https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html):
	// +optional
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1.Key
	kmsMasterKeyId?:         null | string          @go(KMSMasterKeyID,*string)
	kmsMasterKeyIdRef?:      null | xpv1.#Reference @go(KMSMasterKeyIDRef,*xpv1.Reference)
	kmsMasterKeyIdSelector?: null | xpv1.#Selector  @go(KMSMasterKeyIDSelector,*xpv1.Selector)

	// KMSDataKeyReusePeriodSeconds - The length of time, in seconds, for which
	// Amazon SQS can reuse a data key (https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys)
	// to encrypt or decrypt messages before calling AWS KMS again. An integer
	// representing seconds, between 60 seconds (1 minute) and 86,400 seconds
	// (24 hours). Default: 300 (5 minutes). A shorter time period provides better
	// security but results in more calls to KMS which might incur charges after
	// Free Tier. For more information, see How Does the Data Key Reuse Period
	// Work? (https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work).
	// Applies only to server-side-encryption (https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html):
	// +optional
	kmsDataKeyReusePeriodSeconds?: null | int64 @go(KMSDataKeyReusePeriodSeconds,*int64)

	// FIFOQueue - Designates a queue as FIFO. Valid values: true, false. If
	// you don't specify the FifoQueue attribute, Amazon SQS creates a standard
	// queue. You can provide this attribute only during queue creation. You
	// can't change it for an existing queue. When you set this attribute, you
	// must also provide the MessageGroupId for your messages explicitly. For
	// more information, see FIFO Queue Logic (https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic)
	// in the Amazon Simple Queue Service Developer Guide.
	// +immutable
	// +optional
	fifoQueue?: null | bool @go(FIFOQueue,*bool)

	// ContentBasedDeduplication - Enables content-based deduplication. Valid
	// values: true, false. For more information, see Exactly-Once Processing
	// (https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing)
	// in the Amazon Simple Queue Service Developer Guide. Every message must
	// have a unique MessageDeduplicationId, You may provide a MessageDeduplicationId
	// explicitly. If you aren't able to provide a MessageDeduplicationId and
	// you enable ContentBasedDeduplication for your queue, Amazon SQS uses a
	// SHA-256 hash to generate the MessageDeduplicationId using the body of
	// the message (but not the attributes of the message). If you don't provide
	// a MessageDeduplicationId and the queue doesn't have ContentBasedDeduplication
	// set, the action fails with an error. If the queue has ContentBasedDeduplication
	// set, your MessageDeduplicationId overrides the generated one. When ContentBasedDeduplication
	// is in effect, messages with identical content sent within the deduplication
	// interval are treated as duplicates and only one copy of the message is
	// delivered. If you send one message with ContentBasedDeduplication enabled
	// and then another message with a MessageDeduplicationId that is the same
	// as the one generated for the first MessageDeduplicationId, the two messages
	// are treated as duplicates and only one copy of the message is delivered.
	// +optional
	contentBasedDeduplication?: null | bool @go(ContentBasedDeduplication,*bool)

	// Tags add cost allocation tags to the specified Amazon SQS queue.
	// +optional
	tags?: {[string]: string} @go(Tags,map[string]string)
}

// QueueSpec defines the desired state of a Queue.
#QueueSpec: {
	xpv1.#ResourceSpec
	forProvider: #QueueParameters @go(ForProvider)
}

// QueueObservation is the representation of the current state that is observed
#QueueObservation: {
	// The URL of the created Amazon SQS queue.
	url?: string @go(URL)

	// The Amazon resource name (ARN) of the queue.
	arn?: string @go(ARN)

	// ApproximateNumberOfMessages - The approximate number of messages
	// available for retrieval from the queue.
	approximateNumberOfMessages?: int64 @go(ApproximateNumberOfMessages)

	// ApproximateNumberOfMessagesDelayed - The approximate number
	// of messages in the queue that are delayed and not available for reading
	// immediately. This can happen when the queue is configured as a delay queue
	// or when a message has been sent with a delay parameter.
	approximateNumberOfMessagesDelayed?: int64 @go(ApproximateNumberOfMessagesDelayed)

	// ApproximateNumberOfMessagesNotVisible - The approximate number
	// of messages that are in flight. Messages are considered to be in flight
	// if they have been sent to a client but have not yet been deleted or have
	// not yet reached the end of their visibility window.
	approximateNumberOfMessagesNotVisible?: int64 @go(ApproximateNumberOfMessagesNotVisible)

	// CreatedTimestamp is the time when the queue was created
	createdTimestamp?: null | metav1.#Time @go(CreatedTimestamp,*metav1.Time)

	// LastModifiedTimestamp - Returns the time when the queue was last changed.
	lastModifiedTimestamp?: null | metav1.#Time @go(LastModifiedTimestamp,*metav1.Time)
}

// QueueStatus represents the observed state of a Queue.
#QueueStatus: {
	xpv1.#ResourceStatus
	atProvider?: #QueueObservation @go(AtProvider)
}

// A Queue is a managed resource that represents a AWS Simple Queue
// +kubebuilder:printcolumn:name="ARN",type="string",JSONPath=".status.atProvider.arn"
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Queue: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #QueueSpec         @go(Spec)
	status?:   #QueueStatus       @go(Status)
}

// QueueList contains a list of Queue
#QueueList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Queue] @go(Items,[]Queue)
}
