// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/batch/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// ComputeEnvironmentParameters defines the desired state of ComputeEnvironment
#ComputeEnvironmentParameters: {
	// Region is which region the ComputeEnvironment will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// Details about the compute resources managed by the compute environment. This
	// parameter is required for managed compute environments. For more information,
	// see Compute Environments (https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html)
	// in the Batch User Guide.
	computeResources?: null | #ComputeResource @go(ComputeResources,*ComputeResource)

	// The tags that you apply to the compute environment to help you categorize
	// and organize your resources. Each tag consists of a key and an optional value.
	// For more information, see Tagging Amazon Web Services Resources (https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html)
	// in Amazon Web Services General Reference.
	//
	// These tags can be updated or removed using the TagResource (https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html)
	// and UntagResource (https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html)
	// API operations. These tags don't propagate to the underlying compute resources.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The type of the compute environment: MANAGED or UNMANAGED. For more information,
	// see Compute Environments (https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html)
	// in the Batch User Guide.
	// +kubebuilder:validation:Required
	type_?: null | string @go(Type,*string)

	// The maximum number of vCPUs for an unmanaged compute environment. This parameter
	// is only used for fair share scheduling to reserve vCPU capacity for new share
	// identifiers. If this parameter isn't provided for a fair share job queue,
	// no vCPU capacity is reserved.
	//
	// This parameter is only supported when the type parameter is set to UNMANAGED.
	unmanagedvCPUs?: null | int64 @go(UnmanagedvCPUs,*int64)

	#CustomComputeEnvironmentParameters
}

// ComputeEnvironmentSpec defines the desired state of ComputeEnvironment
#ComputeEnvironmentSpec: {
	xpv1.#ResourceSpec
	forProvider: #ComputeEnvironmentParameters @go(ForProvider)
}

// ComputeEnvironmentObservation defines the observed state of ComputeEnvironment
#ComputeEnvironmentObservation: {
	// The Amazon Resource Name (ARN) of the compute environment.
	computeEnvironmentARN?: null | string @go(ComputeEnvironmentARN,*string)

	// The name of the compute environment. It can be up to 128 letters long. It
	// can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores
	// (_).
	computeEnvironmentName?: null | string @go(ComputeEnvironmentName,*string)

	// The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster used
	// by the compute environment.
	ecsClusterARN?: null | string @go(EcsClusterARN,*string)

	// The state of the compute environment. The valid values are ENABLED or DISABLED.
	//
	// If the state is ENABLED, then the Batch scheduler can attempt to place jobs
	// from an associated job queue on the compute resources within the environment.
	// If the compute environment is managed, then it can scale its instances out
	// or in automatically, based on the job queue demand.
	//
	// If the state is DISABLED, then the Batch scheduler doesn't attempt to place
	// jobs within the environment. Jobs in a STARTING or RUNNING state continue
	// to progress normally. Managed compute environments in the DISABLED state
	// don't scale out. However, they scale in to minvCpus value after instances
	// become idle.
	state?: null | string @go(State,*string)

	// The current status of the compute environment (for example, CREATING or VALID).
	status?: null | string @go(Status,*string)
}

// ComputeEnvironmentStatus defines the observed state of ComputeEnvironment.
#ComputeEnvironmentStatus: {
	xpv1.#ResourceStatus
	atProvider?: #ComputeEnvironmentObservation @go(AtProvider)
}

// ComputeEnvironment is the Schema for the ComputeEnvironments API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ComputeEnvironment: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta        @go(ObjectMeta)
	spec:      #ComputeEnvironmentSpec   @go(Spec)
	status?:   #ComputeEnvironmentStatus @go(Status)
}

// ComputeEnvironmentList contains a list of ComputeEnvironments
#ComputeEnvironmentList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#ComputeEnvironment] @go(Items,[]ComputeEnvironment)
}
