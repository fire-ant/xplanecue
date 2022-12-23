// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/elbv2/v1alpha1

package v1alpha1

import xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"

// CustomCertificate includes custom fields about certificates.
#CustomCertificate: {
	// [HTTPS and TLS listeners] The default certificate for the listener.
	// +optional
	certificateARN?: null | string @go(CertificateARN,*string)

	// Reference to Certificates for Certificate ARN
	// +optional
	certificateARNRef?: null | xpv1.#Reference @go(CertificateARNRef,*xpv1.Reference)

	// Selector for references to Certificate for CertificateArn
	// +optional
	certificateARNSelector?: null | xpv1.#Selector @go(CertificateARNSelector,*xpv1.Selector)

	// +optional
	isDefault?: bool @go(IsDefault)
}

// CustomTargetGroupTuple includes custom fields about target groups.
// Only used with ForwardActionConfig to route to multiple target groups.
#CustomTargetGroupTuple: {
	#TargetGroupTuple

	// Reference to TargetGroupARN used to set TargetGroupARN
	// +optional
	targetGroupArnRef?: null | xpv1.#Reference @go(TargetGroupARNRef,*xpv1.Reference)

	// Selector for references to TargetGroup for TargetGroupARN
	// +optional
	targetGroupArnSelector?: null | xpv1.#Selector @go(TargetGroupARNSelector,*xpv1.Selector)
}

// CustomForwardActionConfig includes custom fields about a forward action.
#CustomForwardActionConfig: {
	// Information about the target group stickiness for a rule.
	targetGroupStickinessConfig?: null | #TargetGroupStickinessConfig @go(TargetGroupStickinessConfig,*TargetGroupStickinessConfig)

	// One or more target groups. For Network Load Balancers, you can specify a
	// single target group.
	targetGroups?: [...null | #CustomTargetGroupTuple] @go(TargetGroups,[]*CustomTargetGroupTuple)
}

// CustomAction includes custom fields for an action.
//
// Each rule must include exactly one of the following types of actions: forward,
// fixed-response, or redirect, and it must be the last action to be performed.
#CustomAction: {
	// Request parameters to use when integrating with Amazon Cognito to authenticate
	// users.
	authenticateCognitoConfig?: null | #AuthenticateCognitoActionConfig @go(AuthenticateCognitoConfig,*AuthenticateCognitoActionConfig)

	// Request parameters when using an identity provider (IdP) that is compliant
	// with OpenID Connect (OIDC) to authenticate users.
	authenticateOidcConfig?: null | #AuthenticateOIDCActionConfig @go(AuthenticateOidcConfig,*AuthenticateOIDCActionConfig)

	// Information about an action that returns a custom HTTP response.
	fixedResponseConfig?: null | #FixedResponseActionConfig @go(FixedResponseConfig,*FixedResponseActionConfig)

	// Information about a forward action.
	forwardConfig?: null | #CustomForwardActionConfig @go(ForwardConfig,*CustomForwardActionConfig)

	// The order for the action. This value is required for rules with multiple
	// actions. The action with the lowest value for order is performed first.
	order?: null | int64 @go(Order,*int64)

	// Information about a redirect action.
	//
	// A URI consists of the following components: protocol://hostname:port/path?query.
	// You must modify at least one of the following components to avoid a redirect
	// loop: protocol, hostname, port, or path. Any components that you do not modify
	// retain their original values.
	//
	// You can reuse URI components using the following reserved keywords:
	//
	//    * #{protocol}
	//
	//    * #{host}
	//
	//    * #{port}
	//
	//    * #{path} (the leading "/" is removed)
	//
	//    * #{query}
	//
	// For example, you can change the path to "/new/#{path}", the hostname to "example.#{host}",
	// or the query to "#{query}&value=xyz".
	redirectConfig?: null | #RedirectActionConfig @go(RedirectConfig,*RedirectActionConfig)

	// The Amazon Resource Name (ARN) of the target group. Specify only when
	// actionType is forward and you want to route to a single target group.
	// To route to one or more target groups, use ForwardConfig instead.
	// +optional
	targetGroupArn?: null | string @go(TargetGroupARN,*string)

	// Reference to TargetGroupARN used to set TargetGroupARN
	// +optional
	targetGroupArnRef?: null | xpv1.#Reference @go(TargetGroupARNRef,*xpv1.Reference)

	// Selector for references to TargetGroups for TargetGroupARNs
	// +optional
	targetGroupArnSelector?: null | xpv1.#Selector @go(TargetGroupARNSelector,*xpv1.Selector)

	// The type of action.
	// +kubebuilder:validation:Required
	actionType?: null | string @go(Type,*string)
}

// CustomListenerParameters includes the custom fields of Listener.
#CustomListenerParameters: {
	// [HTTPS and TLS listeners] The default certificate
	// for the listener. You must provide exactly one certificate.
	// Set CertificateArn to the certificate ARN but do not set IsDefault.
	// +optional
	certificates?: [...null | #CustomCertificate] @go(Certificates,[]*CustomCertificate)

	// The actions for the default rule.
	// +kubebuilder:validation:Required
	defaultActions: [...null | #CustomAction] @go(DefaultActions,[]*CustomAction)

	// The Amazon Resource Name (ARN) of the load balancer.
	// +optional
	loadBalancerArn?: null | string @go(LoadBalancerARN,*string)

	// Ref to loadbalancer ARN
	// +optional
	loadBalancerArnRef?: null | xpv1.#Reference @go(LoadBalancerARNRef,*xpv1.Reference)

	// Selector for references to LoadBalancer for LoadBalancerARN
	// +optional
	loadBalancerArnSelector?: null | xpv1.#Selector @go(LoadBalancerARNSelector,*xpv1.Selector)
}

// CustomLoadBalancerParameters includes the custom fields of LoadBalancer.
#CustomLoadBalancerParameters: {
	// The type of load balancer. The default is application.
	loadBalancerType?: null | string @go(Type,*string)

	// Reference to Security Groups for SecurityGroups field
	// +optional
	securityGroupRefs?: [...xpv1.#Reference] @go(SecurityGroupRefs,[]xpv1.Reference)

	// Selector for references to SecurityGroups
	// +optional
	securityGroupSelector?: null | xpv1.#Selector @go(SecurityGroupSelector,*xpv1.Selector)

	// Reference to Subnets for Subnets field
	// +optional
	subnetRefs?: [...xpv1.#Reference] @go(SubnetRefs,[]xpv1.Reference)

	// Selector for references to Subnets
	// +optional
	subnetSelector?: null | xpv1.#Selector @go(SubnetSelector,*xpv1.Selector)
}

// CustomTargetGroupParameters includes the custom fields of TargetGroup.
#CustomTargetGroupParameters: {
	// Reference to VPC for VPCID
	// +optional
	vpcIdRef?: null | xpv1.#Reference @go(VPCIDRef,*xpv1.Reference)

	// Selector for references to VPC for VPCID
	// +optional
	vpcIdSelector?: null | xpv1.#Selector @go(VPCIDSelector,*xpv1.Selector)
}