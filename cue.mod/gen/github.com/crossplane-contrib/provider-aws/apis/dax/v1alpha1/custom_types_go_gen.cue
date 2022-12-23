// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/dax/v1alpha1

package v1alpha1

import xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"

// CustomClusterParameters includes the custom fields of Cluster.
#CustomClusterParameters: {
	// IAMRoleARN contains the ARN of an IAMRole
	// +immutable
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.RoleARN()
	iamRoleARN?: null | string @go(IAMRoleARN,*string)

	// IAMRoleARNRef is a reference to an IAMRole used to set
	// the IAMRoleARN.
	// +optional
	iamRoleARNRef?: null | xpv1.#Reference @go(IAMRoleARNRef,*xpv1.Reference)

	// IAMRoleARNRefSelector selects references to IAMRole used
	// to set the IAMRoleARN.
	// +optional
	iamRoleARNSelector?: null | xpv1.#Selector @go(IAMRoleARNSelector,*xpv1.Selector)

	// ParameterGroupName contains the name of the ParameterGroup
	// +immutable
	// +crossplane:generate:reference:type=ParameterGroup
	parameterGroupName?: null | string @go(ParameterGroupName,*string)

	// ParameterGroupNameRef is a reference to an ParameterGroup used to set
	// the ParameterGroupName.
	// +optional
	parameterGroupNameRef?: null | xpv1.#Reference @go(ParameterGroupNameRef,*xpv1.Reference)

	// ParameterGroupNameSelector selects references to ParameterGroup used
	// to set the ParameterGroupName.
	// +optional
	parameterGroupNameSelector?: null | xpv1.#Selector @go(ParameterGroupNameSelector,*xpv1.Selector)

	// SubnetGroupName contains the name of the SubnetGroup
	// +immutable
	// +crossplane:generate:reference:type=SubnetGroup
	subnetGroupName?: null | string @go(SubnetGroupName,*string)

	// SubnetGroupNameRef is a reference to an SubnetGroup used to set
	// the SubnetGroupName.
	// +optional
	subnetGroupNameRef?: null | xpv1.#Reference @go(SubnetGroupNameRef,*xpv1.Reference)

	// SubnetGroupNameSelector selects references to SubnetGroup used
	// to set the SubnetGroupName.
	// +optional
	subnetGroupNameSelector?: null | xpv1.#Selector @go(SubnetGroupNameSelector,*xpv1.Selector)

	// SecurityGroupIDs is the list of IDs for the SecurityGroups
	// +immutable
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=SecurityGroupIDRefs
	// +crossplane:generate:reference:selectorFieldName=SecurityGroupIDSelector
	securityGroupIds?: [...null | string] @go(SecurityGroupIDs,[]*string)

	// SecurityGroupIDRefs is a list of references to SecurityGroups used to set
	// the SecurityGroupIDs.
	// +optional
	securityGroupIdRefs?: [...xpv1.#Reference] @go(SecurityGroupIDRefs,[]xpv1.Reference)

	// SecurityGroupIDsSelector selects references to SecurityGroupID used
	// to set the SecurityGroupIDs.
	// +optional
	securityGroupIdSelector?: null | xpv1.#Selector @go(SecurityGroupIDSelector,*xpv1.Selector)

	// The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications
	// will be sent.
	//
	// The Amazon SNS topic owner must be same as the DAX cluster owner.
	// +optional
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/sns/v1beta1.Topic
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/sns/v1beta1.SNSTopicARN()
	notificationTopicARN?: null | string @go(NotificationTopicARN,*string)

	// NotificationTopicARNRef references an SNS Topic to retrieve its NotificationTopicARN
	// +optional
	notificationTopicArnRef?: null | xpv1.#Reference @go(NotificationTopicARNRef,*xpv1.Reference)

	// NotificationTopicARNSelector selects a reference to an SNS Topic to retrieve its NotificationTopicARN
	// +optional
	notificationTopicArnSelector?: null | xpv1.#Selector @go(NotificationTopicARNSelector,*xpv1.Selector)
}

// CustomParameterGroupParameters includes the custom fields of ParameterGroup
#CustomParameterGroupParameters: {
	// An array of name-value pairs for the parameters in the group. Each element
	// in the array represents a single parameter.
	//
	// record-ttl-millis and query-ttl-millis are the only supported parameter names.
	// For more details, see Configuring TTL Settings (https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.cluster-management.html#DAX.cluster-management.custom-settings.ttl).
	parameterNameValues?: [...null | #ParameterNameValue] @go(ParameterNameValues,[]*ParameterNameValue)
}

// CustomSubnetGroupParameters includes the custom fields of SubnetGroup
#CustomSubnetGroupParameters: {
	// SubnetIds is the list of Ids for the Subnets.
	// +crossplane:generate:reference:refFieldName=SubnetIDRefs
	// +crossplane:generate:reference:selectorFieldName=SubnetIDSelector
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.Subnet
	subnetIds?: [...null | string] @go(SubnetIds,[]*string)

	// SubnetIDRefs is a list of references to Subnets used to set
	// the SubnetIDs.
	// +optional
	subnetIDRefs?: [...xpv1.#Reference] @go(SubnetIDRefs,[]xpv1.Reference)

	// SubnetIDSelector selects references to Subnets used
	// to set the SubnetIds.
	// +optional
	subnetIDSelector?: null | xpv1.#Selector @go(SubnetIDSelector,*xpv1.Selector)
}
