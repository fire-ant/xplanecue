// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/acmpca/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// CertificateAuthorityPermissionSpec defines the desired state of CertificateAuthorityPermission
#CertificateAuthorityPermissionSpec: {
	xpv1.#ResourceSpec
	forProvider: #CertificateAuthorityPermissionParameters @go(ForProvider)
}

// An CertificateAuthorityPermissionStatus represents the observed state of an Certificate Authority Permission manager.
#CertificateAuthorityPermissionStatus: {
	xpv1.#ResourceStatus
}

// CertificateAuthorityPermissionParameters defines the desired state of an AWS CertificateAuthority.
#CertificateAuthorityPermissionParameters: {
	// Region is the region of CertificateAuthorityPermission.
	region: string @go(Region)

	// The Amazon Resource Name (ARN) of the private certificate authority (CA)that will be used to issue the certificate.
	// +immutable
	// +crossplane:generate:reference:type=CertificateAuthority
	certificateAuthorityARN?: null | string @go(CertificateAuthorityARN,*string)

	// CertificateAuthorityARNRef references an CertificateAuthority to retrieve its Arn
	// +optional
	// +immutable
	certificateAuthorityARNRef?: null | xpv1.#Reference @go(CertificateAuthorityARNRef,*xpv1.Reference)

	// CertificateAuthorityARNSelector selects a reference to an CertificateAuthority to retrieve its Arn
	// +optional
	// +immutable
	certificateAuthorityARNSelector?: null | xpv1.#Selector @go(CertificateAuthorityARNSelector,*xpv1.Selector)

	// The actions that the specified AWS service principal can use.
	// +optional
	// +immutable
	actions?: [...string] @go(Actions,[]string)

	// The AWS service or identity that receives the permission. At this
	// time, the only valid principal is acm.amazonaws.com.
	// +immutable
	// +kubebuilder:default:=acm.amazonaws.com
	principal: string @go(Principal)

	// Calling Account ID
	// +optional
	// +immutable
	sourceAccount?: null | string @go(SourceAccount,*string)
}

// CertificateAuthorityPermission is a managed resource that represents an AWS CertificateAuthorityPermission Manager.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#CertificateAuthorityPermission: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta                    @go(ObjectMeta)
	spec:      #CertificateAuthorityPermissionSpec   @go(Spec)
	status?:   #CertificateAuthorityPermissionStatus @go(Status)
}

// CertificateAuthorityPermissionList contains a list of CertificateAuthorityPermission
#CertificateAuthorityPermissionList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#CertificateAuthorityPermission] @go(Items,[]CertificateAuthorityPermission)
}
