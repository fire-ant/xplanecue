// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/ram/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// +kubebuilder:skipversion
#Principal: {
	creationTime?:     null | metav1.#Time @go(CreationTime,*metav1.Time)
	external?:         null | bool         @go(External,*bool)
	id?:               null | string       @go(ID,*string)
	lastUpdatedTime?:  null | metav1.#Time @go(LastUpdatedTime,*metav1.Time)
	resourceShareARN?: null | string       @go(ResourceShareARN,*string)
}

// +kubebuilder:skipversion
#Resource: {
	arn?:              null | string       @go(ARN,*string)
	creationTime?:     null | metav1.#Time @go(CreationTime,*metav1.Time)
	lastUpdatedTime?:  null | metav1.#Time @go(LastUpdatedTime,*metav1.Time)
	resourceGroupARN?: null | string       @go(ResourceGroupARN,*string)
	resourceShareARN?: null | string       @go(ResourceShareARN,*string)
	statusMessage?:    null | string       @go(StatusMessage,*string)
	type_?:            null | string       @go(Type,*string)
}

// +kubebuilder:skipversion
#ResourceShareAssociation: {
	associatedEntity?:  null | string       @go(AssociatedEntity,*string)
	creationTime?:      null | metav1.#Time @go(CreationTime,*metav1.Time)
	external?:          null | bool         @go(External,*bool)
	lastUpdatedTime?:   null | metav1.#Time @go(LastUpdatedTime,*metav1.Time)
	resourceShareARN?:  null | string       @go(ResourceShareARN,*string)
	resourceShareName?: null | string       @go(ResourceShareName,*string)
	statusMessage?:     null | string       @go(StatusMessage,*string)
}

// +kubebuilder:skipversion
#ResourceShareInvitation: {
	invitationTimestamp?:        null | metav1.#Time @go(InvitationTimestamp,*metav1.Time)
	receiverAccountID?:          null | string       @go(ReceiverAccountID,*string)
	receiverARN?:                null | string       @go(ReceiverARN,*string)
	resourceShareARN?:           null | string       @go(ResourceShareARN,*string)
	resourceShareInvitationARN?: null | string       @go(ResourceShareInvitationARN,*string)
	resourceShareName?:          null | string       @go(ResourceShareName,*string)
	senderAccountID?:            null | string       @go(SenderAccountID,*string)
}

// +kubebuilder:skipversion
#ResourceSharePermissionDetail: {
	arn?:                   null | string       @go(ARN,*string)
	creationTime?:          null | metav1.#Time @go(CreationTime,*metav1.Time)
	defaultVersion?:        null | bool         @go(DefaultVersion,*bool)
	isResourceTypeDefault?: null | bool         @go(IsResourceTypeDefault,*bool)
	lastUpdatedTime?:       null | metav1.#Time @go(LastUpdatedTime,*metav1.Time)
	name?:                  null | string       @go(Name,*string)
	permission?:            null | string       @go(Permission,*string)
	resourceType?:          null | string       @go(ResourceType,*string)
	version?:               null | string       @go(Version,*string)
}

// +kubebuilder:skipversion
#ResourceSharePermissionSummary: {
	arn?:                   null | string       @go(ARN,*string)
	creationTime?:          null | metav1.#Time @go(CreationTime,*metav1.Time)
	defaultVersion?:        null | bool         @go(DefaultVersion,*bool)
	isResourceTypeDefault?: null | bool         @go(IsResourceTypeDefault,*bool)
	lastUpdatedTime?:       null | metav1.#Time @go(LastUpdatedTime,*metav1.Time)
	name?:                  null | string       @go(Name,*string)
	resourceType?:          null | string       @go(ResourceType,*string)
	status?:                null | string       @go(Status,*string)
	version?:               null | string       @go(Version,*string)
}

// +kubebuilder:skipversion
#ResourceShare_SDK: {
	allowExternalPrincipals?: null | bool         @go(AllowExternalPrincipals,*bool)
	creationTime?:            null | metav1.#Time @go(CreationTime,*metav1.Time)
	featureSet?:              null | string       @go(FeatureSet,*string)
	lastUpdatedTime?:         null | metav1.#Time @go(LastUpdatedTime,*metav1.Time)
	name?:                    null | string       @go(Name,*string)
	owningAccountID?:         null | string       @go(OwningAccountID,*string)
	resourceShareARN?:        null | string       @go(ResourceShareARN,*string)
	status?:                  null | string       @go(Status,*string)
	statusMessage?:           null | string       @go(StatusMessage,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#ServiceNameAndResourceType: {
	resourceType?: null | string @go(ResourceType,*string)
	serviceName?:  null | string @go(ServiceName,*string)
}

// +kubebuilder:skipversion
#Tag: {
	key?:   null | string @go(Key,*string)
	value?: null | string @go(Value,*string)
}

// +kubebuilder:skipversion
#TagFilter: {
	tagKey?: null | string @go(TagKey,*string)
	tagValues?: [...null | string] @go(TagValues,[]*string)
}