// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/ecr/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// RepositoryPolicyParameters define the desired state of an AWS Elastic Container Repository
#RepositoryPolicyParameters: {
	// Region is the region you'd like your RepositoryPolicy to be created in.
	region: string @go(Region)

	// If the policy you are attempting to set on a repository policy would prevent
	// you from setting another policy in the future, you must force the SetRepositoryPolicy
	// operation. This is intended to prevent accidental repository lock outs.
	// +optional
	force?: null | bool @go(Force,*bool)

	// Policy is a well defined type which can be parsed into an JSON Repository Policy
	// either policy or rawPolicy must be specified in the policy
	// +optional
	policy?: null | #RepositoryPolicyBody @go(Policy,*RepositoryPolicyBody)

	// Policy stringified version of JSON repository policy
	// either policy or rawPolicy must be specified in the policy
	// +optional
	rawPolicy?: null | string @go(RawPolicy,*string)

	// The AWS account ID associated with the registry that contains the repository.
	// If you do not specify a registry, the default registry is assumed.
	// +optional
	// +immutable
	registryId?: null | string @go(RegistryID,*string)

	// The name of the repository to receive the policy.
	//
	// One of RepositoryName, RepositoryNameRef, or RepositoryNameSelector is required.
	// +optional
	// +immutable
	repositoryName?: null | string @go(RepositoryName,*string)

	// A referencer to retrieve the name of a repository
	// One of RepositoryName, RepositoryNameRef, or RepositoryNameSelector is required.
	// +immutable
	repositoryNameRef?: null | xpv1.#Reference @go(RepositoryNameRef,*xpv1.Reference)

	// A selector to select a referencer to retrieve the name of a repository
	// One of RepositoryName, RepositoryNameRef, or RepositoryNameSelector is required.
	// +immutable
	repositoryNameSelector?: null | xpv1.#Selector @go(RepositoryNameSelector,*xpv1.Selector)
}

// RepositoryPolicyBody represents an ECR Repository policy in the manifest
#RepositoryPolicyBody: {
	// Version is the current IAM policy version
	// +kubebuilder:validation:Enum="2012-10-17";"2008-10-17"
	// +kubebuilder:default:="2012-10-17"
	version: string @go(Version)

	// ID is the policy's optional identifier
	// +immutable
	// +optional
	id?: null | string @go(ID,*string)

	// Statements is the list of statement this policy applies
	// either jsonStatements or statements must be specified in the policy
	// +optional
	statements?: [...#RepositoryPolicyStatement] @go(Statements,[]RepositoryPolicyStatement)
}

// RepositoryPolicyStatement defines an individual statement within the
// RepositoryPolicyBody
#RepositoryPolicyStatement: {
	// Optional identifier for this statement, must be unique within the
	// policy if provided.
	// +optional
	sid?: null | string @go(SID,*string)

	// The effect is required and specifies whether the statement results
	// in an allow or an explicit deny. Valid values for Effect are Allow and Deny.
	// +kubebuilder:validation:Enum=Allow;Deny
	effect: string @go(Effect)

	// Used with the Repository policy to specify the principal that is allowed
	// or denied access to a resource.
	// +optional
	principal?: null | #RepositoryPrincipal @go(Principal,*RepositoryPrincipal)

	// Used with the Repository policy to specify the users which are not included
	// in this policy
	// +optional
	notPrincipal?: null | #RepositoryPrincipal @go(NotPrincipal,*RepositoryPrincipal)

	// Each element of the PolicyAction array describes the specific
	// action or actions that will be allowed or denied with this PolicyStatement.
	// +optional
	action?: [...string] @go(Action,[]string)

	// Each element of the NotPolicyAction array will allow the property to match
	// all but the listed actions.
	// +optional
	notAction?: [...string] @go(NotAction,[]string)

	// The paths on which this resource will apply
	// +optional
	resource?: [...string] @go(Resource,[]string)

	// This will explicitly match all resource paths except the ones
	// specified in this array
	// +optional
	notResource?: [...string] @go(NotResource,[]string)

	// Condition specifies where conditions for policy are in effect.
	// https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonelasticcontainerregistry.html#amazonelasticcontainerregistry-policy-keys
	// +optional
	condition?: [...#Condition] @go(Condition,[]Condition)
}

