// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/lambda/v1alpha1

package v1alpha1

#Architecture: string // #enumArchitecture

#enumArchitecture:
	#Architecture_x86_64 |
	#Architecture_arm64

#Architecture_x86_64: #Architecture & "x86_64"
#Architecture_arm64:  #Architecture & "arm64"

#CodeSigningPolicy: string // #enumCodeSigningPolicy

#enumCodeSigningPolicy:
	#CodeSigningPolicy_Warn |
	#CodeSigningPolicy_Enforce

#CodeSigningPolicy_Warn:    #CodeSigningPolicy & "Warn"
#CodeSigningPolicy_Enforce: #CodeSigningPolicy & "Enforce"

#EndPointType: string // #enumEndPointType

#enumEndPointType:
	#EndPointType_KAFKA_BOOTSTRAP_SERVERS

#EndPointType_KAFKA_BOOTSTRAP_SERVERS: #EndPointType & "KAFKA_BOOTSTRAP_SERVERS"

#EventSourcePosition: string // #enumEventSourcePosition

#enumEventSourcePosition:
	#EventSourcePosition_TRIM_HORIZON |
	#EventSourcePosition_LATEST |
	#EventSourcePosition_AT_TIMESTAMP

#EventSourcePosition_TRIM_HORIZON: #EventSourcePosition & "TRIM_HORIZON"
#EventSourcePosition_LATEST:       #EventSourcePosition & "LATEST"
#EventSourcePosition_AT_TIMESTAMP: #EventSourcePosition & "AT_TIMESTAMP"

#FunctionResponseType: string // #enumFunctionResponseType

#enumFunctionResponseType:
	#FunctionResponseType_ReportBatchItemFailures

#FunctionResponseType_ReportBatchItemFailures: #FunctionResponseType & "ReportBatchItemFailures"

#FunctionURLAuthType: string // #enumFunctionURLAuthType

#enumFunctionURLAuthType:
	#FunctionURLAuthType_NONE |
	#FunctionURLAuthType_AWS_IAM

#FunctionURLAuthType_NONE:    #FunctionURLAuthType & "NONE"
#FunctionURLAuthType_AWS_IAM: #FunctionURLAuthType & "AWS_IAM"

#FunctionVersion: string // #enumFunctionVersion

#enumFunctionVersion:
	#FunctionVersion_ALL

#FunctionVersion_ALL: #FunctionVersion & "ALL"

#InvocationType: string // #enumInvocationType

#enumInvocationType:
	#InvocationType_Event |
	#InvocationType_RequestResponse |
	#InvocationType_DryRun

#InvocationType_Event:           #InvocationType & "Event"
#InvocationType_RequestResponse: #InvocationType & "RequestResponse"
#InvocationType_DryRun:          #InvocationType & "DryRun"

#LastUpdateStatus: string // #enumLastUpdateStatus

#enumLastUpdateStatus:
	#LastUpdateStatus_Successful |
	#LastUpdateStatus_Failed |
	#LastUpdateStatus_InProgress

#LastUpdateStatus_Successful: #LastUpdateStatus & "Successful"
#LastUpdateStatus_Failed:     #LastUpdateStatus & "Failed"
#LastUpdateStatus_InProgress: #LastUpdateStatus & "InProgress"

#LastUpdateStatusReasonCode: string // #enumLastUpdateStatusReasonCode

#enumLastUpdateStatusReasonCode:
	#LastUpdateStatusReasonCode_EniLimitExceeded |
	#LastUpdateStatusReasonCode_InsufficientRolePermissions |
	#LastUpdateStatusReasonCode_InvalidConfiguration |
	#LastUpdateStatusReasonCode_InternalError |
	#LastUpdateStatusReasonCode_SubnetOutOfIPAddresses |
	#LastUpdateStatusReasonCode_InvalidSubnet |
	#LastUpdateStatusReasonCode_InvalidSecurityGroup |
	#LastUpdateStatusReasonCode_ImageDeleted |
	#LastUpdateStatusReasonCode_ImageAccessDenied |
	#LastUpdateStatusReasonCode_InvalidImage

#LastUpdateStatusReasonCode_EniLimitExceeded:            #LastUpdateStatusReasonCode & "EniLimitExceeded"
#LastUpdateStatusReasonCode_InsufficientRolePermissions: #LastUpdateStatusReasonCode & "InsufficientRolePermissions"
#LastUpdateStatusReasonCode_InvalidConfiguration:        #LastUpdateStatusReasonCode & "InvalidConfiguration"
#LastUpdateStatusReasonCode_InternalError:               #LastUpdateStatusReasonCode & "InternalError"
#LastUpdateStatusReasonCode_SubnetOutOfIPAddresses:      #LastUpdateStatusReasonCode & "SubnetOutOfIPAddresses"
#LastUpdateStatusReasonCode_InvalidSubnet:               #LastUpdateStatusReasonCode & "InvalidSubnet"
#LastUpdateStatusReasonCode_InvalidSecurityGroup:        #LastUpdateStatusReasonCode & "InvalidSecurityGroup"
#LastUpdateStatusReasonCode_ImageDeleted:                #LastUpdateStatusReasonCode & "ImageDeleted"
#LastUpdateStatusReasonCode_ImageAccessDenied:           #LastUpdateStatusReasonCode & "ImageAccessDenied"
#LastUpdateStatusReasonCode_InvalidImage:                #LastUpdateStatusReasonCode & "InvalidImage"

