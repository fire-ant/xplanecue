// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// ClassifierParameters defines the desired state of Classifier
#ClassifierParameters: {
	// Region is which region the Classifier will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	#CustomClassifierParameters
}

// ClassifierSpec defines the desired state of Classifier
#ClassifierSpec: {
	xpv1.#ResourceSpec
	forProvider: #ClassifierParameters @go(ForProvider)
}

// ClassifierObservation defines the observed state of Classifier
#ClassifierObservation: {
	// The time that this classifier was registered.
	creationTime?: null | metav1.#Time @go(CreationTime,*metav1.Time)

	// The time that this classifier was last updated.
	lastUpdated?: null | metav1.#Time @go(LastUpdated,*metav1.Time)

	// The version of this classifier.
	version?: null | int64 @go(Version,*int64)
}

// ClassifierStatus defines the observed state of Classifier.
#ClassifierStatus: {
	xpv1.#ResourceStatus
	atProvider?: #ClassifierObservation @go(AtProvider)
}

// Classifier is the Schema for the Classifiers API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Classifier: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #ClassifierSpec    @go(Spec)
	status?:   #ClassifierStatus  @go(Status)
}

// ClassifierList contains a list of Classifiers
#ClassifierList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Classifier] @go(Items,[]Classifier)
}