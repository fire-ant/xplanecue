// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/secretsmanager/v1beta1

package v1beta1

import xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"

// CustomSecretParameters contains the additional fields for SecretParameters.
#CustomSecretParameters: {
	// KMSKeyIDRef is a reference to an kms/v1alpha1.Key used
	// to set the KMSKeyID field.
	// +optional
	kmsKeyIDRef?: null | xpv1.#Reference @go(KMSKeyIDRef,*xpv1.Reference)

	// KMSKeyIDSelector selects references to kms/v1alpha1.Key
	// used to set the KMSKeyID.
	// +optional
	kmsKeyIDSelector?: null | xpv1.#Selector @go(KMSKeyIDSelector,*xpv1.Selector)

	// StringSecretRef points to the Kubernetes Secret whose data will be sent
	// as string to AWS. If key parameter is given, only the value of that key
	// will be used. Otherwise, all data in the Secret will be marshalled into
	// JSON and sent to AWS.
	stringSecretRef?: null | #SecretReference @go(StringSecretRef,*SecretReference)

	// BinarySecretRef points to the Kubernetes Secret whose data will be encoded
	// as binary data to AWS. If key parameter is given, only the value of that
	// key will be used. Otherwise, all data in the Secret will be marshalled
	// into JSON and sent to AWS.
	binarySecretRef?: null | #SecretReference @go(BinarySecretRef,*SecretReference)

	// (Optional) Specifies that the secret is to be deleted without any recovery
	// window. You can't use both this parameter and the RecoveryWindowInDays parameter
	// in the same API call.
	//
	// An asynchronous background process performs the actual deletion, so there
	// can be a short delay before the operation completes. If you write code to
	// delete and then immediately recreate a secret with the same name, ensure
	// that your code includes appropriate back off and retry logic.
	//
	// Use this parameter with caution. This parameter causes the operation to skip
	// the normal waiting period before the permanent deletion that AWS would normally
	// impose with the RecoveryWindowInDays parameter. If you delete a secret with
	// the ForceDeleteWithouRecovery parameter, then you have no opportunity to
	// recover the secret. It is permanently lost.
	forceDeleteWithoutRecovery?: null | bool @go(ForceDeleteWithoutRecovery,*bool)

	// (Optional) Specifies the number of days that Secrets Manager waits before
	// it can delete the secret. You can't use both this parameter and the ForceDeleteWithoutRecovery
	// parameter in the same API call.
	//
	// This value can range from 7 to 30 days. The default value is 30.
	recoveryWindowInDays?: null | int64 @go(RecoveryWindowInDays,*int64)

	// A JSON-formatted string constructed according to the grammar and syntax for
	// an Amazon Web Services resource-based policy. The policy in the string identifies
	// who can access or manage this secret and its versions. For information on
	// how to format a JSON parameter for the various command line tool environments,
	// see Using JSON for Parameters (http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json)
	// in the CLI User Guide.
	//
	// ResourcePolicy is a required field
	// +optional
	resourcePolicy?: null | string @go(ResourcePolicy,*string)
}

// A SecretReference is a reference to a secret in an arbitrary namespace.
#SecretReference: {
	// Name of the secret.
	name: string @go(Name)

	// Namespace of the secret.
	namespace: string @go(Namespace)

	// Key whose value will be used. If not given, the whole map in the Secret
	// data will be used.
	key?: null | string @go(Key,*string)
}
