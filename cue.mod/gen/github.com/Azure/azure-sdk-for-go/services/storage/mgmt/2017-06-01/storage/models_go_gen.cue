// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/Azure/azure-sdk-for-go/services/storage/mgmt/2017-06-01/storage

package storage

import "github.com/Azure/go-autorest/autorest/date"

_#fqdn: "github.com/Azure/azure-sdk-for-go/services/storage/mgmt/2017-06-01/storage"

// Account the storage account.
#Account: _

// AccountCheckNameAvailabilityParameters the parameters used to check the availability of the storage
// account name.
#AccountCheckNameAvailabilityParameters: {
	// Name - The storage account name.
	name?: null | string @go(Name,*string)

	// Type - The type of resource, Microsoft.Storage/storageAccounts
	type?: null | string @go(Type,*string)
}

// AccountCreateParameters the parameters used when creating a storage account.
#AccountCreateParameters: _

// AccountKey an access key for the storage account.
#AccountKey: _

// AccountListKeysResult the response from the ListKeys operation.
#AccountListKeysResult: _

// AccountListResult the response from the List Storage Accounts operation.
#AccountListResult: _

// AccountProperties properties of the storage account.
#AccountProperties: _

// AccountPropertiesCreateParameters the parameters used to create the storage account.
#AccountPropertiesCreateParameters: {
	// CustomDomain - User domain assigned to the storage account. Name is the CNAME source. Only one custom domain is supported per storage account at this time. To clear the existing custom domain, use an empty string for the custom domain name property.
	customDomain?: null | #CustomDomain @go(CustomDomain,*CustomDomain)

	// Encryption - Provides the encryption settings on the account. If left unspecified the account encryption settings will remain the same. The default setting is unencrypted.
	encryption?: null | #Encryption @go(Encryption,*Encryption)

	// NetworkRuleSet - Network rule set
	networkAcls?: null | #NetworkRuleSet @go(NetworkRuleSet,*NetworkRuleSet)

	// AccessTier - Required for storage accounts where kind = BlobStorage. The access tier used for billing. Possible values include: 'Hot', 'Cool'
	accessTier?: #AccessTier @go(AccessTier)

	// EnableHTTPSTrafficOnly - Allows https traffic only to storage service if sets to true.
	supportsHttpsTrafficOnly?: null | bool @go(EnableHTTPSTrafficOnly,*bool)
}

// AccountPropertiesUpdateParameters the parameters used when updating a storage account.
#AccountPropertiesUpdateParameters: {
	// CustomDomain - Custom domain assigned to the storage account by the user. Name is the CNAME source. Only one custom domain is supported per storage account at this time. To clear the existing custom domain, use an empty string for the custom domain name property.
	customDomain?: null | #CustomDomain @go(CustomDomain,*CustomDomain)

	// Encryption - Provides the encryption settings on the account. The default setting is unencrypted.
	encryption?: null | #Encryption @go(Encryption,*Encryption)

	// AccessTier - Required for storage accounts where kind = BlobStorage. The access tier used for billing. Possible values include: 'Hot', 'Cool'
	accessTier?: #AccessTier @go(AccessTier)

	// EnableHTTPSTrafficOnly - Allows https traffic only to storage service if sets to true.
	supportsHttpsTrafficOnly?: null | bool @go(EnableHTTPSTrafficOnly,*bool)

	// NetworkRuleSet - Network rule set
	networkAcls?: null | #NetworkRuleSet @go(NetworkRuleSet,*NetworkRuleSet)
}

// AccountRegenerateKeyParameters the parameters used to regenerate the storage account key.
#AccountRegenerateKeyParameters: {
	// KeyName - The name of storage keys that want to be regenerated, possible values are key1, key2.
	keyName?: null | string @go(KeyName,*string)
}

