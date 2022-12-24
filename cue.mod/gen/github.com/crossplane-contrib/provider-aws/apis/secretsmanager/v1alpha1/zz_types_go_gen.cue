// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/secretsmanager/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// +kubebuilder:skipversion
#Filter: {
	key?: null | string @go(Key,*string)
	values?: [...null | string] @go(Values,[]*string)
}

// +kubebuilder:skipversion
#RotationRulesType: {
	automaticallyAfterDays?: null | int64 @go(AutomaticallyAfterDays,*int64)
}

// +kubebuilder:skipversion
#SecretListEntry: {
	arn?:               null | string       @go(ARN,*string)
	createdDate?:       null | metav1.#Time @go(CreatedDate,*metav1.Time)
	deletedDate?:       null | metav1.#Time @go(DeletedDate,*metav1.Time)
	description?:       null | string       @go(Description,*string)
	kmsKeyID?:          null | string       @go(KMSKeyID,*string)
	lastAccessedDate?:  null | metav1.#Time @go(LastAccessedDate,*metav1.Time)
	lastChangedDate?:   null | metav1.#Time @go(LastChangedDate,*metav1.Time)
	lastRotatedDate?:   null | metav1.#Time @go(LastRotatedDate,*metav1.Time)
	name?:              null | string       @go(Name,*string)
	owningService?:     null | string       @go(OwningService,*string)
	rotationEnabled?:   null | bool         @go(RotationEnabled,*bool)
	rotationLambdaARN?: null | string       @go(RotationLambdaARN,*string)

	// A structure that defines the rotation configuration for the secret.
	rotationRules?: null | #RotationRulesType @go(RotationRules,*RotationRulesType)
	secretVersionsToStages?: {[string]: [...null | string]} @go(SecretVersionsToStages,map[string][]*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#SecretVersionsListEntry: {
	lastAccessedDate?: null | metav1.#Time @go(LastAccessedDate,*metav1.Time)
	versionStages?: [...null | string] @go(VersionStages,[]*string)
}

// +kubebuilder:skipversion
#Tag: {
	key?:   null | string @go(Key,*string)
	value?: null | string @go(Value,*string)
}
