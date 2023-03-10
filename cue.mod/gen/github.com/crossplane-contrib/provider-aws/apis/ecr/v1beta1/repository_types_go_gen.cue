// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/ecr/v1beta1

package v1beta1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// RepositoryParameters define the desired state of an AWS Elastic Container Repository
#RepositoryParameters: {
	// Region is the region you'd like your Repository to be created in.
	region: string @go(Region)

	// The image scanning configuration for the repository. This determines whether
	// images are scanned for known vulnerabilities after being pushed to the repository.
	// +optional
	imageScanningConfiguration?: null | #ImageScanningConfiguration @go(ImageScanningConfiguration,*ImageScanningConfiguration)

	// The tag mutability setting for the repository. If this parameter is omitted,
	// the default setting of MUTABLE will be used which will allow image tags to
	// be overwritten. If IMMUTABLE is specified, all image tags within the repository
	// will be immutable which will prevent them from being overwritten.
	// +optional
	// +kubebuilder:validation:Enum=MUTABLE;IMMUTABLE
	imageTagMutability?: null | string @go(ImageTagMutability,*string)

	// Metadata tagging key value pairs
	// +optional
	tags?: [...#Tag] @go(Tags,[]Tag)

	// If a repository contains images, forces the deletion.
	// +optional
	forceDelete?: null | bool @go(ForceDelete,*bool)
}

// Tag defines a tag
#Tag: {
	// Key is the name of the tag.
	key: string @go(Key)

	// Value is the value of the tag.
	value: string @go(Value)
}

// A RepositorySpec defines the desired state of a Elastic Container Repository.
#RepositorySpec: {
	xpv1.#ResourceSpec
	forProvider: #RepositoryParameters @go(ForProvider)
}

// RepositoryObservation keeps the state for the external resource
#RepositoryObservation: {
	// The date and time, in JavaScript date format, when the repository was created.
	createdAt?: null | metav1.#Time @go(CreatedAt,*metav1.Time)

	// The AWS account ID associated with the registry that contains the repository.
	registryId: string @go(RegistryID)

	// The Amazon Resource Name (ARN) that identifies the repository. The ARN contains
	// the arn:aws:ecr namespace, followed by the region of the repository, AWS
	// account ID of the repository owner, repository namespace, and repository
	// name. For example, arn:aws:ecr:region:012345678910:repository/test.
	repositoryArn?: string @go(RepositoryArn)

	// The name of the repository.
	repositoryName?: string @go(RepositoryName)

	// The URI for the repository. You can use this URI for container image push
	// and pull operations.
	repositoryUri?: string @go(RepositoryURI)
}

// ImageScanningConfiguration Scanning Configuration
#ImageScanningConfiguration: {
	// The setting that determines whether images are scanned after being pushed
	// to a repository. If set to true, images will be scanned after being pushed.
	// If this parameter is not specified, it will default to false and images will
	// not be scanned unless a scan is manually started with the StartImageScan
	// API.
	scanOnPush: bool @go(ScanOnPush)
}

// A RepositoryStatus represents the observed state of a Elastic Container Repository.
#RepositoryStatus: {
	xpv1.#ResourceStatus
	atProvider?: #RepositoryObservation @go(AtProvider)
}

// A Repository is a managed resource that represents an Elastic Container Repository
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="ID",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="URI",type="string",JSONPath=".status.atProvider.repositoryUri"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Repository: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #RepositorySpec    @go(Spec)
	status?:   #RepositoryStatus  @go(Status)
}

// RepositoryList contains a list of ECRs
#RepositoryList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Repository] @go(Items,[]Repository)
}
