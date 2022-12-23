// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/batch/manualv1alpha1

package manualv1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// ArrayProperties define an Batch array job.
#ArrayProperties: {
	// The size of the array job.
	size?: null | int64 @go(Size,*int64)
}

// ArrayPropertiesDetail defines the array properties of a job for observation.
#ArrayPropertiesDetail: {
	// The job index within the array that's associated with this job. This parameter
	// is returned for array job children.
	index?: null | int64 @go(Index,*int64)

	// The size of the array job. This parameter is returned for parent array jobs.
	size?: null | int64 @go(Size,*int64)

	// A summary of the number of array job children in each available job status.
	// This parameter is returned for parent array jobs.
	statusSummary?: {[string]: null | int64} @go(StatusSummary,map[string]*int64)
}

// NetworkInterface defines the elastic network interface for a multi-node parallel
// job node for observation.
#NetworkInterface: {
	// The attachment ID for the network interface.
	attachmentId?: null | string @go(AttachmentID,*string)

	// The private IPv6 address for the network interface.
	ipv6Address?: null | string @go(Ipv6Address,*string)

	// The private IPv4 address for the network interface.
	privateIpv4Address?: null | string @go(PrivateIpv4Address,*string)
}

// AttemptContainerDetail defines the details of a container that's part of a job attempt for observation
#AttemptContainerDetail: {
	// The Amazon Resource Name (ARN) of the Amazon ECS container instance that
	// hosts the job attempt.
	containerInstanceArn?: null | string @go(ContainerInstanceArn,*string)

	// The exit code for the job attempt. A non-zero exit code is considered a failure.
	exitCode?: null | int64 @go(ExitCode,*int64)

	// The name of the CloudWatch Logs log stream associated with the container.
	// The log group for Batch jobs is /aws/batch/job. Each container attempt receives
	// a log stream name when they reach the RUNNING status.
	logStreamName?: null | string @go(LogStreamName,*string)

	// The network interfaces associated with the job attempt.
	networkInterfaces?: [...null | #NetworkInterface] @go(NetworkInterfaces,[]*NetworkInterface)

	// A short (255 max characters) human-readable string to provide additional
	// details about a running or stopped container.
	reason?: null | string @go(Reason,*string)

	// The Amazon Resource Name (ARN) of the Amazon ECS task that's associated with
	// the job attempt. Each container attempt receives a task ARN when they reach
	// the STARTING status.
	taskArn?: null | string @go(TaskArn,*string)
}

// AttemptDetail defines a job attempt for observation
#AttemptDetail: {
	// Details about the container in this job attempt.
	container?: null | #AttemptContainerDetail @go(Container,*AttemptContainerDetail)

	// The Unix timestamp (in milliseconds) for when the attempt was started (when
	// the attempt transitioned from the STARTING state to the RUNNING state).
	startedAt?: null | int64 @go(StartedAt,*int64)

	// A short, human-readable string to provide additional details about the current
	// status of the job attempt.
	statusReason?: null | string @go(StatusReason,*string)

	// The Unix timestamp (in milliseconds) for when the attempt was stopped (when
	// the attempt transitioned from the RUNNING state to a terminal state, such
	// as SUCCEEDED or FAILED).
	stoppedAt?: null | int64 @go(StoppedAt,*int64)
}

// ContainerOverrides define the overrides that should be sent to a container.
#ContainerOverrides: {
	// The command to send to the container that overrides the default command from
	// the Docker image or the job definition.
	command?: [...null | string] @go(Command,[]*string)

	// The environment variables to send to the container. You can add new environment
	// variables, which are added to the container at launch, or you can override
	// the existing environment variables from the Docker image or the job definition.
	//
	// Environment variables must not start with AWS_BATCH; this naming convention
	// is reserved for variables that are set by the Batch service.
	environment?: [...null | #KeyValuePair] @go(Environment,[]*KeyValuePair)

	// The instance type to use for a multi-node parallel job.
	//
	// This parameter isn't applicable to single-node container jobs or jobs that
	// run on Fargate resources, and shouldn't be provided.
	instanceType?: null | string @go(InstanceType,*string)

	// The type and amount of resources to assign to a container. This overrides
	// the settings in the job definition. The supported resources include GPU,
	// MEMORY, and VCPU.
	resourceRequirements?: [...null | #ResourceRequirement] @go(ResourceRequirements,[]*ResourceRequirement)
}

// JobDependency defines an Batch job dependency.
#JobDependency: {
	// The job ID of the Batch job associated with this dependency.
	//
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/batch/manualv1alpha1.Job
	// +crossplane:generate:reference:refFieldName=JobIDRef
	// +crossplane:generate:reference:selectorFieldName=JobIDSelector
	jobId?: null | string @go(JobID,*string)

	// JobIDRef is a reference to an JobID.
	// +optional
	jobIdRef?: null | xpv1.#Reference @go(JobIDRef,*xpv1.Reference)

	// JobIDSelector selects references to an JobID.
	// +optional
	jobIdSelector?: null | xpv1.#Selector @go(JobIDSelector,*xpv1.Selector)

	// The type of the job dependency.
	// +kubebuilder:validation:Enum=N_TO_N;SEQUENTIAL
	type?: null | string @go(Type,*string)
}

