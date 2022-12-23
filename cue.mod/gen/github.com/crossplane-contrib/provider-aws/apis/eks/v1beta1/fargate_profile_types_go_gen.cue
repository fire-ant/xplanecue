// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/eks/v1beta1

package v1beta1

import (
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
)

// FargateProfileStatusType is a type of FargateProfile status.
#FargateProfileStatusType: string // #enumFargateProfileStatusType

#enumFargateProfileStatusType:
	#FargateProfileStatusCreating |
	#FargateProfileStatusActive |
	#FargateProfileStatusDeleting |
	#FargateProfileStatusCreateFailed |
	#FargateProfileStatusDeleteFailed

#FargateProfileStatusCreating:     #FargateProfileStatusType & "CREATING"
#FargateProfileStatusActive:       #FargateProfileStatusType & "ACTIVE"
#FargateProfileStatusDeleting:     #FargateProfileStatusType & "DELETING"
#FargateProfileStatusCreateFailed: #FargateProfileStatusType & "CREATE_FAILED"
#FargateProfileStatusDeleteFailed: #FargateProfileStatusType & "DELETE_FAILED"

// FargateProfileSelector is an object representing an AWS Fargate profile selector.
#FargateProfileSelector: {
	// The Kubernetes labels that the selector should match. A pod must contain
	// all of the labels that are specified in the selector for it to be considered
	// a match.
	labels?: {[string]: string} @go(Labels,map[string]string)

	// The Kubernetes namespace that the selector should match.
	namespace?: null | string @go(Namespace,*string)
}

// FargateProfileObservation is the observed state of a FargateProfile.
#FargateProfileObservation: {
	// The Unix epoch timestamp in seconds for when the Fargate profile was created.
	createdAt?: null | metav1.#Time @go(CreatedAt,*metav1.Time)

	// The full Amazon Resource Name (ARN) of the Fargate profile.
	fargateProfileArn?: string @go(FargateProfileArn)

	// The current status of the Fargate profile.
	status?: #FargateProfileStatusType @go(Status)
}

// FargateProfileParameters define the desired state of an AWS Elastic Kubernetes
// Service FargateProfile.
// All fields are immutable as it is not possible to update a Fargate profile.
#FargateProfileParameters: {
	// Region is the region you'd like  the FargateProfile to be created in.
	// +immutable
	region: string @go(Region)

	// The name of the Amazon EKS cluster to apply the Fargate profile to.
	//
	// ClusterName is a required field
	// +immutable
	// +crossplane:generate:reference:type=Cluster
	clusterName?: string @go(ClusterName)

	// ClusterNameRef is a reference to a Cluster used to set
	// the ClusterName.
	// +immutable
	// +optional
	clusterNameRef?: null | xpv1.#Reference @go(ClusterNameRef,*xpv1.Reference)

	// ClusterNameSelector selects references to a Cluster used
	// to set the ClusterName.
	// +optional
	clusterNameSelector?: null | xpv1.#Selector @go(ClusterNameSelector,*xpv1.Selector)

	// The Amazon Resource Name (ARN) of the pod execution role to use for pods
	// that match the selectors in the Fargate profile. The pod execution role allows
	// Fargate infrastructure to register with your cluster as a node, and it provides
	// read access to Amazon ECR image repositories. For more information, see Pod
	// Execution Role (https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html)
	// in the Amazon EKS User Guide.
	//
	// At least one of podExecutionRoleArn, podExecutionRoleArnRef or podExecutionRoleArnSelector has to be given
	// +immutable
	// +optional
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.RoleARN()
	podExecutionRoleArn?: string @go(PodExecutionRoleArn)

	// PodExecutionRoleArnRef is a reference to an IAMRole used to set
	// the PodExecutionRoleArn.
	// At least one of podExecutionRoleArn, podExecutionRoleArnRef or podExecutionRoleArnSelector has to be given
	// +immutable
	// +optional
	podExecutionRoleArnRef?: null | xpv1.#Reference @go(PodExecutionRoleArnRef,*xpv1.Reference)

	// PodExecutionRoleArnSelector selects references to IAMRole used
	// to set the PodExecutionRoleArn.
	// At least one of podExecutionRoleArn, podExecutionRoleArnRef or podExecutionRoleArnSelector has to be given
	// +optional
	podExecutionRoleArnSelector?: null | xpv1.#Selector @go(PodExecutionRoleArnSelector,*xpv1.Selector)

	// The selectors to match for pods to use this Fargate profile. Each selector
	// must have an associated namespace. Optionally, you can also specify labels
	// for a namespace. You may specify up to five selectors in a Fargate profile.
	// +immutable
	selectors?: [...#FargateProfileSelector] @go(Selectors,[]FargateProfileSelector)

	// The IDs of subnets to launch your pods into. At this time, pods running on
	// Fargate are not assigned public IP addresses, so only private subnets (with
	// no direct route to an Internet Gateway) are accepted for this parameter.
	// +optional
	// +immutable
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:refFieldName=SubnetRefs
	// +crossplane:generate:reference:selectorFieldName=SubnetSelector
	subnets?: [...string] @go(Subnets,[]string)

	// SubnetRefs are references to Subnets used to set the Subnets.
	// +immutable
	// +optional
	subnetRefs?: [...xpv1.#Reference] @go(SubnetRefs,[]xpv1.Reference)

	// SubnetSelector selects references to Subnets used to set the Subnets.
	// +optional
	subnetSelector?: null | xpv1.#Selector @go(SubnetSelector,*xpv1.Selector)

	// The metadata to apply to the Fargate profile to assist with categorization
	// and organization. Each tag consists of a key and an optional value, both
	// of which you define. Fargate profile tags do not propagate to any other resources
	// associated with the Fargate profile, such as the pods that are scheduled
	// with it.
	// +optional
	tags?: {[string]: string} @go(Tags,map[string]string)
}

// A FargateProfileSpec defines the desired state of an EKS FargateProfile.
#FargateProfileSpec: {
	xpv1.#ResourceSpec
	forProvider: #FargateProfileParameters @go(ForProvider)
}

// A FargateProfileStatus represents the observed state of an EKS FargateProfile.
#FargateProfileStatus: {
	xpv1.#ResourceStatus
	atProvider?: #FargateProfileObservation @go(AtProvider)
}

// A FargateProfile is a managed resource that represents an AWS Elastic Kubernetes
// Service FargateProfile.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="CLUSTER",type="string",JSONPath=".spec.forProvider.clusterName"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#FargateProfile: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta    @go(ObjectMeta)
	spec:      #FargateProfileSpec   @go(Spec)
	status?:   #FargateProfileStatus @go(Status)
}

// FargateProfileList contains a list of FargateProfile items
#FargateProfileList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#FargateProfile] @go(Items,[]FargateProfile)
}