// AccountSasParameters the parameters to list SAS credentials of a storage account.
#AccountSasParameters: {
	// Services - The signed services accessible with the account SAS. Possible values include: Blob (b), Queue (q), Table (t), File (f). Possible values include: 'B', 'Q', 'T', 'F'
	signedServices?: #Services @go(Services)

	// ResourceTypes - The signed resource types that are accessible with the account SAS. Service (s): Access to service-level APIs; Container (c): Access to container-level APIs; Object (o): Access to object-level APIs for blobs, queue messages, table entities, and files. Possible values include: 'SignedResourceTypesS', 'SignedResourceTypesC', 'SignedResourceTypesO'
	signedResourceTypes?: #SignedResourceTypes @go(ResourceTypes)

	// Permissions - The signed permissions for the account SAS. Possible values include: Read (r), Write (w), Delete (d), List (l), Add (a), Create (c), Update (u) and Process (p). Possible values include: 'R', 'D', 'W', 'L', 'A', 'C', 'U', 'P'
	signedPermission?: #Permissions @go(Permissions)

	// IPAddressOrRange - An IP address or a range of IP addresses from which to accept requests.
	signedIp?: null | string @go(IPAddressOrRange,*string)

	// Protocols - The protocol permitted for a request made with the account SAS. Possible values include: 'Httpshttp', 'HTTPS'
	signedProtocol?: #HTTPProtocol @go(Protocols)

	// SharedAccessStartTime - The time at which the SAS becomes valid.
	signedStart?: null | date.#Time @go(SharedAccessStartTime,*date.Time)

	// SharedAccessExpiryTime - The time at which the shared access signature becomes invalid.
	signedExpiry?: null | date.#Time @go(SharedAccessExpiryTime,*date.Time)

	// KeyToSign - The key to sign the account SAS token with.
	keyToSign?: null | string @go(KeyToSign,*string)
}

// AccountsCreateFuture an abstraction for monitoring and retrieving the results of a long-running
// operation.
#AccountsCreateFuture: _

// AccountUpdateParameters the parameters that can be provided when updating the storage account
// properties.
#AccountUpdateParameters: _

// CheckNameAvailabilityResult the CheckNameAvailability operation response.
#CheckNameAvailabilityResult: _

// CustomDomain the custom domain assigned to this storage account. This can be set via Update.
#CustomDomain: {
	// Name - Gets or sets the custom domain name assigned to the storage account. Name is the CNAME source.
	name?: null | string @go(Name,*string)

	// UseSubDomainName - Indicates whether indirect CName validation is enabled. Default value is false. This should only be set on updates.
	useSubDomainName?: null | bool @go(UseSubDomainName,*bool)
}

// Dimension dimension of blobs, possibly be blob type or access tier.
#Dimension: {
	// Name - Display name of dimension.
	name?: null | string @go(Name,*string)

	// DisplayName - Display name of dimension.
	displayName?: null | string @go(DisplayName,*string)
}

// Encryption the encryption settings on the storage account.
#Encryption: {
	// Services - List of services which support encryption.
	services?: null | #EncryptionServices @go(Services,*EncryptionServices)

	// KeySource - The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault. Possible values include: 'MicrosoftStorage', 'MicrosoftKeyvault'
	keySource?: #KeySource @go(KeySource)

	// KeyVaultProperties - Properties provided by key vault.
	keyvaultproperties?: null | #KeyVaultProperties @go(KeyVaultProperties,*KeyVaultProperties)
}

// EncryptionService a service that allows server-side encryption to be used.
#EncryptionService: _

// EncryptionServices a list of services that support encryption.
#EncryptionServices: _

// Endpoints the URIs that are used to perform a retrieval of a public blob, queue, or table object.
#Endpoints: _

// Identity identity for the resource.
#Identity: _

// IPRule IP rule with specific IP or IP range in CIDR format.
#IPRule: {
	// IPAddressOrRange - Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
	value?: null | string @go(IPAddressOrRange,*string)

	// Action - The action of IP ACL rule. Possible values include: 'Allow'
	action?: #Action @go(Action)
}