// NodePropertyOverride defines any node overrides to a job definition that's used in
// a SubmitJob API operation.
#NodePropertyOverride: {
	// The overrides that should be sent to a node range.
	containerOverrides?: null | #ContainerOverrides @go(ContainerOverrides,*ContainerOverrides)

	// The range of nodes, using node index values, that's used to override. A range
	// of 0:3 indicates nodes with index values of 0 through 3. If the starting
	// range value is omitted (:n), then 0 is used to start the range. If the ending
	// range value is omitted (n:), then the highest possible node index is used
	// to end the range.
	//
	// TargetNodes is a required field
	// +kubebuilder:validation:Required
	targetNodes: string @go(TargetNodes)
}

// NodeOverrides define any node overrides to a job definition that's used in
// a SubmitJob API operation.
//
// This isn't applicable to jobs that are running on Fargate resources and shouldn't
// be provided; use containerOverrides instead.
#NodeOverrides: {
	// The node property overrides for the job.
	nodePropertyOverrides?: [...null | #NodePropertyOverride] @go(NodePropertyOverrides,[]*NodePropertyOverride)

	// The number of nodes to use with a multi-node parallel job. This value overrides
	// the number of nodes that are specified in the job definition. To use this
	// override:
	//
	//    * There must be at least one node range in your job definition that has
	//    an open upper boundary (such as : or n:).
	//
	//    * The lower boundary of the node range specified in the job definition
	//    must be fewer than the number of nodes specified in the override.
	//
	//    * The main node index specified in the job definition must be fewer than
	//    the number of nodes specified in the override.
	numNodes?: null | int64 @go(NumNodes,*int64)
}

// JobParameters define the desired state of a Batch Job
#JobParameters: {
	// Region is which region the Function will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The array properties for the submitted job, such as the size of the array.
	// The array size can be between 2 and 10,000. If you specify array properties
	// for a job, it becomes an array job. For more information, see Array Jobs
	// (https://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html) in the
	// Batch User Guide.
	arrayProperties?: null | #ArrayProperties @go(ArrayProperties,*ArrayProperties)

	// A list of container overrides in the JSON format that specify the name of
	// a container in the specified job definition and the overrides it should receive.
	// You can override the default command for a container, which is specified
	// in the job definition or the Docker image, with a command override. You can
	// also override existing environment variables on a container or add new environment
	// variables to it with an environment override.
	containerOverrides?: null | #ContainerOverrides @go(ContainerOverrides,*ContainerOverrides)

	// A list of dependencies for the job. A job can depend upon a maximum of 20
	// jobs. You can specify a SEQUENTIAL type dependency without specifying a job
	// ID for array jobs so that each child array job completes sequentially, starting
	// at index 0. You can also specify an N_TO_N type dependency with a job ID
	// for array jobs. In that case, each index child of this job must wait for
	// the corresponding index child of each dependency to complete before it can
	// begin.
	dependsOn?: [...null | #JobDependency] @go(DependsOn,[]*JobDependency)

	// The job definition used by this job. This value can be one of name, name:revision,
	// or the Amazon Resource Name (ARN) for the job definition. If name is specified
	// without a revision then the latest active revision is used.
	//
	// JobDefinition is a required field
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/batch/manualv1alpha1.JobDefinition
	// +crossplane:generate:reference:refFieldName=JobDefinitionRef
	// +crossplane:generate:reference:selectorFieldName=JobDefinitionSelector
	jobDefinition?: string @go(JobDefinition)

	// JobDefinitionRef is a reference to an JobDefinition.
	// +optional
	jobDefinitionRef?: null | xpv1.#Reference @go(JobDefinitionRef,*xpv1.Reference)

	// JobDefinitionSelector selects references to an JobDefinition.
	// +optional
	jobDefinitionSelector?: null | xpv1.#Selector @go(JobDefinitionSelector,*xpv1.Selector)

	// The job queue where the job is submitted. You can specify either the name
	// or the Amazon Resource Name (ARN) of the queue.
	//
	// JobQueue is a required field
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/batch/v1alpha1.JobQueue
	// +crossplane:generate:reference:refFieldName=JobQueueRef
	// +crossplane:generate:reference:selectorFieldName=JobQueueSelector
	jobQueue?: string @go(JobQueue)

	// JobQueueRef is a reference to an JobQueue.
	// +optional
	jobQueueRef?: null | xpv1.#Reference @go(JobQueueRef,*xpv1.Reference)

	// JobQueueSelector selects references to an JobQueue.
	// +optional
	jobQueueSelector?: null | xpv1.#Selector @go(JobQueueSelector,*xpv1.Selector)

	// A list of node overrides in JSON format that specify the node range to target
	// and the container overrides for that node range.
	//
	// This parameter isn't applicable to jobs that are running on Fargate resources;
	// use containerOverrides instead.
	nodeOverrides?: null | #NodeOverrides @go(NodeOverrides,*NodeOverrides)

	// Additional parameters passed to the job that replace parameter substitution
	// placeholders that are set in the job definition. Parameters are specified
	// as a key and value pair mapping. Parameters in a SubmitJob request override
	// any corresponding parameter defaults from the job definition.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)

	// Specifies whether to propagate the tags from the job or job definition to
	// the corresponding Amazon ECS task. If no value is specified, the tags aren't
	// propagated. Tags can only be propagated to the tasks during task creation.
	// For tags with the same name, job tags are given priority over job definitions
	// tags. If the total number of combined tags from the job and job definition
	// is over 50, the job is moved to the FAILED state. When specified, this overrides
	// the tag propagation setting in the job definition.
	propagateTags?: null | bool @go(PropagateTags,*bool)

	// The retry strategy to use for failed jobs from this SubmitJob operation.
	// When a retry strategy is specified here, it overrides the retry strategy
	// defined in the job definition.
	retryStrategy?: null | #RetryStrategy @go(RetryStrategy,*RetryStrategy)

	// The tags that you apply to the job request to help you categorize and organize
	// your resources. Each tag consists of a key and an optional value. For more
	// information, see Tagging Amazon Web Services Resources (https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html)
	// in Amazon Web Services General Reference.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The timeout configuration for this SubmitJob operation. You can specify a
	// timeout duration after which Batch terminates your jobs if they haven't finished.
	// If a job is terminated due to a timeout, it isn't retried. The minimum value
	// for the timeout is 60 seconds. This configuration overrides any timeout configuration
	// specified in the job definition. For array jobs, child jobs have the same
	// timeout configuration as the parent job. For more information, see Job Timeouts
	// (https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html)
	// in the Amazon Elastic Container Service Developer Guide.
	timeout?: null | #JobTimeout @go(Timeout,*JobTimeout)
}

