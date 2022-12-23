// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/dynamodb/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// GlobalTableParameters defines the desired state of GlobalTable
#GlobalTableParameters: {
	// Region is which region the GlobalTable will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The Regions where the global table needs to be created.
	// +kubebuilder:validation:Required
	replicationGroup: [...null | #Replica] @go(ReplicationGroup,[]*Replica)

	#CustomGlobalTableParameters
}

// GlobalTableSpec defines the desired state of GlobalTable
#GlobalTableSpec: {
	xpv1.#ResourceSpec
	forProvider: #GlobalTableParameters @go(ForProvider)
}

// GlobalTableObservation defines the observed state of GlobalTable
#GlobalTableObservation: {
	// The creation time of the global table.
	creationDateTime?: null | metav1.#Time @go(CreationDateTime,*metav1.Time)

	// The unique identifier of the global table.
	globalTableARN?: null | string @go(GlobalTableARN,*string)

	// The global table name.
	globalTableName?: null | string @go(GlobalTableName,*string)

	// The current state of the global table:
	//
	//    * CREATING - The global table is being created.
	//
	//    * UPDATING - The global table is being updated.
	//
	//    * DELETING - The global table is being deleted.
	//
	//    * ACTIVE - The global table is ready for use.
	globalTableStatus?: null | string @go(GlobalTableStatus,*string)
}

// GlobalTableStatus defines the observed state of GlobalTable.
#GlobalTableStatus: {
	xpv1.#ResourceStatus
	atProvider?: #GlobalTableObservation @go(AtProvider)
}

// GlobalTable is the Schema for the GlobalTables API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#GlobalTable: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #GlobalTableSpec   @go(Spec)
	status?:   #GlobalTableStatus @go(Status)
}

// GlobalTableList contains a list of GlobalTables
#GlobalTableList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#GlobalTable] @go(Items,[]GlobalTable)
}