// KeyVaultProperties properties of key vault.
#KeyVaultProperties: {
	// KeyName - The name of KeyVault key.
	keyname?: null | string @go(KeyName,*string)

	// KeyVersion - The version of KeyVault key.
	keyversion?: null | string @go(KeyVersion,*string)

	// KeyVaultURI - The Uri of KeyVault.
	keyvaulturi?: null | string @go(KeyVaultURI,*string)
}

// ListAccountSasResponse the List SAS credentials operation response.
#ListAccountSasResponse: _

// ListServiceSasResponse the List service SAS credentials operation response.
#ListServiceSasResponse: _

// MetricSpecification metric specification of operation.
#MetricSpecification: {
	// Name - Name of metric specification.
	name?: null | string @go(Name,*string)

	// DisplayName - Display name of metric specification.
	displayName?: null | string @go(DisplayName,*string)

	// DisplayDescription - Display description of metric specification.
	displayDescription?: null | string @go(DisplayDescription,*string)

	// Unit - Unit could be Bytes or Count.
	unit?: null | string @go(Unit,*string)

	// Dimensions - Dimensions of blobs, including blob type and access tier.
	dimensions?: null | [...#Dimension] @go(Dimensions,*[]Dimension)

	// AggregationType - Aggregation type could be Average.
	aggregationType?: null | string @go(AggregationType,*string)

	// FillGapWithZero - The property to decide fill gap with zero or not.
	fillGapWithZero?: null | bool @go(FillGapWithZero,*bool)

	// Category - The category this metric specification belong to, could be Capacity.
	category?: null | string @go(Category,*string)

	// ResourceIDDimensionNameOverride - Account Resource Id.
	resourceIdDimensionNameOverride?: null | string @go(ResourceIDDimensionNameOverride,*string)
}

// NetworkRuleSet network rule set
#NetworkRuleSet: {
	// Bypass - Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or None to bypass none of those traffics. Possible values include: 'None', 'Logging', 'Metrics', 'AzureServices'
	bypass?: #Bypass @go(Bypass)

	// VirtualNetworkRules - Sets the virtual network rules
	virtualNetworkRules?: null | [...#VirtualNetworkRule] @go(VirtualNetworkRules,*[]VirtualNetworkRule)

	// IPRules - Sets the IP ACL rules
	ipRules?: null | [...#IPRule] @go(IPRules,*[]IPRule)

	// DefaultAction - Specifies the default action of allow or deny when no other rules match. Possible values include: 'DefaultActionAllow', 'DefaultActionDeny'
	defaultAction?: #DefaultAction @go(DefaultAction)
}

// Operation storage REST API operation definition.
#Operation: _

// OperationDisplay display metadata associated with the operation.
#OperationDisplay: {
	// Provider - Service provider: Microsoft Storage.
	provider?: null | string @go(Provider,*string)

	// Resource - Resource on which the operation is performed etc.
	resource?: null | string @go(Resource,*string)

	// Operation - Type of operation: get, read, delete, etc.
	operation?: null | string @go(Operation,*string)
}

// OperationListResult result of the request to list Storage operations. It contains a list of operations
// and a URL link to get the next set of results.
#OperationListResult: {
	// Value - List of Storage operations supported by the Storage resource provider.
	value?: null | [...#Operation] @go(Value,*[]Operation)
}

// OperationProperties properties of operation, include metric specifications.
#OperationProperties: {
	// ServiceSpecification - One property of operation, include metric specifications.
	serviceSpecification?: null | #ServiceSpecification @go(ServiceSpecification,*ServiceSpecification)
}

// Resource describes a storage resource.
#Resource: _

// Restriction the restriction because of which SKU cannot be used.
#Restriction: _

