// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/glue/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// JobParameters defines the desired state of Job
#JobParameters: {
	// Region is which region the Job will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// This parameter is deprecated. Use MaxCapacity instead.
	//
	// The number of Glue data processing units (DPUs) to allocate to this Job.
	// You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative
	// measure of processing power that consists of 4 vCPUs of compute capacity
	// and 16 GB of memory. For more information, see the Glue pricing page (https://aws.amazon.com/glue/pricing/).
	allocatedCapacity?: null | int64 @go(AllocatedCapacity,*int64)

	// The JobCommand that runs this job.
	// +kubebuilder:validation:Required
	command?: null | #JobCommand @go(Command,*JobCommand)

	// The default arguments for this job.
	//
	// You can specify arguments here that your own job-execution script consumes,
	// as well as arguments that Glue itself consumes.
	//
	// For information about how to specify and consume your own Job arguments,
	// see the Calling Glue APIs in Python (https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html)
	// topic in the developer guide.
	//
	// For information about the key-value pairs that Glue consumes to set up your
	// job, see the Special Parameters Used by Glue (https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)
	// topic in the developer guide.
	defaultArguments?: {[string]: null | string} @go(DefaultArguments,map[string]*string)

	// Description of the job being defined.
	description?: null | string @go(Description,*string)

	// An ExecutionProperty specifying the maximum number of concurrent runs allowed
	// for this job.
	executionProperty?: null | #ExecutionProperty @go(ExecutionProperty,*ExecutionProperty)

	// Glue version determines the versions of Apache Spark and Python that Glue
	// supports. The Python version indicates the version supported for jobs of
	// type Spark.
	//
	// For more information about the available Glue versions and corresponding
	// Spark and Python versions, see Glue version (https://docs.aws.amazon.com/glue/latest/dg/add-job.html)
	// in the developer guide.
	//
	// Jobs that are created without specifying a Glue version default to Glue 0.9.
	glueVersion?: null | string @go(GlueVersion,*string)

	// This field is reserved for future use.
	logURI?: null | string @go(LogURI,*string)

	// For Glue version 1.0 or earlier jobs, using the standard worker type, the
	// number of Glue data processing units (DPUs) that can be allocated when this
	// job runs. A DPU is a relative measure of processing power that consists of
	// 4 vCPUs of compute capacity and 16 GB of memory. For more information, see
	// the Glue pricing page (https://aws.amazon.com/glue/pricing/).
	//
	// Do not set Max Capacity if using WorkerType and NumberOfWorkers.
	//
	// The value that can be allocated for MaxCapacity depends on whether you are
	// running a Python shell job or an Apache Spark ETL job:
	//
	//    * When you specify a Python shell job (JobCommand.Name="pythonshell"),
	//    you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.
	//
	//    * When you specify an Apache Spark ETL job (JobCommand.Name="glueetl")
	//    or Apache Spark streaming ETL job (JobCommand.Name="gluestreaming"), you
	//    can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type
	//    cannot have a fractional DPU allocation.
	//
	// For Glue version 2.0 jobs, you cannot instead specify a Maximum capacity.
	// Instead, you should specify a Worker type and the Number of workers.
	maxCapacity?: null | float64 @go(MaxCapacity,*float64)

	// The maximum number of times to retry this job if it fails.
	maxRetries?: null | int64 @go(MaxRetries,*int64)

	// Non-overridable arguments for this job, specified as name-value pairs.
	nonOverridableArguments?: {[string]: null | string} @go(NonOverridableArguments,map[string]*string)

	// Specifies configuration properties of a job notification.
	notificationProperty?: null | #NotificationProperty @go(NotificationProperty,*NotificationProperty)

	// The number of workers of a defined workerType that are allocated when a job
	// runs.
	//
	// The maximum number of workers you can define are 299 for G.1X, and 149 for
	// G.2X.
	numberOfWorkers?: null | int64 @go(NumberOfWorkers,*int64)

	// The tags to use with this job. You may use tags to limit access to the job.
	// For more information about tags in Glue, see Amazon Web Services Tags in
	// Glue (https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html) in the
	// developer guide.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The job timeout in minutes. This is the maximum time that a job run can consume
	// resources before it is terminated and enters TIMEOUT status. The default
	// is 2,880 minutes (48 hours).
	timeout?: null | int64 @go(Timeout,*int64)

	// The type of predefined worker that is allocated when a job runs. Accepts
	// a value of Standard, G.1X, or G.2X.
	//
	//    * For the Standard worker type, each worker provides 4 vCPU, 16 GB of
	//    memory and a 50GB disk, and 2 executors per worker.
	//
	//    * For the G.1X worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of
	//    memory, 64 GB disk), and provides 1 executor per worker. We recommend
	//    this worker type for memory-intensive jobs.
	//
	//    * For the G.2X worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of
	//    memory, 128 GB disk), and provides 1 executor per worker. We recommend
	//    this worker type for memory-intensive jobs.
	workerType?: null | string @go(WorkerType,*string)

	#CustomJobParameters
}

// JobSpec defines the desired state of Job
#JobSpec: {
	xpv1.#ResourceSpec
	forProvider: #JobParameters @go(ForProvider)
}

// JobObservation defines the observed state of Job
#JobObservation: {
	// The time and date that this job definition was created.
	createdOn?: null | metav1.#Time @go(CreatedOn,*metav1.Time)

	// The last point in time when this job definition was modified.
	lastModifiedOn?: null | metav1.#Time @go(LastModifiedOn,*metav1.Time)

	// The unique name that was provided for this job definition.
	name?: null | string @go(Name,*string)
}

// JobStatus defines the observed state of Job.
#JobStatus: {
	xpv1.#ResourceStatus
	atProvider?: #JobObservation @go(AtProvider)
}

// Job is the Schema for the Jobs API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
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
