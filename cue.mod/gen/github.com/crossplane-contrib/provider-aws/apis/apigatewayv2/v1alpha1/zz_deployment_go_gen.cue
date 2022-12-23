// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigatewayv2/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// DeploymentParameters defines the desired state of Deployment
#DeploymentParameters: {
	// Region is which region the Deployment will be created.
	// +kubebuilder:validation:Required
	region:       string        @go(Region)
	description?: null | string @go(Description,*string)
	stageName?:   null | string @go(StageName,*string)

	#CustomDeploymentParameters
}

// DeploymentSpec defines the desired state of Deployment
#DeploymentSpec: {
	xpv1.#ResourceSpec
	forProvider: #DeploymentParameters @go(ForProvider)
}

// DeploymentObservation defines the observed state of Deployment
#DeploymentObservation: {
	autoDeployed?:            null | bool         @go(AutoDeployed,*bool)
	createdDate?:             null | metav1.#Time @go(CreatedDate,*metav1.Time)
	deploymentID?:            null | string       @go(DeploymentID,*string)
	deploymentStatus?:        null | string       @go(DeploymentStatus,*string)
	deploymentStatusMessage?: null | string       @go(DeploymentStatusMessage,*string)
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