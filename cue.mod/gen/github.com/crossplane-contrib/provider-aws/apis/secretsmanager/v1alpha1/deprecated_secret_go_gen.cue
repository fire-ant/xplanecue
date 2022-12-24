// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/secretsmanager/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// SecretParameters defines the desired state of Secret
#SecretParameters: {
	// Region is which region the Secret will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// (Optional) Specifies a user-provided description of the secret.
	description?: null | string @go(Description,*string)

	// (Optional) Specifies the ARN, Key ID, or alias of the AWS KMS customer master
	// key (CMK) to be used to encrypt the SecretString or SecretBinary values in
	// the versions stored in this secret.
	//
	// You can specify any of the supported ways to identify a AWS KMS key ID. If
	// you need to reference a CMK in a different account, you can use only the
	// key ARN or the alias ARN.
	//
	// If you don't specify this value, then Secrets Manager defaults to using the
	// AWS account's default CMK (the one named aws/secretsmanager). If a AWS KMS
	// CMK with that name doesn't yet exist, then Secrets Manager creates it for
	// you automatically the first time it needs to encrypt a version's SecretString
	// or SecretBinary fields.
	//
	// You can use the account default CMK to encrypt and decrypt only if you call
	// this operation using credentials from the same account that owns the secret.
	// If the secret resides in a different account, then you must create a custom
	// CMK and specify the ARN in this field.
	kmsKeyID?: null | string @go(KMSKeyID,*string)

	// (Optional) Specifies a list of user-defined tags that are attached to the
	// secret. Each tag is a "Key" and "Value" pair of strings. This operation only
	// appends tags to the existing list of tags. To remove tags, you must use UntagResource.
	//
	//    * Secrets Manager tag key names are case sensitive. A tag with the key
	//    "ABC" is a different tag from one with key "abc".
	//
	//    * If you check tags in IAM policy Condition elements as part of your security
	//    strategy, then adding or removing a tag can change permissions. If the
	//    successful completion of this operation would result in you losing your
	//    permissions for this secret, then this operation is blocked and returns
	//    an Access Denied error.
	//
	// This parameter requires a JSON text string argument. For information on how
	// to format a JSON parameter for the various command line tool environments,
	// see Using JSON for Parameters (https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json)
	// in the AWS CLI User Guide. For example:
	//
	// [{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]
	//
	// If your command-line tool or SDK requires quotation marks around the parameter,
	// you should use single quotes to avoid confusion with the double quotes required
	// in the JSON text.
	//
	// The following basic restrictions apply to tags:
	//
	//    * Maximum number of tags per secret—50
	//
	//    * Maximum key length—127 Unicode characters in UTF-8
	//
	//    * Maximum value length—255 Unicode characters in UTF-8
	//
	//    * Tag keys and values are case sensitive.
	//
	//    * Do not use the aws: prefix in your tag names or values because AWS reserves
	//    it for AWS use. You can't edit or delete tag names or values with this
	//    prefix. Tags with this prefix do not count against your tags per secret
	//    limit.
	//
	//    * If you use your tagging schema across multiple services and resources,
	//    remember other services might have restrictions on allowed characters.
	//    Generally allowed characters: letters, spaces, and numbers representable
	//    in UTF-8, plus the following special characters: + - = . _ : / @.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	#CustomSecretParameters
}

// SecretSpec defines the desired state of Secret
#SecretSpec: {
	xpv1.#ResourceSpec
	forProvider: #SecretParameters @go(ForProvider)
}

// SecretObservation defines the observed state of Secret
#SecretObservation: {
	// The Amazon Resource Name (ARN) of the secret that you just created.
	//
	// Secrets Manager automatically adds several random characters to the name
	// at the end of the ARN when you initially create a secret. This affects only
	// the ARN and not the actual friendly name. This ensures that if you create
	// a new secret with the same name as an old secret that you previously deleted,
	// then users with access to the old secret don't automatically get access to
	// the new secret because the ARNs are different.
	arn?: null | string @go(ARN,*string)
}

// SecretStatus defines the observed state of Secret.
#SecretStatus: {
	xpv1.#ResourceStatus
	atProvider?: #SecretObservation @go(AtProvider)
}

// Secret is the Schema for the Secrets API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:deprecatedversion:warning="Please use v1beta1 version of this resource."
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Secret: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #SecretSpec        @go(Spec)
	status?:   #SecretStatus      @go(Status)
}

// SecretList contains a list of Secrets
#SecretList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Secret] @go(Items,[]Secret)
}
