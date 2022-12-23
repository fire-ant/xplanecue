// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/Azure/azure-storage-blob-go/azblob

package azblob

// ServiceCodeType is a string identifying a storage service error.
// For more information, see https://docs.microsoft.com/en-us/rest/api/storageservices/status-and-error-codes2
#ServiceCodeType: string // #enumServiceCodeType

#enumServiceCodeType:
	#ServiceCodeAppendPositionConditionNotMet |
	#ServiceCodeBlobAlreadyExists |
	#ServiceCodeBlobNotFound |
	#ServiceCodeBlobOverwritten |
	#ServiceCodeBlobTierInadequateForContentLength |
	#ServiceCodeBlockCountExceedsLimit |
	#ServiceCodeBlockListTooLong |
	#ServiceCodeCannotChangeToLowerTier |
	#ServiceCodeCannotVerifyCopySource |
	#ServiceCodeContainerAlreadyExists |
	#ServiceCodeContainerBeingDeleted |
	#ServiceCodeContainerDisabled |
	#ServiceCodeContainerNotFound |
	#ServiceCodeContentLengthLargerThanTierLimit |
	#ServiceCodeCopyAcrossAccountsNotSupported |
	#ServiceCodeCopyIDMismatch |
	#ServiceCodeFeatureVersionMismatch |
	#ServiceCodeIncrementalCopyBlobMismatch |
	#ServiceCodeIncrementalCopyOfEralierVersionSnapshotNotAllowed |
	#ServiceCodeIncrementalCopySourceMustBeSnapshot |
	#ServiceCodeInfiniteLeaseDurationRequired |
	#ServiceCodeInvalidBlobOrBlock |
	#ServiceCodeInvalidBlobType |
	#ServiceCodeInvalidBlockID |
	#ServiceCodeInvalidBlockList |
	#ServiceCodeInvalidOperation |
	#ServiceCodeInvalidPageRange |
	#ServiceCodeInvalidSourceBlobType |
	#ServiceCodeInvalidSourceBlobURL |
	#ServiceCodeInvalidVersionForPageBlobOperation |
	#ServiceCodeLeaseAlreadyPresent |
	#ServiceCodeLeaseAlreadyBroken |
	#ServiceCodeLeaseIDMismatchWithBlobOperation |
	#ServiceCodeLeaseIDMismatchWithContainerOperation |
	#ServiceCodeLeaseIDMismatchWithLeaseOperation |
	#ServiceCodeLeaseIDMissing |
	#ServiceCodeLeaseIsBreakingAndCannotBeAcquired |
	#ServiceCodeLeaseIsBreakingAndCannotBeChanged |
	#ServiceCodeLeaseIsBrokenAndCannotBeRenewed |
	#ServiceCodeLeaseLost |
	#ServiceCodeLeaseNotPresentWithBlobOperation |
	#ServiceCodeLeaseNotPresentWithContainerOperation |
	#ServiceCodeLeaseNotPresentWithLeaseOperation |
	#ServiceCodeMaxBlobSizeConditionNotMet |
	#ServiceCodeNoPendingCopyOperation |
	#ServiceCodeOperationNotAllowedOnIncrementalCopyBlob |
	#ServiceCodePendingCopyOperation |
	#ServiceCodePreviousSnapshotCannotBeNewer |
	#ServiceCodePreviousSnapshotNotFound |
	#ServiceCodePreviousSnapshotOperationNotSupported |
	#ServiceCodeSequenceNumberConditionNotMet |
	#ServiceCodeSequenceNumberIncrementTooLarge |
	#ServiceCodeSnapshotCountExceeded |
	#ServiceCodeSnaphotOperationRateExceeded |
	#ServiceCodeSnapshotsPresent |
	#ServiceCodeSourceConditionNotMet |
	#ServiceCodeSystemInUse |
	#ServiceCodeTargetConditionNotMet |
	#ServiceCodeUnauthorizedBlobOverwrite |
	#ServiceCodeBlobBeingRehydrated |
	#ServiceCodeBlobArchived |
	#ServiceCodeBlobNotArchived |
	#ServiceCodeNone |
	#ServiceCodeAccountAlreadyExists |
	#ServiceCodeAccountBeingCreated |
	#ServiceCodeAccountIsDisabled |
	#ServiceCodeAuthenticationFailed |
	#ServiceCodeConditionHeadersNotSupported |
	#ServiceCodeConditionNotMet |
	#ServiceCodeEmptyMetadataKey |
	#ServiceCodeInsufficientAccountPermissions |
	#ServiceCodeInternalError |
	#ServiceCodeInvalidAuthenticationInfo |
	#ServiceCodeInvalidHeaderValue |
	#ServiceCodeInvalidHTTPVerb |
	#ServiceCodeInvalidInput |
	#ServiceCodeInvalidMd5 |
	#ServiceCodeInvalidMetadata |
	#ServiceCodeInvalidQueryParameterValue |
	#ServiceCodeInvalidRange |
	#ServiceCodeInvalidResourceName |
	#ServiceCodeInvalidURI |
	#ServiceCodeInvalidXMLDocument |
	#ServiceCodeInvalidXMLNodeValue |
	#ServiceCodeMd5Mismatch |
	#ServiceCodeMetadataTooLarge |
	#ServiceCodeMissingContentLengthHeader |
	#ServiceCodeMissingRequiredQueryParameter |
	#ServiceCodeMissingRequiredHeader |
	#ServiceCodeMissingRequiredXMLNode |
	#ServiceCodeMultipleConditionHeadersNotSupported |
	#ServiceCodeOperationTimedOut |
	#ServiceCodeOutOfRangeInput |
	#ServiceCodeOutOfRangeQueryParameterValue |
	#ServiceCodeRequestBodyTooLarge |
	#ServiceCodeResourceTypeMismatch |
	#ServiceCodeRequestURLFailedToParse |
	#ServiceCodeResourceAlreadyExists |
	#ServiceCodeResourceNotFound |
	#ServiceCodeServerBusy |
	#ServiceCodeUnsupportedHeader |
	#ServiceCodeUnsupportedXMLNode |
	#ServiceCodeUnsupportedQueryParameter |
	#ServiceCodeUnsupportedHTTPVerb

// StorageError identifies a responder-generated network or response parsing error.
#StorageError: _
