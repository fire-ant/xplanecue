// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/sns/v1beta1

package v1beta1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// SubscriptionParameters define the desired state of a AWS SNS Topic
#SubscriptionParameters: {
	// Region is the region you'd like your Subscription to be in.
	region: string @go(Region)

	// TopicArn is the Arn of the SNS Topic
	// +immutable
	topicArn?: string @go(TopicARN)

	// TopicArnRef references a SNS Topic and retrieves its TopicArn
	// +optional
	topicArnRef?: null | xpv1.#Reference @go(TopicARNRef,*xpv1.Reference)

	// TopicArnSelector selects a reference to a SNS Topic and retrieves
	// its TopicArn
	// +optional
	topicArnSelector?: null | xpv1.#Selector @go(TopicARNSelector,*xpv1.Selector)

	// The subscription's protocol.
	// +immutable
	protocol: string @go(Protocol)

	// The subscription's endpoint
	// +immutable
	endpoint: string @go(Endpoint)

	//  DeliveryPolicy defines how Amazon SNS retries failed
	//  deliveries to HTTP/S endpoints.
	// +optional
	deliveryPolicy?: null | string @go(DeliveryPolicy,*string)

	//  The simple JSON object that lets your subscriber receive
	//  only a subset of messages, rather than receiving every message published
	//  to the topic.
	// +optional
	filterPolicy?: null | string @go(FilterPolicy,*string)

	//  When set to true, enables raw message delivery
	//  to Amazon SQS or HTTP/S endpoints. This eliminates the need for the endpoints
	//  to process JSON formatting, which is otherwise created for Amazon SNS
	//  metadata.
	// +optional
	rawMessageDelivery?: null | string @go(RawMessageDelivery,*string)

	//  When specified, sends undeliverable messages to the
	//  specified Amazon SQS dead-letter queue. Messages that can't be delivered
	//  due to client errors (for example, when the subscribed endpoint is unreachable)
	//  or server errors (for example, when the service that powers the subscribed
	//  endpoint becomes unavailable) are held in the dead-letter queue for further
	//  analysis or reprocessing.
	// +optional
	redrivePolicy?: null | string @go(RedrivePolicy,*string)
}

// SubscriptionSpec defined the desired state of a AWS SNS Topic
#SubscriptionSpec: {
	xpv1.#ResourceSpec
	forProvider: #SubscriptionParameters @go(ForProvider)
}

// ConfirmationStatus represents Status of SNS Subscription Confirmation
#ConfirmationStatus: string // #enumConfirmationStatus

#enumConfirmationStatus:
	#ConfirmationPending |
	#ConfirmationSuccessful

// ConfirmationPending represents Pending Confirmation Request for SNS Subscription
#ConfirmationPending: #ConfirmationStatus & "ConfirmationPending"

// ConfirmationSuccessful represents confirmed SNS Subscription
#ConfirmationSuccessful: #ConfirmationStatus & "Confirmed"

// SubscriptionObservation represents the observed state of a AWS SNS Topic
#SubscriptionObservation: {
	// The subscription's owner.
	// +optional
	owner?: null | string @go(Owner,*string)

	// Status represents Confirmation Status of SNS Subscription
	// +optional
	status?: null | #ConfirmationStatus @go(Status,*ConfirmationStatus)

	// ConfirmationWasAuthenticated ??? true if the subscription confirmation
	// request was authenticated.
	// +optional
	confirmationWasAuthenticated?: null | bool @go(ConfirmationWasAuthenticated,*bool)
}

// SubscriptionStatus is the status of AWS SNS Topic
#SubscriptionStatus: {
	xpv1.#ResourceStatus
	atProvider?: #SubscriptionObservation @go(AtProvider)
}

// Subscription defines a managed resource that represents state of
// a AWS SNS Subscription
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="ENDPOINT",type="string",JSONPath=".spec.forProvider.endpoint"
// +kubebuilder:printcolumn:name="PROTOCOL",type="string",JSONPath=".spec.forProvider.protocol"
// +kubebuilder:printcolumn:name="STATUS",type="string",JSONPath=".status.atProvider.status"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Subscription: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta  @go(ObjectMeta)
	spec:      #SubscriptionSpec   @go(Spec)
	status?:   #SubscriptionStatus @go(Status)
}

// SubscriptionList contains a list of Topic
#SubscriptionList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Subscription] @go(Items,[]Subscription)
}
