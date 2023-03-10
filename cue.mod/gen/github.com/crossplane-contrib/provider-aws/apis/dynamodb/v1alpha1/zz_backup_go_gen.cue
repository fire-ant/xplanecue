// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/dynamodb/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// BackupParameters defines the desired state of Backup
#BackupParameters: {
	// Region is which region the Backup will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// Specified name for the backup.
	// +kubebuilder:validation:Required
	backupName?: null | string @go(BackupName,*string)

	#CustomBackupParameters
}

// BackupSpec defines the desired state of Backup
#BackupSpec: {
	xpv1.#ResourceSpec
	forProvider: #BackupParameters @go(ForProvider)
}

// BackupObservation defines the observed state of Backup
#BackupObservation: {
	// ARN associated with the backup.
	backupARN?: null | string @go(BackupARN,*string)

	// Time at which the backup was created. This is the request time of the backup.
	backupCreationDateTime?: null | metav1.#Time @go(BackupCreationDateTime,*metav1.Time)

	// Time at which the automatic on-demand backup created by DynamoDB will expire.
	// This SYSTEM on-demand backup expires automatically 35 days after its creation.
	backupExpiryDateTime?: null | metav1.#Time @go(BackupExpiryDateTime,*metav1.Time)

	// Size of the backup in bytes.
	backupSizeBytes?: null | int64 @go(BackupSizeBytes,*int64)

	// Backup can be in one of the following states: CREATING, ACTIVE, DELETED.
	backupStatus?: null | string @go(BackupStatus,*string)

	// BackupType:
	//
	//    * USER - You create and manage these using the on-demand backup feature.
	//
	//    * SYSTEM - If you delete a table with point-in-time recovery enabled,
	//    a SYSTEM backup is automatically created and is retained for 35 days (at
	//    no additional cost). System backups allow you to restore the deleted table
	//    to the state it was in just before the point of deletion.
	//
	//    * AWS_BACKUP - On-demand backup created by you from Backup service.
	backupType?: null | string @go(BackupType,*string)
}

// BackupStatus defines the observed state of Backup.
#BackupStatus: {
	xpv1.#ResourceStatus
	atProvider?: #BackupObservation @go(AtProvider)
}

// Backup is the Schema for the Backups API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Backup: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #BackupSpec        @go(Spec)
	status?:   #BackupStatus      @go(Status)
}

// BackupList contains a list of Backups
#BackupList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Backup] @go(Items,[]Backup)
}
