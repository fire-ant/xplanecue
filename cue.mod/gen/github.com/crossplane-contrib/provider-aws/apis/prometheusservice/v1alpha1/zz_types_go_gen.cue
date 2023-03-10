// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/prometheusservice/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// +kubebuilder:skipversion
#AlertManagerDefinitionDescription: {
	createdAt?: null | metav1.#Time @go(CreatedAt,*metav1.Time)

	// The alert manager definition data.
	data?:       bytes               @go(Data,[]byte)
	modifiedAt?: null | metav1.#Time @go(ModifiedAt,*metav1.Time)

	// Represents the status of a definition.
	status?: null | #AlertManagerDefinitionStatus_SDK @go(Status,*AlertManagerDefinitionStatus_SDK)
}

// +kubebuilder:skipversion
#AlertManagerDefinitionStatus_SDK: {
	// State of an alert manager definition.
	statusCode?:   null | string @go(StatusCode,*string)
	statusReason?: null | string @go(StatusReason,*string)
}

// +kubebuilder:skipversion
#RuleGroupsNamespaceDescription: {
	// An ARN identifying a rule groups namespace.
	arn?:       null | string       @go(ARN,*string)
	createdAt?: null | metav1.#Time @go(CreatedAt,*metav1.Time)

	// The rule groups namespace data.
	data?:       bytes               @go(Data,[]byte)
	modifiedAt?: null | metav1.#Time @go(ModifiedAt,*metav1.Time)

	// The namespace name that the rule group belong to.
	name?: null | string @go(Name,*string)

	// Represents the status of a namespace.
	status?: null | #RuleGroupsNamespaceStatus_SDK @go(Status,*RuleGroupsNamespaceStatus_SDK)

	// The list of tags assigned to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// +kubebuilder:skipversion
#RuleGroupsNamespaceStatus_SDK: {
	// State of a namespace.
	statusCode?:   null | string @go(StatusCode,*string)
	statusReason?: null | string @go(StatusReason,*string)
}

// +kubebuilder:skipversion
#RuleGroupsNamespaceSummary: {
	// An ARN identifying a rule groups namespace.
	arn?:        null | string       @go(ARN,*string)
	createdAt?:  null | metav1.#Time @go(CreatedAt,*metav1.Time)
	modifiedAt?: null | metav1.#Time @go(ModifiedAt,*metav1.Time)

	// The namespace name that the rule group belong to.
	name?: null | string @go(Name,*string)

	// Represents the status of a namespace.
	status?: null | #RuleGroupsNamespaceStatus_SDK @go(Status,*RuleGroupsNamespaceStatus_SDK)

	// The list of tags assigned to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// +kubebuilder:skipversion
#ValidationExceptionField: {
	message?: null | string @go(Message,*string)
	name?:    null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#WorkspaceDescription: {
	// A user-assigned workspace alias.
	alias?: null | string @go(Alias,*string)

	// An ARN identifying a Workspace.
	arn?:                null | string       @go(ARN,*string)
	createdAt?:          null | metav1.#Time @go(CreatedAt,*metav1.Time)
	prometheusEndpoint?: null | string       @go(PrometheusEndpoint,*string)

	// Represents the status of a workspace.
	status?: null | #WorkspaceStatus_SDK @go(Status,*WorkspaceStatus_SDK)

	// The list of tags assigned to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A workspace ID.
	workspaceID?: null | string @go(WorkspaceID,*string)
}

// +kubebuilder:skipversion
#WorkspaceStatus_SDK: {
	// State of a workspace.
	statusCode?: null | string @go(StatusCode,*string)
}

// +kubebuilder:skipversion
#WorkspaceSummary: {
	// A user-assigned workspace alias.
	alias?: null | string @go(Alias,*string)

	// An ARN identifying a Workspace.
	arn?:       null | string       @go(ARN,*string)
	createdAt?: null | metav1.#Time @go(CreatedAt,*metav1.Time)

	// Represents the status of a workspace.
	status?: null | #WorkspaceStatus_SDK @go(Status,*WorkspaceStatus_SDK)

	// The list of tags assigned to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A workspace ID.
	workspaceID?: null | string @go(WorkspaceID,*string)
}
