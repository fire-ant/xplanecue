// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/elbv2/manualv1alpha1

package manualv1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

#TargetStatusHealthy:     "healthy"
#TargetStatusInitial:     "initial"
#TargetStatusUnhealthy:   "unhealthy"
#TargetStatusUnused:      "unused"
#TargetStatusDraining:    "draining"
#TargetStatusUnavailable: "unavailable"

// TargetParameters defines the desired state of a
// Target
#TargetParameters: {
	// The AWS region the target resides in.
	region: string @go(Region)

	// The Amazon Resource Name (ARN) of the target group.
	//
	// One of TargetGroupARN, TargetGroupARNRef or TargetGroupARNSelector is
	// required.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/elbv2/v1alpha1.TargetGroup
	// +immutable
	targetGroupArn?: null | string @go(TargetGroupARN,*string)

	// TargetGroupARNRef selects a ELBv2 TargetGroupARN with the given name.
	targetGroupArnRef?: null | xpv1.#Reference @go(TargetGroupARNRef,*xpv1.Reference)

	// TargetGroupARNSelector selects a ELBv2 TargetGroupARN with the given
	// labels.
	targetGroupArnSelector?: null | xpv1.#Selector @go(TargetGroupARNSelector,*xpv1.Selector)

	// The LambdaARN that should be used as target.
	//
	// Note: If you want to reference anything else than Lambda you currently
	// have to specify the crossplane.io/external-name annotation directly.
	// If the target type of the target group is instance,
	// specify an instance ID. If the target type is ip, specify an IP address.
	// If the target type is lambda, specify the ARN of the Lambda function. If
	// the target type is alb, specify the ARN of the Application Load Balancer
	// target.
	//
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/lambda/v1beta1.Function
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/lambda/v1beta1.FunctionARN()
	lambdaArn?: null | string @go(LambdaARN,*string)

	// LambdaARNRef references a Lambda Function to set LambdaARN.
	lambdaArnRef?: null | xpv1.#Reference @go(LambdaARNRef,*xpv1.Reference)

	// LambdaARNSelector references a Lambda Function to set LambdaARN.
	lambdaArnSelector?: null | xpv1.#Selector @go(LambdaARNSelector,*xpv1.Selector)

	// The port on which the target is listening. If the target group protocol is
	// GENEVE, the supported port is 6081. If the target type is alb, the targeted
	// Application Load Balancer must have at least one listener whose port matches
	// the target group port. Not used if the target is a Lambda function.
	// +immutable
	port?: null | int32 @go(Port,*int32)

	// An Availability Zone or all. This determines whether the target receives
	// traffic from the load balancer nodes in the specified Availability Zone or
	// from all enabled Availability Zones for the load balancer.
	//
	// This parameter is not supported if the target type of the target group is
	// instance or alb.
	//
	// If the target type is ip and the IP address is in a subnet of the VPC for
	// the target group, the Availability Zone is automatically detected and this
	// parameter is optional. If the IP address is outside the VPC, this parameter
	// is required.
	//
	// With an Application Load Balancer, if the target type is ip and the IP address
	// is outside the VPC for the target group, the only supported value is all.
	//
	// If the target type is lambda, this parameter is optional and the only supported
	// value is all.
	// +immutable
	availabilityZone?: null | string @go(AvailabilityZone,*string)
}

// TargetSpec defines the desired state of a Target
#TargetSpec: {
	xpv1.#ResourceSpec
	forProvider: #TargetParameters @go(ForProvider)
}

// TargetHealth describes the health state of a Target.
#TargetHealth: {
	// A description of the target health that provides additional details. If the
	// state is healthy, a description is not provided.
	description?: null | string @go(Description,*string)

	// The reason code.
	//
	// If the target state is healthy, a reason code is not provided.
	//
	// If the target state is initial, the reason code can be one of the following
	// values:
	//
	//    * Elb.RegistrationInProgress - The target is in the process of being registered
	//    with the load balancer.
	//
	//    * Elb.InitialHealthChecking - The load balancer is still sending the target
	//    the minimum number of health checks required to determine its health status.
	//
	// If the target state is unhealthy, the reason code can be one of the following
	// values:
	//
	//    * Target.ResponseCodeMismatch - The health checks did not return an expected
	//    HTTP code. Applies only to Application Load Balancers and Gateway Load
	//    Balancers.
	//
	//    * Target.Timeout - The health check requests timed out. Applies only to
	//    Application Load Balancers and Gateway Load Balancers.
	//
	//    * Target.FailedHealthChecks - The load balancer received an error while
	//    establishing a connection to the target or the target response was malformed.
	//
	//    * Elb.InternalError - The health checks failed due to an internal error.
	//    Applies only to Application Load Balancers.
	//
	// If the target state is unused, the reason code can be one of the following
	// values:
	//
	//    * Target.NotRegistered - The target is not registered with the target
	//    group.
	//
	//    * Target.NotInUse - The target group is not used by any load balancer
	//    or the target is in an Availability Zone that is not enabled for its load
	//    balancer.
	//
	//    * Target.InvalidState - The target is in the stopped or terminated state.
	//
	//    * Target.IpUnusable - The target IP address is reserved for use by a load
	//    balancer.
	//
	// If the target state is draining, the reason code can be the following value:
	//
	//    * Target.DeregistrationInProgress - The target is in the process of being
	//    deregistered and the deregistration delay period has not expired.
	//
	// If the target state is unavailable, the reason code can be the following
	// value:
	//
	//    * Target.HealthCheckDisabled - Health checks are disabled for the target
	//    group. Applies only to Application Load Balancers.
	//
	//    * Elb.InternalError - Target health is unavailable due to an internal
	//    error. Applies only to Network Load Balancers.
	reason?: null | string @go(Reason,*string)

	// The state of the target.
	state?: null | string @go(State,*string)
}

// TargetObservation defines the observed state of a
// Target
#TargetObservation: {
	// The port to use to connect with the target.
	healthCheckPort?: null | string @go(HealthCheckPort,*string)

	// The health information for the target.
	targetHealth?: null | #TargetHealth @go(TargetHealth,*TargetHealth)
}

// TargetStatus defines the observed state of a
// Target
#TargetStatus: {
	xpv1.#ResourceStatus
	atProvider?: #TargetObservation @go(AtProvider)
}

// Target is the Schema for registering a target to an
// ELBV2 TargetGroup.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="STATE",type="string",JSONPath=".status.atProvider.targetHealth.state"
// +kubebuilder:printcolumn:name="TARGET",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="GROUP",type="string",JSONPath=".spec.forProvider.targetGroupArn"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Target: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #TargetSpec        @go(Spec)
	status?:   #TargetStatus      @go(Status)
}

// TargetList contains a list of Targets
#TargetList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Target] @go(Items,[]Target)
}