// A JobSpec defines the desired state of a Job.
#JobSpec: {
	xpv1.#ResourceSpec
	forProvider: #JobParameters @go(ForProvider)
}

// JobObservation keeps the state for the external resource
#JobObservation: {
	// The array properties of the job, if it is an array job.
	arrayProperties?: null | #ArrayPropertiesDetail @go(ArrayProperties,*ArrayPropertiesDetail)

	// A list of job attempts associated with this job.
	attempts?: [...null | #AttemptDetail] @go(Attempts,[]*AttemptDetail)

	// The Unix timestamp (in milliseconds) for when the job was created. For non-array
	// jobs and parent array jobs, this is when the job entered the SUBMITTED state
	// (at the time SubmitJob was called). For array child jobs, this is when the
	// child job was spawned by its parent and entered the PENDING state.
	createdAt?: null | int64 @go(CreatedAt,*int64)

	// The Amazon Resource Name (ARN) of the job.
	jobArn?: null | string @go(JobArn,*string)

	// The ID for the job.
	jobId?: null | string @go(JobID,*string)

	// The Unix timestamp (in milliseconds) for when the job was started (when the
	// job transitioned from the STARTING state to the RUNNING state). This parameter
	// isn't provided for child jobs of array jobs or multi-node parallel jobs.
	startedAt?: null | int64 @go(StartedAt,*int64)

	// The current status for the job.
	//
	// If your jobs don't progress to STARTING, see Jobs Stuck in RUNNABLE Status
	// (https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#job_stuck_in_runnable)
	// in the troubleshooting section of the Batch User Guide.
	status?: null | string @go(Status,*string)

	// A short, human-readable string to provide additional details about the current
	// status of the job.
	statusReason?: null | string @go(StatusReason,*string)

	// The Unix timestamp (in milliseconds) for when the job was stopped (when the
	// job transitioned from the RUNNING state to a terminal state, such as SUCCEEDED
	// or FAILED).
	stoppedAt?: null | int64 @go(StoppedAt,*int64)
}

// A JobStatus represents the observed state of a Job.
#JobStatus: {
	xpv1.#ResourceStatus
	atProvider?: #JobObservation @go(AtProvider)
}

// A Job is a managed resource that represents an AWS Batch Job.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Job: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #JobSpec           @go(Spec)
	status?:   #JobStatus         @go(Status)
}

// JobList contains a list of Jobs
#JobList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Job] @go(Items,[]Job)
}
