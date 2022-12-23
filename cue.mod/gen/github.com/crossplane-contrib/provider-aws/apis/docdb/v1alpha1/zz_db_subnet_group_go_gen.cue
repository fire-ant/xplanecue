// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/docdb/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// DBSubnetGroupParameters defines the desired state of DBSubnetGroup
#DBSubnetGroupParameters: {
	// Region is which region the DBSubnetGroup will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The description for the subnet group.
	// +kubebuilder:validation:Required
	dbSubnetGroupDescription?: null | string @go(DBSubnetGroupDescription,*string)

	// The tags to be assigned to the subnet group.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	#CustomDBSubnetGroupParameters
}

// DBSubnetGroupSpec defines the desired state of DBSubnetGroup
#DBSubnetGroupSpec: {
	xpv1.#ResourceSpec
	forProvider: #DBSubnetGroupParameters @go(ForProvider)
}

// DBSubnetGroupObservation defines the observed state of DBSubnetGroup
#DBSubnetGroupObservation: {
	// The Amazon Resource Name (ARN) for the DB subnet group.
	dbSubnetGroupARN?: null | string @go(DBSubnetGroupARN,*string)

	// The name of the subnet group.
	dbSubnetGroupName?: null | string @go(DBSubnetGroupName,*string)

	// Provides the status of the subnet group.
	subnetGroupStatus?: null | string @go(SubnetGroupStatus,*string)

	// Detailed information about one or more subnets within a subnet group.
	subnets?: [...null | #Subnet] @go(Subnets,[]*Subnet)

	// Provides the virtual private cloud (VPC) ID of the subnet group.
	vpcID?: null | string @go(VPCID,*string)
}

// DBSubnetGroupStatus defines the observed state of DBSubnetGroup.
#DBSubnetGroupStatus: {
	xpv1.#ResourceStatus
	atProvider?: #DBSubnetGroupObservation @go(AtProvider)
}

// DBSubnetGroup is the Schema for the DBSubnetGroups API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#DBSubnetGroup: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta   @go(ObjectMeta)
	spec:      #DBSubnetGroupSpec   @go(Spec)
	status?:   #DBSubnetGroupStatus @go(Status)
}

// DBSubnetGroupList contains a list of DBSubnetGroups
#DBSubnetGroupList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#DBSubnetGroup] @go(Items,[]DBSubnetGroup)
}