// ServiceSasParameters the parameters to list service SAS credentials of a specific resource.
#ServiceSasParameters: {
	// CanonicalizedResource - The canonical path to the signed resource.
	canonicalizedResource?: null | string @go(CanonicalizedResource,*string)

	// Resource - The signed services accessible with the service SAS. Possible values include: Blob (b), Container (c), File (f), Share (s). Possible values include: 'SignedResourceB', 'SignedResourceC', 'SignedResourceF', 'SignedResourceS'
	signedResource?: #SignedResource @go(Resource)

	// Permissions - The signed permissions for the service SAS. Possible values include: Read (r), Write (w), Delete (d), List (l), Add (a), Create (c), Update (u) and Process (p). Possible values include: 'R', 'D', 'W', 'L', 'A', 'C', 'U', 'P'
	signedPermission?: #Permissions @go(Permissions)

	// IPAddressOrRange - An IP address or a range of IP addresses from which to accept requests.
	signedIp?: null | string @go(IPAddressOrRange,*string)

	// Protocols - The protocol permitted for a request made with the account SAS. Possible values include: 'Httpshttp', 'HTTPS'
	signedProtocol?: #HTTPProtocol @go(Protocols)

	// SharedAccessStartTime - The time at which the SAS becomes valid.
	signedStart?: null | date.#Time @go(SharedAccessStartTime,*date.Time)

	// SharedAccessExpiryTime - The time at which the shared access signature becomes invalid.
	signedExpiry?: null | date.#Time @go(SharedAccessExpiryTime,*date.Time)

	// Identifier - A unique value up to 64 characters in length that correlates to an access policy specified for the container, queue, or table.
	signedIdentifier?: null | string @go(Identifier,*string)

	// PartitionKeyStart - The start of partition key.
	startPk?: null | string @go(PartitionKeyStart,*string)

	// PartitionKeyEnd - The end of partition key.
	endPk?: null | string @go(PartitionKeyEnd,*string)

	// RowKeyStart - The start of row key.
	startRk?: null | string @go(RowKeyStart,*string)

	// RowKeyEnd - The end of row key.
	endRk?: null | string @go(RowKeyEnd,*string)

	// KeyToSign - The key to sign the account SAS token with.
	keyToSign?: null | string @go(KeyToSign,*string)

	// CacheControl - The response header override for cache control.
	rscc?: null | string @go(CacheControl,*string)

	// ContentDisposition - The response header override for content disposition.
	rscd?: null | string @go(ContentDisposition,*string)

	// ContentEncoding - The response header override for content encoding.
	rsce?: null | string @go(ContentEncoding,*string)

	// ContentLanguage - The response header override for content language.
	rscl?: null | string @go(ContentLanguage,*string)

	// ContentType - The response header override for content type.
	rsct?: null | string @go(ContentType,*string)
}

// ServiceSpecification one property of operation, include metric specifications.
#ServiceSpecification: {
	// MetricSpecifications - Metric specifications of operation.
	metricSpecifications?: null | [...#MetricSpecification] @go(MetricSpecifications,*[]MetricSpecification)
}

// Sku the SKU of the storage account.
#Sku: _

// SKUCapability the capability information in the specified sku, including file encryption, network acls,
// change notification, etc.
#SKUCapability: _

// SkuListResult the response from the List Storage SKUs operation.
#SkuListResult: _

// Usage describes Storage Resource Usage.
#Usage: _

// UsageListResult the response from the List Usages operation.
#UsageListResult: {
	// Value - Gets or sets the list of Storage Resource Usages.
	value?: null | [...#Usage] @go(Value,*[]Usage)
}

// UsageName the usage names that can be used; currently limited to StorageAccount.
#UsageName: _

// VirtualNetworkRule virtual Network rule.
#VirtualNetworkRule: {
	// VirtualNetworkResourceID - Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
	id?: null | string @go(VirtualNetworkResourceID,*string)

	// Action - The action of virtual network rule. Possible values include: 'Allow'
	action?: #Action @go(Action)

	// State - Gets the state of virtual network rule. Possible values include: 'StateProvisioning', 'StateDeprovisioning', 'StateSucceeded', 'StateFailed', 'StateNetworkSourceDeleted'
	state?: #State @go(State)
}
