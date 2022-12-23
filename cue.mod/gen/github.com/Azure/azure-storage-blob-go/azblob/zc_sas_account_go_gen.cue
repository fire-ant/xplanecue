// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/Azure/azure-storage-blob-go/azblob

package azblob

import "time"

// AccountSASSignatureValues is used to generate a Shared Access Signature (SAS) for an Azure Storage account.
// For more information, see https://docs.microsoft.com/rest/api/storageservices/constructing-an-account-sas
#AccountSASSignatureValues: {
	Version:       string
	Protocol:      #SASProtocol
	StartTime:     time.Time
	ExpiryTime:    time.Time
	Permissions:   string
	IPRange:       #IPRange
	Services:      string
	ResourceTypes: string
}

// The AccountSASPermissions type simplifies creating the permissions string for an Azure Storage Account SAS.
// Initialize an instance of this type and then call its String method to set AccountSASSignatureValues's Permissions field.
#AccountSASPermissions: {
	Read:    bool
	Write:   bool
	Delete:  bool
	List:    bool
	Add:     bool
	Create:  bool
	Update:  bool
	Process: bool
}

// The AccountSASServices type simplifies creating the services string for an Azure Storage Account SAS.
// Initialize an instance of this type and then call its String method to set AccountSASSignatureValues's Services field.
#AccountSASServices: {
	Blob:  bool
	Queue: bool
	File:  bool
}

// The AccountSASResourceTypes type simplifies creating the resource types string for an Azure Storage Account SAS.
// Initialize an instance of this type and then call its String method to set AccountSASSignatureValues's ResourceTypes field.
#AccountSASResourceTypes: {
	Service:   bool
	Container: bool
	Object:    bool
}
