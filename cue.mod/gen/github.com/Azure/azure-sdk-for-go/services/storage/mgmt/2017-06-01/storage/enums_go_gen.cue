// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/Azure/azure-sdk-for-go/services/storage/mgmt/2017-06-01/storage

package storage

// AccessTier enumerates the values for access tier.
#AccessTier: string // #enumAccessTier

#enumAccessTier:
	#Cool |
	#Hot

// Cool ...
#Cool: #AccessTier & "Cool"

// Hot ...
#Hot: #AccessTier & "Hot"

// AccountStatus enumerates the values for account status.
#AccountStatus: string // #enumAccountStatus

#enumAccountStatus:
	#Available |
	#Unavailable

// Available ...
#Available: #AccountStatus & "available"

// Unavailable ...
#Unavailable: #AccountStatus & "unavailable"

// Action enumerates the values for action.
#Action: string // #enumAction

#enumAction:
	#Allow

// Allow ...
#Allow: #Action & "Allow"

// Bypass enumerates the values for bypass.
#Bypass: string // #enumBypass

#enumBypass:
	#AzureServices |
	#Logging |
	#Metrics |
	#None

// AzureServices ...
#AzureServices: #Bypass & "AzureServices"

// Logging ...
#Logging: #Bypass & "Logging"

// Metrics ...
#Metrics: #Bypass & "Metrics"

// None ...
#None: #Bypass & "None"

// DefaultAction enumerates the values for default action.
#DefaultAction: string // #enumDefaultAction

#enumDefaultAction:
	#DefaultActionAllow |
	#DefaultActionDeny

// DefaultActionAllow ...
#DefaultActionAllow: #DefaultAction & "Allow"

// DefaultActionDeny ...
#DefaultActionDeny: #DefaultAction & "Deny"

// HTTPProtocol enumerates the values for http protocol.
#HTTPProtocol: string // #enumHTTPProtocol

#enumHTTPProtocol:
	#HTTPS |
	#Httpshttp

// HTTPS ...
#HTTPS: #HTTPProtocol & "https"

// Httpshttp ...
#Httpshttp: #HTTPProtocol & "https,http"

// KeyPermission enumerates the values for key permission.
#KeyPermission: string // #enumKeyPermission

#enumKeyPermission:
	#Full |
	#Read

// Full ...
#Full: #KeyPermission & "Full"

// Read ...
#Read: #KeyPermission & "Read"

// KeySource enumerates the values for key source.
#KeySource: string // #enumKeySource

#enumKeySource:
	#MicrosoftKeyvault |
	#MicrosoftStorage

// MicrosoftKeyvault ...
#MicrosoftKeyvault: #KeySource & "Microsoft.Keyvault"

// MicrosoftStorage ...
#MicrosoftStorage: #KeySource & "Microsoft.Storage"

// Kind enumerates the values for kind.
#Kind: string // #enumKind

#enumKind:
	#BlobStorage |
	#Storage

// BlobStorage ...
#BlobStorage: #Kind & "BlobStorage"

// Storage ...
#Storage: #Kind & "Storage"

// Permissions enumerates the values for permissions.
#Permissions: string // #enumPermissions

#enumPermissions:
	#A |
	#C |
	#D |
	#L |
	#P |
	#R |
	#U |
	#W

// A ...
#A: #Permissions & "a"

// C ...
#C: #Permissions & "c"

// D ...
#D: #Permissions & "d"

// L ...
#L: #Permissions & "l"

// P ...
#P: #Permissions & "p"

// R ...
#R: #Permissions & "r"

// U ...
#U: #Permissions & "u"

// W ...
#W: #Permissions & "w"

// ProvisioningState enumerates the values for provisioning state.
#ProvisioningState: string // #enumProvisioningState

#enumProvisioningState:
	#Creating |
	#ResolvingDNS |
	#Succeeded

// Creating ...
#Creating: #ProvisioningState & "Creating"

// ResolvingDNS ...
#ResolvingDNS: #ProvisioningState & "ResolvingDNS"

// Succeeded ...
#Succeeded: #ProvisioningState & "Succeeded"

// Reason enumerates the values for reason.
#Reason: string // #enumReason

#enumReason:
	#AccountNameInvalid |
	#AlreadyExists

