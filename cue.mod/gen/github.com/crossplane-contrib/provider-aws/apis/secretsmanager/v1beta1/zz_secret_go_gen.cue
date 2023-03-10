// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/secretsmanager/v1beta1

package v1beta1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// SecretParameters defines the desired state of Secret
#SecretParameters: {
	// Region is which region the Secret will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// A list of Regions and KMS keys to replicate secrets.
	addReplicaRegions?: [...null | #ReplicaRegionType] @go(AddReplicaRegions,[]*ReplicaRegionType)

	// The description of the secret.
	description?: null | string @go(Description,*string)

	// Specifies whether to overwrite a secret with the same name in the destination
	// Region.
	forceOverwriteReplicaSecret?: null | bool @go(ForceOverwriteReplicaSecret,*bool)

	// The ARN, key ID, or alias of the KMS key that Secrets Manager uses to encrypt
	// the secret value in the secret.
	// 
	// To use a KMS key in a different account, use the key ARN or the alias ARN.
	// 
	// If you don't specify this value, then Secrets Manager uses the key aws/secretsmanager.
	// If that key doesn't yet exist, then Secrets Manager creates it for you automatically
	// the first time it encrypts the secret value.
	// 
	// If the secret is in a different Amazon Web Services account from the credentials
	// calling the API, then you can't use aws/secretsmanager to encrypt the secret,
	// and you must create and use a customer managed KMS key.
	kmsKeyID?: null | string @go(KMSKeyID,*string)

	// A list of tags to attach to the secret. Each tag is a key and value pair
	// of strings in a JSON text string, for example:
	// 
	// [{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]
	// 
	// Secrets Manager tag key names are case sensitive. A tag with the key "ABC"
	// is a different tag from one with key "abc".
	// 
	// If you check tags in permissions policies as part of your security strategy,
	// then adding or removing a tag can change permissions. If the completion of
	// this operation would result in you losing your permissions for this secret,
	// then Secrets Manager blocks the operation and returns an Access Denied error.
	// For more information, see Control access to secrets using tags (https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac)
	// and Limit access to identities with tags that match secrets' tags (https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2).
	// 
	// For information about how to format a JSON parameter for the various command
	// line tool environments, see Using JSON for Parameters (https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json).
	// If your command-line tool or SDK requires quotation marks around the parameter,
	// you should use single quotes to avoid confusion with the double quotes required
	// in the JSON text.
	// 
	// The following restrictions apply to tags:
	// 
	//    * Maximum number of tags per secret: 50
	// 
	//    * Maximum key length: 127 Unicode characters in UTF-8
	// 
	//    * Maximum value length: 255 Unicode characters in UTF-8
	// 
	//    * Tag keys and values are case sensitive.
	// 
	//    * Do not use the aws: prefix in your tag names or values because Amazon
	//    Web Services reserves it for Amazon Web Services use. You can't edit or
	//    delete tag names or values with this prefix. Tags with this prefix do
	//    not count against your tags per secret limit.
	// 
	//    * If you use your tagging schema across multiple services and resources,
	//    other services might have restrictions on allowed characters. Generally
	//    allowed characters: letters, spaces, and numbers representable in UTF-8,
	//    plus the following special characters: + - = . _ : / @.
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
	// The ARN of the new secret. The ARN includes the name of the secret followed
	// by six random characters. This ensures that if you create a new secret with
	// the same name as a deleted secret, then users with access to the old secret
	// don't get access to the new secret because the ARNs are different.
	arn?: null | string @go(ARN,*string)

	// A list of the replicas of this secret and their status:
	// 
	//    * Failed, which indicates that the replica was not created.
	// 
	//    * InProgress, which indicates that Secrets Manager is in the process of
	//    creating the replica.
	// 
	//    * InSync, which indicates that the replica was created.
	replicationStatus?: [...null | #ReplicationStatusType] @go(ReplicationStatus,[]*ReplicationStatusType)
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
// +kubebuilder:storageversion
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
