// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/lambda/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// FunctionParameters defines the desired state of Function
#FunctionParameters: {
	// Region is which region the Function will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// To enable code signing for this function, specify the ARN of a code-signing
	// configuration. A code-signing configuration includes a set of signing profiles,
	// which define the trusted publishers for this function.
	codeSigningConfigARN?: null | string @go(CodeSigningConfigARN,*string)

	// A dead letter queue configuration that specifies the queue or topic where
	// Lambda sends asynchronous events when they fail processing. For more information,
	// see Dead Letter Queues (https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq).
	deadLetterConfig?: null | #DeadLetterConfig @go(DeadLetterConfig,*DeadLetterConfig)

	// A description of the function.
	description?: null | string @go(Description,*string)

	// Environment variables that are accessible from function code during execution.
	environment?: null | #Environment @go(Environment,*Environment)

	// Connection settings for an Amazon EFS file system.
	fileSystemConfigs?: [...null | #FileSystemConfig] @go(FileSystemConfigs,[]*FileSystemConfig)

	// The name of the method within your code that Lambda calls to execute your
	// function. The format includes the file name. It can also include namespaces
	// and other qualifiers, depending on the runtime. For more information, see
	// Programming Model (https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html).
	handler?: null | string @go(Handler,*string)

	// Container image configuration values (https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html)
	// that override the values in the container image Dockerfile.
	imageConfig?: null | #ImageConfig @go(ImageConfig,*ImageConfig)

	// The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt
	// your function's environment variables. If it's not provided, AWS Lambda uses
	// a default service key.
	kmsKeyARN?: null | string @go(KMSKeyARN,*string)

	// A list of function layers (https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
	// to add to the function's execution environment. Specify each layer by its
	// ARN, including the version.
	layers?: [...null | string] @go(Layers,[]*string)

	// The amount of memory available to the function at runtime. Increasing the
	// function's memory also increases its CPU allocation. The default value is
	// 128 MB. The value can be any multiple of 1 MB.
	memorySize?: null | int64 @go(MemorySize,*int64)

	// The type of deployment package. Set to Image for container image and set
	// Zip for ZIP archive.
	packageType?: null | string @go(PackageType,*string)

	// Set to true to publish the first version of the function during creation.
	publish?: null | bool @go(Publish,*bool)

	// The identifier of the function's runtime (https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html).
	runtime?: null | string @go(Runtime,*string)

	// A list of tags (https://docs.aws.amazon.com/lambda/latest/dg/tagging.html)
	// to apply to the function.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The amount of time that Lambda allows a function to run before stopping it.
	// The default is 3 seconds. The maximum allowed value is 900 seconds.
	timeout?: null | int64 @go(Timeout,*int64)

	// Set Mode to Active to sample and trace a subset of incoming requests with
	// AWS X-Ray.
	tracingConfig?: null | #TracingConfig @go(TracingConfig,*TracingConfig)

	#CustomFunctionParameters
}

// FunctionSpec defines the desired state of Function
#FunctionSpec: {
	xpv1.#ResourceSpec
	forProvider: #FunctionParameters @go(ForProvider)
}

// FunctionObservation defines the observed state of Function
#FunctionObservation: {
	// The SHA256 hash of the function's deployment package.
	codeSHA256?: null | string @go(CodeSHA256,*string)

	// The size of the function's deployment package, in bytes.
	codeSize?: null | int64 @go(CodeSize,*int64)

	// The function's Amazon Resource Name (ARN).
	functionARN?: null | string @go(FunctionARN,*string)

	// The name of the function.
	functionName?: null | string @go(FunctionName,*string)

	// The function's image configuration values.
	imageConfigResponse?: null | #ImageConfigResponse @go(ImageConfigResponse,*ImageConfigResponse)

	// The date and time that the function was last updated, in ISO-8601 format
	// (https://www.w3.org/TR/NOTE-datetime) (YYYY-MM-DDThh:mm:ss.sTZD).
	lastModified?: null | string @go(LastModified,*string)

	// The status of the last update that was performed on the function. This is
	// first set to Successful after function creation completes.
	lastUpdateStatus?: null | string @go(LastUpdateStatus,*string)

	// The reason for the last update that was performed on the function.
	lastUpdateStatusReason?: null | string @go(LastUpdateStatusReason,*string)

	// The reason code for the last update that was performed on the function.
	lastUpdateStatusReasonCode?: null | string @go(LastUpdateStatusReasonCode,*string)

	// For Lambda@Edge functions, the ARN of the master function.
	masterARN?: null | string @go(MasterARN,*string)

	// The latest updated revision of the function or alias.
	revisionID?: null | string @go(RevisionID,*string)

	// The function's execution role.
	role?: null | string @go(Role,*string)

	// The ARN of the signing job.
	signingJobARN?: null | string @go(SigningJobARN,*string)

	// The ARN of the signing profile version.
	signingProfileVersionARN?: null | string @go(SigningProfileVersionARN,*string)

	// The current state of the function. When the state is Inactive, you can reactivate
	// the function by invoking it.
	state?: null | string @go(State,*string)

	// The reason for the function's current state.
	stateReason?: null | string @go(StateReason,*string)

	// The reason code for the function's current state. When the code is Creating,
	// you can't invoke or modify the function.
	stateReasonCode?: null | string @go(StateReasonCode,*string)

	// The version of the Lambda function.
	version?: null | string @go(Version,*string)

	// The function's networking configuration.
	vpcConfig?: null | #VPCConfigResponse @go(VPCConfig,*VPCConfigResponse)
}

// FunctionStatus defines the observed state of Function.
#FunctionStatus: {
	xpv1.#ResourceStatus
	atProvider?: #FunctionObservation @go(AtProvider)
}

// Function is the Schema for the Functions API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:deprecatedversion:warning="Please use v1beta1 version of this resource."
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Function: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #FunctionSpec      @go(Spec)
	status?:   #FunctionStatus    @go(Status)
}

// FunctionList contains a list of Functions
#FunctionList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Function] @go(Items,[]Function)
}
