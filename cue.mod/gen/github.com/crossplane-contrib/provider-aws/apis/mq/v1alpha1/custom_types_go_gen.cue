// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/mq/v1alpha1

package v1alpha1

import xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"

// CustomBrokerParameters contains the additional fields for CustomBrokerParameters
#CustomBrokerParameters: {
	// +optional
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:refFieldName=SubnetIDRefs
	// +crossplane:generate:reference:selectorFieldName=SubnetIDSelector
	subnetIDs?: [...null | string] @go(SubnetIDs,[]*string)

	// SubnetIDRefs is a list of references to Subnets used to set
	// the SubnetIDs.
	// +optional
	subnetIDRefs?: [...xpv1.#Reference] @go(SubnetIDRefs,[]xpv1.Reference)

	// SubnetIDsSelector selects references to Subnets used
	// to set the SubnetIDs.
	// +optional
	subnetIDSelector?: null | xpv1.#Selector @go(SubnetIDSelector,*xpv1.Selector)

	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=SecurityGroupIDRefs
	// +crossplane:generate:reference:selectorFieldName=SecurityGroupIDSelector
	securityGroups?: [...null | string] @go(SecurityGroups,[]*string)

	// SecurityGroupIDRefs is a list of references to SecurityGroups used to set
	// the SecurityGroupsIDs.
	// +optional
	securityGroupIdRefs?: [...xpv1.#Reference] @go(SecurityGroupIDRefs,[]xpv1.Reference)

	// SecurityGroupIDsSelector selects references to SecurityGroups used
	// to set the SecurityGroupsIDs.
	// +optional
	securityGroupIdSelector?: null | xpv1.#Selector @go(SecurityGroupIDSelector,*xpv1.Selector)
	users?: [...null | #CustomUser] @go(CustomUsers,[]*CustomUser)
}

// CustomUser contains the fields for Users with PasswordSecretRef
#CustomUser: {
	consoleAccess?: null | bool @go(ConsoleAccess,*bool)
	groups?: [...null | string] @go(Groups,[]*string)
	passwordSecretRef?: xpv1.#SecretKeySelector @go(PasswordSecretRef)
	username?:          null | string           @go(Username,*string)
}

// CustomUserParameters contains the additional fields for CustomUserParameters
#CustomUserParameters: {
	// +optional
	// +crossplane:generate:reference:type=Broker
	brokerID?: null | string @go(BrokerID,*string)

	// BrokerIDRef is a reference to a Broker used to set BrokerID.
	// +optional
	brokerIDRef?: null | xpv1.#Reference @go(BrokerIDRef,*xpv1.Reference)

	// BrokerIDSelector selects a reference to a Broker used to set BrokerID.
	// +optional
	brokerIDSelector?:  null | xpv1.#Selector   @go(BrokerIDSelector,*xpv1.Selector)
	passwordSecretRef?: xpv1.#SecretKeySelector @go(PasswordSecretRef)
}
