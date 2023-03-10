// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/sfn/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// +kubebuilder:skipversion
#ActivityListItem: {
	activityARN?:  null | string       @go(ActivityARN,*string)
	creationDate?: null | metav1.#Time @go(CreationDate,*metav1.Time)
	name?:         null | string       @go(Name,*string)
}

// +kubebuilder:skipversion
#ActivityScheduledEventDetails: {
	resource?: null | string @go(Resource,*string)
}

// +kubebuilder:skipversion
#CloudWatchLogsLogGroup: {
	logGroupARN?: null | string @go(LogGroupARN,*string)
}

// +kubebuilder:skipversion
#ExecutionListItem: {
	executionARN?:    null | string       @go(ExecutionARN,*string)
	name?:            null | string       @go(Name,*string)
	startDate?:       null | metav1.#Time @go(StartDate,*metav1.Time)
	stateMachineARN?: null | string       @go(StateMachineARN,*string)
	stopDate?:        null | metav1.#Time @go(StopDate,*metav1.Time)
}

// +kubebuilder:skipversion
#ExecutionStartedEventDetails: {
	roleARN?: null | string @go(RoleARN,*string)
}

// +kubebuilder:skipversion
#HistoryEvent: {
	timestamp?: null | metav1.#Time @go(Timestamp,*metav1.Time)
}

// +kubebuilder:skipversion
#LambdaFunctionScheduledEventDetails: {
	resource?: null | string @go(Resource,*string)
}

// +kubebuilder:skipversion
#LogDestination: {
	cloudWatchLogsLogGroup?: null | #CloudWatchLogsLogGroup @go(CloudWatchLogsLogGroup,*CloudWatchLogsLogGroup)
}

// +kubebuilder:skipversion
#LoggingConfiguration: {
	destinations?: [...null | #LogDestination] @go(Destinations,[]*LogDestination)
	includeExecutionData?: null | bool   @go(IncludeExecutionData,*bool)
	level?:                null | string @go(Level,*string)
}

// +kubebuilder:skipversion
#MapIterationEventDetails: {
	name?: null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#StateEnteredEventDetails: {
	name?: null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#StateExitedEventDetails: {
	name?: null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#StateMachineListItem: {
	creationDate?:    null | metav1.#Time @go(CreationDate,*metav1.Time)
	name?:            null | string       @go(Name,*string)
	stateMachineARN?: null | string       @go(StateMachineARN,*string)
	type_?:           null | string       @go(Type,*string)
}

// +kubebuilder:skipversion
#Tag: {
	key?:   null | string @go(Key,*string)
	value?: null | string @go(Value,*string)
}

// +kubebuilder:skipversion
#TaskFailedEventDetails: {
	resource?:     null | string @go(Resource,*string)
	resourceType?: null | string @go(ResourceType,*string)
}

// +kubebuilder:skipversion
#TaskScheduledEventDetails: {
	region?:       null | string @go(Region,*string)
	resource?:     null | string @go(Resource,*string)
	resourceType?: null | string @go(ResourceType,*string)
}

// +kubebuilder:skipversion
#TaskStartFailedEventDetails: {
	resource?:     null | string @go(Resource,*string)
	resourceType?: null | string @go(ResourceType,*string)
}

// +kubebuilder:skipversion
#TaskStartedEventDetails: {
	resource?:     null | string @go(Resource,*string)
	resourceType?: null | string @go(ResourceType,*string)
}

// +kubebuilder:skipversion
#TaskSubmitFailedEventDetails: {
	resource?:     null | string @go(Resource,*string)
	resourceType?: null | string @go(ResourceType,*string)
}

// +kubebuilder:skipversion
#TaskSubmittedEventDetails: {
	resource?:     null | string @go(Resource,*string)
	resourceType?: null | string @go(ResourceType,*string)
}

// +kubebuilder:skipversion
#TaskSucceededEventDetails: {
	resource?:     null | string @go(Resource,*string)
	resourceType?: null | string @go(ResourceType,*string)
}

// +kubebuilder:skipversion
#TaskTimedOutEventDetails: {
	resource?:     null | string @go(Resource,*string)
	resourceType?: null | string @go(ResourceType,*string)
}

// +kubebuilder:skipversion
#TracingConfiguration: {
	enabled?: null | bool @go(Enabled,*bool)
}
