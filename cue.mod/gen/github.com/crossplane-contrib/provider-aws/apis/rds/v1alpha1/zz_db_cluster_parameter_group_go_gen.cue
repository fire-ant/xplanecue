// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/rds/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// DBClusterParameterGroupParameters defines the desired state of DBClusterParameterGroup
#DBClusterParameterGroupParameters: {
	// Region is which region the DBClusterParameterGroup will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The description for the DB cluster parameter group.
	// +kubebuilder:validation:Required
	description?: null | string @go(Description,*string)

	// Tags to assign to the DB cluster parameter group.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	#CustomDBClusterParameterGroupParameters
}

// DBClusterParameterGroupSpec defines the desired state of DBClusterParameterGroup
#DBClusterParameterGroupSpec: {
	xpv1.#ResourceSpec
	forProvider: #DBClusterParameterGroupParameters @go(ForProvider)
}

// DBClusterParameterGroupObservation defines the observed state of DBClusterParameterGroup
#DBClusterParameterGroupObservation: {
	// The Amazon Resource Name (ARN) for the DB cluster parameter group.
	dbClusterParameterGroupARN?: null | string @go(DBClusterParameterGroupARN,*string)

	// The name of the DB cluster parameter group.
	dbClusterParameterGroupName?: null | string @go(DBClusterParameterGroupName,*string)

	// The name of the DB parameter group family that this DB cluster parameter
	// group is compatible with.
	dbParameterGroupFamily?: null | string @go(DBParameterGroupFamily,*string)
}

// DBClusterParameterGroupStatus defines the observed state of DBClusterParameterGroup.
#DBClusterParameterGroupStatus: {
	xpv1.#ResourceStatus
	atProvider?: #DBClusterParameterGroupObservation @go(AtProvider)
}

// DBClusterParameterGroup is the Schema for the DBClusterParameterGroups API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#DBClusterParameterGroup: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta             @go(ObjectMeta)
	spec:      #DBClusterParameterGroupSpec   @go(Spec)
	status?:   #DBClusterParameterGroupStatus @go(Status)
}

// DBClusterParameterGroupList contains a list of DBClusterParameterGroups
#DBClusterParameterGroupList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#DBClusterParameterGroup] @go(Items,[]DBClusterParameterGroup)
}
