// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// DeploymentParameters defines the desired state of Deployment
#DeploymentParameters: {
	// Region is which region the Deployment will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// Enables a cache cluster for the Stage resource specified in the input.
	cacheClusterEnabled?: null | bool @go(CacheClusterEnabled,*bool)

	// Specifies the cache cluster size for the Stage resource specified in the
	// input, if a cache cluster is enabled.
	cacheClusterSize?: null | string @go(CacheClusterSize,*string)

	// The input configuration for the canary deployment when the deployment is
	// a canary release deployment.
	canarySettings?: null | #DeploymentCanarySettings @go(CanarySettings,*DeploymentCanarySettings)

	// The description for the Deployment resource to create.
	description?: null | string @go(Description,*string)

	// The description of the Stage resource for the Deployment resource to create.
	stageDescription?: null | string @go(StageDescription,*string)

	// The name of the Stage resource for the Deployment resource to create.
	stageName?: null | string @go(StageName,*string)

	// Specifies whether active tracing with X-ray is enabled for the Stage.
	tracingEnabled?: null | bool @go(TracingEnabled,*bool)

	// A map that defines the stage variables for the Stage resource that is associated
	// with the new deployment. Variable names can have alphanumeric and underscore
	// characters, and the values must match [A-Za-z0-9-._~:/?#&=,]+.
	variables?: {[string]: null | string} @go(Variables,map[string]*string)

	#CustomDeploymentParameters
}

// DeploymentSpec defines the desired state of Deployment
#DeploymentSpec: {
	xpv1.#ResourceSpec
	forProvider: #DeploymentParameters @go(ForProvider)
}

// DeploymentObservation defines the observed state of Deployment
#DeploymentObservation: {
	// A summary of the RestApi at the date and time that the deployment resource
	// was created.
	apiSummary?: {[string]: [string]: null | #MethodSnapshot} @go(APISummary,map[string]map[string]*MethodSnapshot)

	// The date and time that the deployment resource was created.
	createdDate?: null | metav1.#Time @go(CreatedDate,*metav1.Time)

	// The identifier for the deployment resource.
	id?: null | string @go(ID,*string)
}

// DeploymentStatus defines the observed state of Deployment.
#DeploymentStatus: {
	xpv1.#ResourceStatus
	atProvider?: #DeploymentObservation @go(AtProvider)
}

// Deployment is the Schema for the Deployments API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Deployment: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #DeploymentSpec    @go(Spec)
	status?:   #DeploymentStatus  @go(Status)
}

// DeploymentList contains a list of Deployments
#DeploymentList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Deployment] @go(Items,[]Deployment)
}
