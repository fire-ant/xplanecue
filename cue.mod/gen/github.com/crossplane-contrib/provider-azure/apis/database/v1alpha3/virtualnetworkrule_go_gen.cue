// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-azure/apis/database/v1alpha3

package v1alpha3

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// OperationCreateServer is the operation type for creating a new mysql
// server.
#OperationCreateServer: "createServer"

// OperationCreateFirewallRules is the operation type for creating a
// firewall rule.
#OperationCreateFirewallRules: "createFirewallRules"

// VirtualNetworkRuleProperties defines the properties of a VirtualNetworkRule.
#VirtualNetworkRuleProperties: {
	// VirtualNetworkSubnetID - The ARM resource id of the virtual network
	// subnet.
	virtualNetworkSubnetId?: string @go(VirtualNetworkSubnetID)

	// VirtualNetworkSubnetIDRef - A reference to a Subnet to retrieve its ID
	virtualNetworkSubnetIdRef?: null | xpv1.#Reference @go(VirtualNetworkSubnetIDRef,*xpv1.Reference)

	// VirtualNetworkSubnetIDRef - A selector for a Subnet to retrieve its ID
	virtualNetworkSubnetIdSelector?: null | xpv1.#Selector @go(VirtualNetworkSubnetIDSelector,*xpv1.Selector)

	// IgnoreMissingVnetServiceEndpoint - Create firewall rule before the
	// virtual network has vnet service endpoint enabled.
	ignoreMissingVnetServiceEndpoint?: bool @go(IgnoreMissingVnetServiceEndpoint)
}

// A VirtualNetworkRuleStatus represents the observed state of a
// VirtualNetworkRule.
#VirtualNetworkRuleStatus: {
	xpv1.#ResourceStatus

	// State of this virtual network rule.
	state?: string @go(State)

	// A Message containing details about the state of this virtual network
	// rule, if any.
	message?: string @go(Message)

	// ID - Resource ID
	id?: string @go(ID)

	// Type - Resource type.
	type?: string @go(Type)
}

// A PostgreSQLVirtualNetworkRuleSpec defines the desired state of a PostgreSQLVirtualNetworkRule.
#PostgreSQLVirtualNetworkRuleSpec: {
	xpv1.#ResourceSpec

	// ServerName - Name of the Virtual Network Rule's PostgreSQLServer.
	serverName?: string @go(ServerName)

	// ServerNameRef - A reference to the Virtual Network Rule's PostgreSQLServer.
	serverNameRef?: null | xpv1.#Reference @go(ServerNameRef,*xpv1.Reference)

	// ServerNameSelector - A selector of the Virtual Network Rule's
	// PostgreSQLServer.
	serverNameSelector?: null | xpv1.#Selector @go(ServerNameSelector,*xpv1.Selector)

	// ResourceGroupName - Name of the Virtual Network Rule's resource group.
	resourceGroupName?: string @go(ResourceGroupName)

	// ResourceGroupNameRef - A reference to a ResourceGroup object to retrieve
	// its name
	resourceGroupNameRef?: null | xpv1.#Reference @go(ResourceGroupNameRef,*xpv1.Reference)

	// ResourceGroupNameSelector - A selector for a ResourceGroup object to
	// retrieve its name
	resourceGroupNameSelector?: null | xpv1.#Selector @go(ResourceGroupNameSelector,*xpv1.Selector)

	// VirtualNetworkRuleProperties - Resource properties.
	properties: #VirtualNetworkRuleProperties @go(VirtualNetworkRuleProperties)
}

// A PostgreSQLServerVirtualNetworkRule is a managed resource that represents
// an Azure PostgreSQL Database virtual network rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="STATE",type="string",JSONPath=".status.state"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PostgreSQLServerVirtualNetworkRule: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta                @go(ObjectMeta)
	spec:      #PostgreSQLVirtualNetworkRuleSpec @go(Spec)
	status?:   #VirtualNetworkRuleStatus         @go(Status)
}

// PostgreSQLServerVirtualNetworkRuleList contains a list of PostgreSQLServerVirtualNetworkRule.
#PostgreSQLServerVirtualNetworkRuleList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#PostgreSQLServerVirtualNetworkRule] @go(Items,[]PostgreSQLServerVirtualNetworkRule)
}

// A MySQLVirtualNetworkRuleSpec defines the desired state of a MySQLVirtualNetworkRule.
#MySQLVirtualNetworkRuleSpec: {
	xpv1.#ResourceSpec

	// ServerName - Name of the Virtual Network Rule's server.
	serverName?: string @go(ServerName)

	// ServerNameRef - A reference to the Virtual Network Rule's MySQLServer.
	serverNameRef?: null | xpv1.#Reference @go(ServerNameRef,*xpv1.Reference)

	// ServerNameSelector - Selects a MySQLServer to reference.
	serverNameSelector?: null | xpv1.#Selector @go(ServerNameSelector,*xpv1.Selector)

	// ResourceGroupName - Name of the Virtual Network Rule's resource group.
	resourceGroupName?: string @go(ResourceGroupName)

	// ResourceGroupNameRef - A reference to a ResourceGroup object to retrieve
	// its name
	resourceGroupNameRef?: null | xpv1.#Reference @go(ResourceGroupNameRef,*xpv1.Reference)

	// ResourceGroupNameSelector - Selects a ResourceGroup to reference.
	resourceGroupNameSelector?: null | xpv1.#Selector @go(ResourceGroupNameSelector,*xpv1.Selector)

	// VirtualNetworkRuleProperties - Resource properties.
	properties: #VirtualNetworkRuleProperties @go(VirtualNetworkRuleProperties)
}

// A MySQLServerVirtualNetworkRule is a managed resource that represents an
// Azure MySQL Database virtual network rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="STATE",type="string",JSONPath=".status.state"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MySQLServerVirtualNetworkRule: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta           @go(ObjectMeta)
	spec:      #MySQLVirtualNetworkRuleSpec @go(Spec)
	status?:   #VirtualNetworkRuleStatus    @go(Status)
}

// MySQLServerVirtualNetworkRuleList contains a list of
// MySQLServerVirtualNetworkRule.
#MySQLServerVirtualNetworkRuleList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#MySQLServerVirtualNetworkRule] @go(Items,[]MySQLServerVirtualNetworkRule)
}