#LogType: string // #enumLogType

#enumLogType:
	#LogType_None |
	#LogType_Tail

#LogType_None: #LogType & "None"
#LogType_Tail: #LogType & "Tail"

#PackageType: string // #enumPackageType

#enumPackageType:
	#PackageType_Zip |
	#PackageType_Image

#PackageType_Zip:   #PackageType & "Zip"
#PackageType_Image: #PackageType & "Image"

#ProvisionedConcurrencyStatusEnum: string // #enumProvisionedConcurrencyStatusEnum

#enumProvisionedConcurrencyStatusEnum:
	#ProvisionedConcurrencyStatusEnum_IN_PROGRESS |
	#ProvisionedConcurrencyStatusEnum_READY |
	#ProvisionedConcurrencyStatusEnum_FAILED

#ProvisionedConcurrencyStatusEnum_IN_PROGRESS: #ProvisionedConcurrencyStatusEnum & "IN_PROGRESS"
#ProvisionedConcurrencyStatusEnum_READY:       #ProvisionedConcurrencyStatusEnum & "READY"
#ProvisionedConcurrencyStatusEnum_FAILED:      #ProvisionedConcurrencyStatusEnum & "FAILED"

#Runtime: string // #enumRuntime

#enumRuntime:
	#Runtime_nodejs |
	#Runtime_nodejs4_3 |
	#Runtime_nodejs6_10 |
	#Runtime_nodejs8_10 |
	#Runtime_nodejs10_x |
	#Runtime_nodejs12_x |
	#Runtime_nodejs14_x |
	#Runtime_java8 |
	#Runtime_java8_al2 |
	#Runtime_java11 |
	#Runtime_python2_7 |
	#Runtime_python3_6 |
	#Runtime_python3_7 |
	#Runtime_python3_8 |
	#Runtime_python3_9 |
	#Runtime_dotnetcore1_0 |
	#Runtime_dotnetcore2_0 |
	#Runtime_dotnetcore2_1 |
	#Runtime_dotnetcore3_1 |
	#Runtime_dotnet6 |
	#Runtime_nodejs4_3_edge |
	#Runtime_go1_x |
	#Runtime_ruby2_5 |
	#Runtime_ruby2_7 |
	#Runtime_provided |
	#Runtime_provided_al2

#Runtime_nodejs:         #Runtime & "nodejs"
#Runtime_nodejs4_3:      #Runtime & "nodejs4.3"
#Runtime_nodejs6_10:     #Runtime & "nodejs6.10"
#Runtime_nodejs8_10:     #Runtime & "nodejs8.10"
#Runtime_nodejs10_x:     #Runtime & "nodejs10.x"
#Runtime_nodejs12_x:     #Runtime & "nodejs12.x"
#Runtime_nodejs14_x:     #Runtime & "nodejs14.x"
#Runtime_java8:          #Runtime & "java8"
#Runtime_java8_al2:      #Runtime & "java8.al2"
#Runtime_java11:         #Runtime & "java11"
#Runtime_python2_7:      #Runtime & "python2.7"
#Runtime_python3_6:      #Runtime & "python3.6"
#Runtime_python3_7:      #Runtime & "python3.7"
#Runtime_python3_8:      #Runtime & "python3.8"
#Runtime_python3_9:      #Runtime & "python3.9"
#Runtime_dotnetcore1_0:  #Runtime & "dotnetcore1.0"
#Runtime_dotnetcore2_0:  #Runtime & "dotnetcore2.0"
#Runtime_dotnetcore2_1:  #Runtime & "dotnetcore2.1"
#Runtime_dotnetcore3_1:  #Runtime & "dotnetcore3.1"
#Runtime_dotnet6:        #Runtime & "dotnet6"
#Runtime_nodejs4_3_edge: #Runtime & "nodejs4.3-edge"
#Runtime_go1_x:          #Runtime & "go1.x"
#Runtime_ruby2_5:        #Runtime & "ruby2.5"
#Runtime_ruby2_7:        #Runtime & "ruby2.7"
#Runtime_provided:       #Runtime & "provided"
#Runtime_provided_al2:   #Runtime & "provided.al2"

#SourceAccessType: string // #enumSourceAccessType

#enumSourceAccessType:
	#SourceAccessType_BASIC_AUTH |
	#SourceAccessType_VPC_SUBNET |
	#SourceAccessType_VPC_SECURITY_GROUP |
	#SourceAccessType_SASL_SCRAM_512_AUTH |
	#SourceAccessType_SASL_SCRAM_256_AUTH |
	#SourceAccessType_VIRTUAL_HOST |
	#SourceAccessType_CLIENT_CERTIFICATE_TLS_AUTH |
	#SourceAccessType_SERVER_ROOT_CA_CERTIFICATE

