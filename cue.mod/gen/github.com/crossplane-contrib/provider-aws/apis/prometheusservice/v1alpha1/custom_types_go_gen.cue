// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/prometheusservice/v1alpha1

package v1alpha1

import xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"

// CustomWorkspaceParameters includes custom fields about WorkspaceParameters.
#CustomWorkspaceParameters: {
}

// CustomRuleGroupsNamespaceParameters includes custom fields about RuleGroupsNamespaceParameters.
// workspaceID is actually required but since it's reference-able, it's not marked as required.
#CustomRuleGroupsNamespaceParameters: {
	// workspaceID is the ID for the Workspace.
	// +immutable
	// +crossplane:generate:reference:type=Workspace
	workspaceId?: null | string @go(WorkspaceID,*string)

	// WorkspaceIDRef is a reference to a Workspace used to set
	// the workspaceID.
	// +optional
	workspaceIdRef?: null | xpv1.#Reference @go(WorkspaceIDRef,*xpv1.Reference)

	// WorkspaceIDSelector selects references to Workspace used
	// to set the workspaceID.
	// +optional
	workspaceIdSelector?: null | xpv1.#Selector @go(WorkspaceIDSelector,*xpv1.Selector)
}

// CustomAlertManagerDefinitionParameters includes custom fields about AlertManagerDefinitionParameters.
// workspaceID is actually required but since it's reference-able, it's not marked as required.
#CustomAlertManagerDefinitionParameters: {
	// workspaceID is the ID for the Workspace.
	// +immutable
	// +crossplane:generate:reference:type=Workspace
	workspaceId?: null | string @go(WorkspaceID,*string)

	// WorkspaceIDRef is a reference to a Workspace used to set
	// the workspaceID.
	// +optional
	workspaceIdRef?: null | xpv1.#Reference @go(WorkspaceIDRef,*xpv1.Reference)

	// WorkspaceIDSelector selects references to Workspace used
	// to set the workspaceID.
	// +optional
	workspaceIdSelector?: null | xpv1.#Selector @go(WorkspaceIDSelector,*xpv1.Selector)
}