// RepositoryPrincipal defines the principal users affected by
// the RepositoryPolicyStatement
// Please see the AWS ECR docs for more information
// https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html
#RepositoryPrincipal: {
	// This flag indicates if the policy should be made available
	// to all anonymous users. Principal: "*"
	// +optional
	allowAnon?: null | bool @go(AllowAnon,*bool)

	// This list contains the all of the AWS IAM users which are affected
	// by the policy statement.
	// +optional
	awsPrincipals?: [...#AWSPrincipal] @go(AWSPrincipals,[]AWSPrincipal)

	// Service define the services which can have access to this bucket
	// +optional
	service?: [...string] @go(Service,[]string)

	// Raw string input can be used for *
	// +optional
	raw?: null | string @go(Raw,*string)
}

// AWSPrincipal wraps the potential values a policy
// principal can take. Only one of the values should be set.
#AWSPrincipal: {
	// UserARN contains the ARN of an IAM user
	// +optional
	// +immutable
	iamUserArn?: null | string @go(UserARN,*string)

	// UserARNRef contains the reference to an User
	// +optional
	iamUserArnRef?: null | xpv1.#Reference @go(UserARNRef,*xpv1.Reference)

	// UserARNSelector queries for an User to retrieve its userName
	// +optional
	iamUserArnSelector?: null | xpv1.#Selector @go(UserARNSelector,*xpv1.Selector)

	// AWSAccountID identifies an AWS account as the principal
	// +optional
	// +immutable
	awsAccountId?: null | string @go(AWSAccountID,*string)

	// IAMRoleARN contains the ARN of an IAM role
	// +optional
	// +immutable
	iamRoleArn?: null | string @go(IAMRoleARN,*string)

	// IAMRoleARNRef contains the reference to an IAMRole
	// +optional
	iamRoleArnRef?: null | xpv1.#Reference @go(IAMRoleARNRef,*xpv1.Reference)

	// IAMRoleARNSelector queries for an IAM role to retrieve its userName
	// +optional
	iamRoleArnSelector?: null | xpv1.#Selector @go(IAMRoleARNSelector,*xpv1.Selector)
}

// Condition represents a set of condition pairs for a Repository policy
#Condition: {
	// OperatorKey matches the condition key and value in the policy against values in the request context
	operatorKey: string @go(OperatorKey)

	// Conditions represents each of the key/value pairs for the operator key
	conditions: [...#ConditionPair] @go(Conditions,[]ConditionPair)
}

// ConditionPair represents one condition inside of the set of conditions for
// a Repository policy
#ConditionPair: {
	// ConditionKey is the key condition being applied to the parent condition
	key: string @go(ConditionKey)

	// ConditionStringValue is the expected string value of the key from the parent condition
	// +optional
	stringValue?: null | string @go(ConditionStringValue,*string)

	// ConditionDateValue is the expected string value of the key from the parent condition. The
	// date value must be in ISO 8601 format. The time is always midnight UTC.
	// +optional
	dateValue?: null | metav1.#Time @go(ConditionDateValue,*metav1.Time)

	// ConditionNumericValue is the expected string value of the key from the parent condition
	// +optional
	numericValue?: null | int64 @go(ConditionNumericValue,*int64)

	// ConditionBooleanValue is the expected boolean value of the key from the parent condition
	// +optional
	booleanValue?: null | bool @go(ConditionBooleanValue,*bool)

	// ConditionListValue is the list value of the key from the parent condition
	// +optional
	listValue?: [...string] @go(ConditionListValue,[]string)
}

// A RepositoryPolicySpec defines the desired state of a Elastic Container Repository.
#RepositoryPolicySpec: {
	xpv1.#ResourceSpec
	forProvider: #RepositoryPolicyParameters @go(ForProvider)
}

// RepositoryPolicyObservation keeps the state for the external resource
#RepositoryPolicyObservation: {
}

// A RepositoryPolicyStatus represents the observed state of a repository policy
#RepositoryPolicyStatus: {
	xpv1.#ResourceStatus
	atProvider?: #RepositoryPolicyObservation @go(AtProvider)
}

// A RepositoryPolicy is a managed resource that represents an Elastic Container Repository Policy
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="ID",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
// +kubebuilder:deprecatedversion:warning="Please use v1beta1 version of this resource that has identical schema."
// Deprecated: Please use v1beta1 version of this resource.
#RepositoryPolicy: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta      @go(ObjectMeta)
	spec:      #RepositoryPolicySpec   @go(Spec)
	status?:   #RepositoryPolicyStatus @go(Status)
}

// RepositoryPolicyList contains a list of RepositoryPolicies
// +kubebuilder:deprecatedversion:warning="Please use v1beta1 version of this resource that has identical schema."
// Deprecated: Please use v1beta1 version of this resource.
#RepositoryPolicyList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#RepositoryPolicy] @go(Items,[]RepositoryPolicy)
}