#SourceAccessType_BASIC_AUTH:                  #SourceAccessType & "BASIC_AUTH"
#SourceAccessType_VPC_SUBNET:                  #SourceAccessType & "VPC_SUBNET"
#SourceAccessType_VPC_SECURITY_GROUP:          #SourceAccessType & "VPC_SECURITY_GROUP"
#SourceAccessType_SASL_SCRAM_512_AUTH:         #SourceAccessType & "SASL_SCRAM_512_AUTH"
#SourceAccessType_SASL_SCRAM_256_AUTH:         #SourceAccessType & "SASL_SCRAM_256_AUTH"
#SourceAccessType_VIRTUAL_HOST:                #SourceAccessType & "VIRTUAL_HOST"
#SourceAccessType_CLIENT_CERTIFICATE_TLS_AUTH: #SourceAccessType & "CLIENT_CERTIFICATE_TLS_AUTH"
#SourceAccessType_SERVER_ROOT_CA_CERTIFICATE:  #SourceAccessType & "SERVER_ROOT_CA_CERTIFICATE"

#State: string // #enumState

#enumState:
	#State_Pending |
	#State_Active |
	#State_Inactive |
	#State_Failed

#State_Pending:  #State & "Pending"
#State_Active:   #State & "Active"
#State_Inactive: #State & "Inactive"
#State_Failed:   #State & "Failed"

#StateReasonCode: string // #enumStateReasonCode

#enumStateReasonCode:
	#StateReasonCode_Idle |
	#StateReasonCode_Creating |
	#StateReasonCode_Restoring |
	#StateReasonCode_EniLimitExceeded |
	#StateReasonCode_InsufficientRolePermissions |
	#StateReasonCode_InvalidConfiguration |
	#StateReasonCode_InternalError |
	#StateReasonCode_SubnetOutOfIPAddresses |
	#StateReasonCode_InvalidSubnet |
	#StateReasonCode_InvalidSecurityGroup |
	#StateReasonCode_ImageDeleted |
	#StateReasonCode_ImageAccessDenied |
	#StateReasonCode_InvalidImage

#StateReasonCode_Idle:                        #StateReasonCode & "Idle"
#StateReasonCode_Creating:                    #StateReasonCode & "Creating"
#StateReasonCode_Restoring:                   #StateReasonCode & "Restoring"
#StateReasonCode_EniLimitExceeded:            #StateReasonCode & "EniLimitExceeded"
#StateReasonCode_InsufficientRolePermissions: #StateReasonCode & "InsufficientRolePermissions"
#StateReasonCode_InvalidConfiguration:        #StateReasonCode & "InvalidConfiguration"
#StateReasonCode_InternalError:               #StateReasonCode & "InternalError"
#StateReasonCode_SubnetOutOfIPAddresses:      #StateReasonCode & "SubnetOutOfIPAddresses"
#StateReasonCode_InvalidSubnet:               #StateReasonCode & "InvalidSubnet"
#StateReasonCode_InvalidSecurityGroup:        #StateReasonCode & "InvalidSecurityGroup"
#StateReasonCode_ImageDeleted:                #StateReasonCode & "ImageDeleted"
#StateReasonCode_ImageAccessDenied:           #StateReasonCode & "ImageAccessDenied"
#StateReasonCode_InvalidImage:                #StateReasonCode & "InvalidImage"

#ThrottleReason: string // #enumThrottleReason

#enumThrottleReason:
	#ThrottleReason_ConcurrentInvocationLimitExceeded |
	#ThrottleReason_FunctionInvocationRateLimitExceeded |
	#ThrottleReason_ReservedFunctionConcurrentInvocationLimitExceeded |
	#ThrottleReason_ReservedFunctionInvocationRateLimitExceeded |
	#ThrottleReason_CallerRateLimitExceeded

#ThrottleReason_ConcurrentInvocationLimitExceeded:                 #ThrottleReason & "ConcurrentInvocationLimitExceeded"
#ThrottleReason_FunctionInvocationRateLimitExceeded:               #ThrottleReason & "FunctionInvocationRateLimitExceeded"
#ThrottleReason_ReservedFunctionConcurrentInvocationLimitExceeded: #ThrottleReason & "ReservedFunctionConcurrentInvocationLimitExceeded"
#ThrottleReason_ReservedFunctionInvocationRateLimitExceeded:       #ThrottleReason & "ReservedFunctionInvocationRateLimitExceeded"
#ThrottleReason_CallerRateLimitExceeded:                           #ThrottleReason & "CallerRateLimitExceeded"

#TracingMode: string // #enumTracingMode

#enumTracingMode:
	#TracingMode_Active |
	#TracingMode_PassThrough

#TracingMode_Active:      #TracingMode & "Active"
#TracingMode_PassThrough: #TracingMode & "PassThrough"
