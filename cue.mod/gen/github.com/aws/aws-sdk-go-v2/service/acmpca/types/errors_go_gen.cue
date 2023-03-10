// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/aws/aws-sdk-go-v2/service/acmpca/types

package types

// The certificate authority certificate you are importing does not comply with
// conditions specified in the certificate that signed it.
#CertificateMismatchException: {
	Message?: null | string @go(,*string)
}

// A previous update to your private CA is still ongoing.
#ConcurrentModificationException: {
	Message?: null | string @go(,*string)
}

// One or more of the specified arguments was not valid.
#InvalidArgsException: {
	Message?: null | string @go(,*string)
}

// The requested Amazon Resource Name (ARN) does not refer to an existing resource.
#InvalidArnException: {
	Message?: null | string @go(,*string)
}

// The token specified in the NextToken argument is not valid. Use the token
// returned from your previous call to ListCertificateAuthorities
// (https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html).
#InvalidNextTokenException: {
	Message?: null | string @go(,*string)
}

// The resource policy is invalid or is missing a required statement. For general
// information about IAM policy and statement structure, see Overview of JSON
// Policies
// (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json).
#InvalidPolicyException: {
	Message?: null | string @go(,*string)
}

// The request action cannot be performed or is prohibited.
#InvalidRequestException: {
	Message?: null | string @go(,*string)
}

// The state of the private CA does not allow this action to occur.
#InvalidStateException: {
	Message?: null | string @go(,*string)
}

// The tag associated with the CA is not valid. The invalid argument is contained
// in the message field.
#InvalidTagException: {
	Message?: null | string @go(,*string)
}

// An ACM Private CA quota has been exceeded. See the exception message returned to
// determine the quota that was exceeded.
#LimitExceededException: {
	Message?: null | string @go(,*string)
}

// The current action was prevented because it would lock the caller out from
// performing subsequent actions. Verify that the specified parameters would not
// result in the caller being denied access to the resource.
#LockoutPreventedException: {
	Message?: null | string @go(,*string)
}

// One or more fields in the certificate are invalid.
#MalformedCertificateException: {
	Message?: null | string @go(,*string)
}

// The certificate signing request is invalid.
#MalformedCSRException: {
	Message?: null | string @go(,*string)
}

// The designated permission has already been given to the user.
#PermissionAlreadyExistsException: {
	Message?: null | string @go(,*string)
}

// Your request has already been completed.
#RequestAlreadyProcessedException: {
	Message?: null | string @go(,*string)
}

// The request has failed for an unspecified reason.
#RequestFailedException: {
	Message?: null | string @go(,*string)
}

// Your request is already in progress.
#RequestInProgressException: {
	Message?: null | string @go(,*string)
}

// A resource such as a private CA, S3 bucket, certificate, audit report, or policy
// cannot be found.
#ResourceNotFoundException: {
	Message?: null | string @go(,*string)
}

// You can associate up to 50 tags with a private CA. Exception information is
// contained in the exception message field.
#TooManyTagsException: {
	Message?: null | string @go(,*string)
}