// AccountNameInvalid ...
#AccountNameInvalid: #Reason & "AccountNameInvalid"

// AlreadyExists ...
#AlreadyExists: #Reason & "AlreadyExists"

// ReasonCode enumerates the values for reason code.
#ReasonCode: string // #enumReasonCode

#enumReasonCode:
	#NotAvailableForSubscription |
	#QuotaID

// NotAvailableForSubscription ...
#NotAvailableForSubscription: #ReasonCode & "NotAvailableForSubscription"

// QuotaID ...
#QuotaID: #ReasonCode & "QuotaId"

// Services enumerates the values for services.
#Services: string // #enumServices

#enumServices:
	#B |
	#F |
	#Q |
	#T

// B ...
#B: #Services & "b"

// F ...
#F: #Services & "f"

// Q ...
#Q: #Services & "q"

// T ...
#T: #Services & "t"

// SignedResource enumerates the values for signed resource.
#SignedResource: string // #enumSignedResource

#enumSignedResource:
	#SignedResourceB |
	#SignedResourceC |
	#SignedResourceF |
	#SignedResourceS

// SignedResourceB ...
#SignedResourceB: #SignedResource & "b"

// SignedResourceC ...
#SignedResourceC: #SignedResource & "c"

// SignedResourceF ...
#SignedResourceF: #SignedResource & "f"

// SignedResourceS ...
#SignedResourceS: #SignedResource & "s"

// SignedResourceTypes enumerates the values for signed resource types.
#SignedResourceTypes: string // #enumSignedResourceTypes

#enumSignedResourceTypes:
	#SignedResourceTypesC |
	#SignedResourceTypesO |
	#SignedResourceTypesS

// SignedResourceTypesC ...
#SignedResourceTypesC: #SignedResourceTypes & "c"

// SignedResourceTypesO ...
#SignedResourceTypesO: #SignedResourceTypes & "o"

// SignedResourceTypesS ...
#SignedResourceTypesS: #SignedResourceTypes & "s"

// SkuName enumerates the values for sku name.
#SkuName: string // #enumSkuName

#enumSkuName:
	#PremiumLRS |
	#StandardGRS |
	#StandardLRS |
	#StandardRAGRS |
	#StandardZRS

// PremiumLRS ...
#PremiumLRS: #SkuName & "Premium_LRS"

// StandardGRS ...
#StandardGRS: #SkuName & "Standard_GRS"

// StandardLRS ...
#StandardLRS: #SkuName & "Standard_LRS"

// StandardRAGRS ...
#StandardRAGRS: #SkuName & "Standard_RAGRS"

// StandardZRS ...
#StandardZRS: #SkuName & "Standard_ZRS"

// SkuTier enumerates the values for sku tier.
#SkuTier: string // #enumSkuTier

#enumSkuTier:
	#Premium |
	#Standard

// Premium ...
#Premium: #SkuTier & "Premium"

// Standard ...
#Standard: #SkuTier & "Standard"

// State enumerates the values for state.
#State: string // #enumState

#enumState:
	#StateDeprovisioning |
	#StateFailed |
	#StateNetworkSourceDeleted |
	#StateProvisioning |
	#StateSucceeded

// StateDeprovisioning ...
#StateDeprovisioning: #State & "deprovisioning"

// StateFailed ...
#StateFailed: #State & "failed"

// StateNetworkSourceDeleted ...
#StateNetworkSourceDeleted: #State & "networkSourceDeleted"

// StateProvisioning ...
#StateProvisioning: #State & "provisioning"

// StateSucceeded ...
#StateSucceeded: #State & "succeeded"

// UsageUnit enumerates the values for usage unit.
#UsageUnit: string // #enumUsageUnit

#enumUsageUnit:
	#Bytes |
	#BytesPerSecond |
	#Count |
	#CountsPerSecond |
	#Percent |
	#Seconds

// Bytes ...
#Bytes: #UsageUnit & "Bytes"

// BytesPerSecond ...
#BytesPerSecond: #UsageUnit & "BytesPerSecond"

// Count ...
#Count: #UsageUnit & "Count"

// CountsPerSecond ...
#CountsPerSecond: #UsageUnit & "CountsPerSecond"

// Percent ...
#Percent: #UsageUnit & "Percent"

// Seconds ...
#Seconds: #UsageUnit & "Seconds"
