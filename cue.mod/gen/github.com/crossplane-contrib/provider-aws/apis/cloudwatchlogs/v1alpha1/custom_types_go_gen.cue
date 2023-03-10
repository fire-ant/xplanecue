// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/cloudwatchlogs/v1alpha1

package v1alpha1

import xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"

// CustomLogGroupParameters contains the additional fields for LogGroup.
#CustomLogGroupParameters: {
	// The number of days to retain the log events in the specified log group.
	// If you select 0, the events in the log group are always retained and never expire.
	// +kubebuilder:validation:Enum=0;1;3;5;7;14;30;60;90;120;150;180;365;400;545;731;1827;3653
	// +optional
	retentionInDays?: null | int64 @go(RetentionInDays,*int64)

	// The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.
	// For more information, see Amazon Resource Names - AWS Key Management Service
	// (AWS KMS) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms).
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1.Key
	// +crossplane:generate:reference:refFieldName=KMSKeyIDRef
	// +crossplane:generate:reference:selectorFieldName=KMSKeyIDSelector
	kmsKeyID?: null | string @go(KMSKeyID,*string)

	// KMSKeyIDRef is a reference to a KMS Key used to set KMSKeyID.
	// +optional
	kmsKeyIDRef?: null | xpv1.#Reference @go(KMSKeyIDRef,*xpv1.Reference)

	// KMSKeyIDSelector selects a reference to a KMS Key used to set KMSKeyID.
	// +optional
	kmsKeyIDSelector?: null | xpv1.#Selector @go(KMSKeyIDSelector,*xpv1.Selector)
}
