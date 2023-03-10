// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/iot/v1alpha1

package v1alpha1

#AWSJobAbortCriteriaAbortAction: string // #enumAWSJobAbortCriteriaAbortAction

#enumAWSJobAbortCriteriaAbortAction:
	#AWSJobAbortCriteriaAbortAction_CANCEL

#AWSJobAbortCriteriaAbortAction_CANCEL: #AWSJobAbortCriteriaAbortAction & "CANCEL"

#AWSJobAbortCriteriaFailureType: string // #enumAWSJobAbortCriteriaFailureType

#enumAWSJobAbortCriteriaFailureType:
	#AWSJobAbortCriteriaFailureType_FAILED |
	#AWSJobAbortCriteriaFailureType_REJECTED |
	#AWSJobAbortCriteriaFailureType_TIMED_OUT |
	#AWSJobAbortCriteriaFailureType_ALL

#AWSJobAbortCriteriaFailureType_FAILED:    #AWSJobAbortCriteriaFailureType & "FAILED"
#AWSJobAbortCriteriaFailureType_REJECTED:  #AWSJobAbortCriteriaFailureType & "REJECTED"
#AWSJobAbortCriteriaFailureType_TIMED_OUT: #AWSJobAbortCriteriaFailureType & "TIMED_OUT"
#AWSJobAbortCriteriaFailureType_ALL:       #AWSJobAbortCriteriaFailureType & "ALL"

#AbortAction: string // #enumAbortAction

#enumAbortAction:
	#AbortAction_CANCEL

#AbortAction_CANCEL: #AbortAction & "CANCEL"

#ActionType: string // #enumActionType

#enumActionType:
	#ActionType_PUBLISH |
	#ActionType_SUBSCRIBE |
	#ActionType_RECEIVE |
	#ActionType_CONNECT

#ActionType_PUBLISH:   #ActionType & "PUBLISH"
#ActionType_SUBSCRIBE: #ActionType & "SUBSCRIBE"
#ActionType_RECEIVE:   #ActionType & "RECEIVE"
#ActionType_CONNECT:   #ActionType & "CONNECT"

#AggregationTypeName: string // #enumAggregationTypeName

#enumAggregationTypeName:
	#AggregationTypeName_Statistics |
	#AggregationTypeName_Percentiles |
	#AggregationTypeName_Cardinality

#AggregationTypeName_Statistics:  #AggregationTypeName & "Statistics"
#AggregationTypeName_Percentiles: #AggregationTypeName & "Percentiles"
#AggregationTypeName_Cardinality: #AggregationTypeName & "Cardinality"

#AlertTargetType: string // #enumAlertTargetType

#enumAlertTargetType:
	#AlertTargetType_SNS

#AlertTargetType_SNS: #AlertTargetType & "SNS"

#AuditCheckRunStatus: string // #enumAuditCheckRunStatus

#enumAuditCheckRunStatus:
	#AuditCheckRunStatus_IN_PROGRESS |
	#AuditCheckRunStatus_WAITING_FOR_DATA_COLLECTION |
	#AuditCheckRunStatus_CANCELED |
	#AuditCheckRunStatus_COMPLETED_COMPLIANT |
	#AuditCheckRunStatus_COMPLETED_NON_COMPLIANT |
	#AuditCheckRunStatus_FAILED

#AuditCheckRunStatus_IN_PROGRESS:                 #AuditCheckRunStatus & "IN_PROGRESS"
#AuditCheckRunStatus_WAITING_FOR_DATA_COLLECTION: #AuditCheckRunStatus & "WAITING_FOR_DATA_COLLECTION"
#AuditCheckRunStatus_CANCELED:                    #AuditCheckRunStatus & "CANCELED"
#AuditCheckRunStatus_COMPLETED_COMPLIANT:         #AuditCheckRunStatus & "COMPLETED_COMPLIANT"
#AuditCheckRunStatus_COMPLETED_NON_COMPLIANT:     #AuditCheckRunStatus & "COMPLETED_NON_COMPLIANT"
#AuditCheckRunStatus_FAILED:                      #AuditCheckRunStatus & "FAILED"

#AuditFindingSeverity: string // #enumAuditFindingSeverity

#enumAuditFindingSeverity:
	#AuditFindingSeverity_CRITICAL |
	#AuditFindingSeverity_HIGH |
	#AuditFindingSeverity_MEDIUM |
	#AuditFindingSeverity_LOW

#AuditFindingSeverity_CRITICAL: #AuditFindingSeverity & "CRITICAL"
#AuditFindingSeverity_HIGH:     #AuditFindingSeverity & "HIGH"
#AuditFindingSeverity_MEDIUM:   #AuditFindingSeverity & "MEDIUM"
#AuditFindingSeverity_LOW:      #AuditFindingSeverity & "LOW"

#AuditFrequency: string // #enumAuditFrequency

#enumAuditFrequency:
	#AuditFrequency_DAILY |
	#AuditFrequency_WEEKLY |
	#AuditFrequency_BIWEEKLY |
	#AuditFrequency_MONTHLY

#AuditFrequency_DAILY:    #AuditFrequency & "DAILY"
#AuditFrequency_WEEKLY:   #AuditFrequency & "WEEKLY"
#AuditFrequency_BIWEEKLY: #AuditFrequency & "BIWEEKLY"
#AuditFrequency_MONTHLY:  #AuditFrequency & "MONTHLY"

#AuditMitigationActionsExecutionStatus: string // #enumAuditMitigationActionsExecutionStatus

#enumAuditMitigationActionsExecutionStatus:
	#AuditMitigationActionsExecutionStatus_IN_PROGRESS |
	#AuditMitigationActionsExecutionStatus_COMPLETED |
	#AuditMitigationActionsExecutionStatus_FAILED |
	#AuditMitigationActionsExecutionStatus_CANCELED |
	#AuditMitigationActionsExecutionStatus_SKIPPED |
	#AuditMitigationActionsExecutionStatus_PENDING

#AuditMitigationActionsExecutionStatus_IN_PROGRESS: #AuditMitigationActionsExecutionStatus & "IN_PROGRESS"
#AuditMitigationActionsExecutionStatus_COMPLETED:   #AuditMitigationActionsExecutionStatus & "COMPLETED"
#AuditMitigationActionsExecutionStatus_FAILED:      #AuditMitigationActionsExecutionStatus & "FAILED"
#AuditMitigationActionsExecutionStatus_CANCELED:    #AuditMitigationActionsExecutionStatus & "CANCELED"
#AuditMitigationActionsExecutionStatus_SKIPPED:     #AuditMitigationActionsExecutionStatus & "SKIPPED"
#AuditMitigationActionsExecutionStatus_PENDING:     #AuditMitigationActionsExecutionStatus & "PENDING"

#AuditMitigationActionsTaskStatus: string // #enumAuditMitigationActionsTaskStatus

#enumAuditMitigationActionsTaskStatus:
	#AuditMitigationActionsTaskStatus_IN_PROGRESS |
	#AuditMitigationActionsTaskStatus_COMPLETED |
	#AuditMitigationActionsTaskStatus_FAILED |
	#AuditMitigationActionsTaskStatus_CANCELED

#AuditMitigationActionsTaskStatus_IN_PROGRESS: #AuditMitigationActionsTaskStatus & "IN_PROGRESS"
#AuditMitigationActionsTaskStatus_COMPLETED:   #AuditMitigationActionsTaskStatus & "COMPLETED"
#AuditMitigationActionsTaskStatus_FAILED:      #AuditMitigationActionsTaskStatus & "FAILED"
#AuditMitigationActionsTaskStatus_CANCELED:    #AuditMitigationActionsTaskStatus & "CANCELED"

#AuditNotificationType: string // #enumAuditNotificationType

#enumAuditNotificationType:
	#AuditNotificationType_SNS

#AuditNotificationType_SNS: #AuditNotificationType & "SNS"

#AuditTaskStatus: string // #enumAuditTaskStatus

#enumAuditTaskStatus:
	#AuditTaskStatus_IN_PROGRESS |
	#AuditTaskStatus_COMPLETED |
	#AuditTaskStatus_FAILED |
	#AuditTaskStatus_CANCELED

#AuditTaskStatus_IN_PROGRESS: #AuditTaskStatus & "IN_PROGRESS"
#AuditTaskStatus_COMPLETED:   #AuditTaskStatus & "COMPLETED"
#AuditTaskStatus_FAILED:      #AuditTaskStatus & "FAILED"
#AuditTaskStatus_CANCELED:    #AuditTaskStatus & "CANCELED"

#AuditTaskType: string // #enumAuditTaskType

#enumAuditTaskType:
	#AuditTaskType_ON_DEMAND_AUDIT_TASK |
	#AuditTaskType_SCHEDULED_AUDIT_TASK

#AuditTaskType_ON_DEMAND_AUDIT_TASK: #AuditTaskType & "ON_DEMAND_AUDIT_TASK"
#AuditTaskType_SCHEDULED_AUDIT_TASK: #AuditTaskType & "SCHEDULED_AUDIT_TASK"

#AuthDecision: string // #enumAuthDecision

#enumAuthDecision:
	#AuthDecision_ALLOWED |
	#AuthDecision_EXPLICIT_DENY |
	#AuthDecision_IMPLICIT_DENY

#AuthDecision_ALLOWED:       #AuthDecision & "ALLOWED"
#AuthDecision_EXPLICIT_DENY: #AuthDecision & "EXPLICIT_DENY"
#AuthDecision_IMPLICIT_DENY: #AuthDecision & "IMPLICIT_DENY"

#AuthorizerStatus: string // #enumAuthorizerStatus

#enumAuthorizerStatus:
	#AuthorizerStatus_ACTIVE |
	#AuthorizerStatus_INACTIVE

#AuthorizerStatus_ACTIVE:   #AuthorizerStatus & "ACTIVE"
#AuthorizerStatus_INACTIVE: #AuthorizerStatus & "INACTIVE"

#AutoRegistrationStatus: string // #enumAutoRegistrationStatus

#enumAutoRegistrationStatus:
	#AutoRegistrationStatus_ENABLE |
	#AutoRegistrationStatus_DISABLE

#AutoRegistrationStatus_ENABLE:  #AutoRegistrationStatus & "ENABLE"
#AutoRegistrationStatus_DISABLE: #AutoRegistrationStatus & "DISABLE"

#BehaviorCriteriaType: string // #enumBehaviorCriteriaType

#enumBehaviorCriteriaType:
	#BehaviorCriteriaType_STATIC |
	#BehaviorCriteriaType_STATISTICAL |
	#BehaviorCriteriaType_MACHINE_LEARNING

#BehaviorCriteriaType_STATIC:           #BehaviorCriteriaType & "STATIC"
#BehaviorCriteriaType_STATISTICAL:      #BehaviorCriteriaType & "STATISTICAL"
#BehaviorCriteriaType_MACHINE_LEARNING: #BehaviorCriteriaType & "MACHINE_LEARNING"

#CACertificateStatus: string // #enumCACertificateStatus

#enumCACertificateStatus:
	#CACertificateStatus_ACTIVE |
	#CACertificateStatus_INACTIVE

#CACertificateStatus_ACTIVE:   #CACertificateStatus & "ACTIVE"
#CACertificateStatus_INACTIVE: #CACertificateStatus & "INACTIVE"

#CACertificateUpdateAction: string // #enumCACertificateUpdateAction

#enumCACertificateUpdateAction:
	#CACertificateUpdateAction_DEACTIVATE

#CACertificateUpdateAction_DEACTIVATE: #CACertificateUpdateAction & "DEACTIVATE"

#CannedAccessControlList: string // #enumCannedAccessControlList

#enumCannedAccessControlList:
	#CannedAccessControlList_private |
	#CannedAccessControlList_public_read |
	#CannedAccessControlList_public_read_write |
	#CannedAccessControlList_aws_exec_read |
	#CannedAccessControlList_authenticated_read |
	#CannedAccessControlList_bucket_owner_read |
	#CannedAccessControlList_bucket_owner_full_control |
	#CannedAccessControlList_log_delivery_write

#CannedAccessControlList_private:                   #CannedAccessControlList & "private"
#CannedAccessControlList_public_read:               #CannedAccessControlList & "public-read"
#CannedAccessControlList_public_read_write:         #CannedAccessControlList & "public-read-write"
#CannedAccessControlList_aws_exec_read:             #CannedAccessControlList & "aws-exec-read"
#CannedAccessControlList_authenticated_read:        #CannedAccessControlList & "authenticated-read"
#CannedAccessControlList_bucket_owner_read:         #CannedAccessControlList & "bucket-owner-read"
#CannedAccessControlList_bucket_owner_full_control: #CannedAccessControlList & "bucket-owner-full-control"
#CannedAccessControlList_log_delivery_write:        #CannedAccessControlList & "log-delivery-write"

#CertificateMode: string // #enumCertificateMode

#enumCertificateMode:
	#CertificateMode_DEFAULT |
	#CertificateMode_SNI_ONLY

#CertificateMode_DEFAULT:  #CertificateMode & "DEFAULT"
#CertificateMode_SNI_ONLY: #CertificateMode & "SNI_ONLY"

#CertificateStatus: string // #enumCertificateStatus

#enumCertificateStatus:
	#CertificateStatus_ACTIVE |
	#CertificateStatus_INACTIVE |
	#CertificateStatus_REVOKED |
	#CertificateStatus_PENDING_TRANSFER |
	#CertificateStatus_REGISTER_INACTIVE |
	#CertificateStatus_PENDING_ACTIVATION

#CertificateStatus_ACTIVE:             #CertificateStatus & "ACTIVE"
#CertificateStatus_INACTIVE:           #CertificateStatus & "INACTIVE"
#CertificateStatus_REVOKED:            #CertificateStatus & "REVOKED"
#CertificateStatus_PENDING_TRANSFER:   #CertificateStatus & "PENDING_TRANSFER"
#CertificateStatus_REGISTER_INACTIVE:  #CertificateStatus & "REGISTER_INACTIVE"
#CertificateStatus_PENDING_ACTIVATION: #CertificateStatus & "PENDING_ACTIVATION"

#ComparisonOperator: string // #enumComparisonOperator

#enumComparisonOperator:
	#ComparisonOperator_less_than |
	#ComparisonOperator_less_than_equals |
	#ComparisonOperator_greater_than |
	#ComparisonOperator_greater_than_equals |
	#ComparisonOperator_in_cidr_set |
	#ComparisonOperator_not_in_cidr_set |
	#ComparisonOperator_in_port_set |
	#ComparisonOperator_not_in_port_set |
	#ComparisonOperator_in_set |
	#ComparisonOperator_not_in_set

#ComparisonOperator_less_than:           #ComparisonOperator & "less-than"
#ComparisonOperator_less_than_equals:    #ComparisonOperator & "less-than-equals"
#ComparisonOperator_greater_than:        #ComparisonOperator & "greater-than"
#ComparisonOperator_greater_than_equals: #ComparisonOperator & "greater-than-equals"
#ComparisonOperator_in_cidr_set:         #ComparisonOperator & "in-cidr-set"
#ComparisonOperator_not_in_cidr_set:     #ComparisonOperator & "not-in-cidr-set"
#ComparisonOperator_in_port_set:         #ComparisonOperator & "in-port-set"
#ComparisonOperator_not_in_port_set:     #ComparisonOperator & "not-in-port-set"
#ComparisonOperator_in_set:              #ComparisonOperator & "in-set"
#ComparisonOperator_not_in_set:          #ComparisonOperator & "not-in-set"

#ConfidenceLevel: string // #enumConfidenceLevel

#enumConfidenceLevel:
	#ConfidenceLevel_LOW |
	#ConfidenceLevel_MEDIUM |
	#ConfidenceLevel_HIGH

#ConfidenceLevel_LOW:    #ConfidenceLevel & "LOW"
#ConfidenceLevel_MEDIUM: #ConfidenceLevel & "MEDIUM"
#ConfidenceLevel_HIGH:   #ConfidenceLevel & "HIGH"

#CustomMetricType: string // #enumCustomMetricType

#enumCustomMetricType:
	#CustomMetricType_string_list |
	#CustomMetricType_ip_address_list |
	#CustomMetricType_number_list |
	#CustomMetricType_number

#CustomMetricType_string_list:     #CustomMetricType & "string-list"
#CustomMetricType_ip_address_list: #CustomMetricType & "ip-address-list"
#CustomMetricType_number_list:     #CustomMetricType & "number-list"
#CustomMetricType_number:          #CustomMetricType & "number"

#DayOfWeek: string // #enumDayOfWeek

#enumDayOfWeek:
	#DayOfWeek_SUN |
	#DayOfWeek_MON |
	#DayOfWeek_TUE |
	#DayOfWeek_WED |
	#DayOfWeek_THU |
	#DayOfWeek_FRI |
	#DayOfWeek_SAT

#DayOfWeek_SUN: #DayOfWeek & "SUN"
#DayOfWeek_MON: #DayOfWeek & "MON"
#DayOfWeek_TUE: #DayOfWeek & "TUE"
#DayOfWeek_WED: #DayOfWeek & "WED"
#DayOfWeek_THU: #DayOfWeek & "THU"
#DayOfWeek_FRI: #DayOfWeek & "FRI"
#DayOfWeek_SAT: #DayOfWeek & "SAT"

#DetectMitigationActionExecutionStatus: string // #enumDetectMitigationActionExecutionStatus

#enumDetectMitigationActionExecutionStatus:
	#DetectMitigationActionExecutionStatus_IN_PROGRESS |
	#DetectMitigationActionExecutionStatus_SUCCESSFUL |
	#DetectMitigationActionExecutionStatus_FAILED |
	#DetectMitigationActionExecutionStatus_SKIPPED

#DetectMitigationActionExecutionStatus_IN_PROGRESS: #DetectMitigationActionExecutionStatus & "IN_PROGRESS"
#DetectMitigationActionExecutionStatus_SUCCESSFUL:  #DetectMitigationActionExecutionStatus & "SUCCESSFUL"
#DetectMitigationActionExecutionStatus_FAILED:      #DetectMitigationActionExecutionStatus & "FAILED"
#DetectMitigationActionExecutionStatus_SKIPPED:     #DetectMitigationActionExecutionStatus & "SKIPPED"

#DetectMitigationActionsTaskStatus: string // #enumDetectMitigationActionsTaskStatus

#enumDetectMitigationActionsTaskStatus:
	#DetectMitigationActionsTaskStatus_IN_PROGRESS |
	#DetectMitigationActionsTaskStatus_SUCCESSFUL |
	#DetectMitigationActionsTaskStatus_FAILED |
	#DetectMitigationActionsTaskStatus_CANCELED

#DetectMitigationActionsTaskStatus_IN_PROGRESS: #DetectMitigationActionsTaskStatus & "IN_PROGRESS"
#DetectMitigationActionsTaskStatus_SUCCESSFUL:  #DetectMitigationActionsTaskStatus & "SUCCESSFUL"
#DetectMitigationActionsTaskStatus_FAILED:      #DetectMitigationActionsTaskStatus & "FAILED"
#DetectMitigationActionsTaskStatus_CANCELED:    #DetectMitigationActionsTaskStatus & "CANCELED"

#DeviceCertificateUpdateAction: string // #enumDeviceCertificateUpdateAction

#enumDeviceCertificateUpdateAction:
	#DeviceCertificateUpdateAction_DEACTIVATE

#DeviceCertificateUpdateAction_DEACTIVATE: #DeviceCertificateUpdateAction & "DEACTIVATE"

#DeviceDefenderIndexingMode: string // #enumDeviceDefenderIndexingMode

#enumDeviceDefenderIndexingMode:
	#DeviceDefenderIndexingMode_OFF |
	#DeviceDefenderIndexingMode_VIOLATIONS

#DeviceDefenderIndexingMode_OFF:        #DeviceDefenderIndexingMode & "OFF"
#DeviceDefenderIndexingMode_VIOLATIONS: #DeviceDefenderIndexingMode & "VIOLATIONS"

#DimensionType: string // #enumDimensionType

#enumDimensionType:
	#DimensionType_TOPIC_FILTER

#DimensionType_TOPIC_FILTER: #DimensionType & "TOPIC_FILTER"

#DimensionValueOperator: string // #enumDimensionValueOperator

#enumDimensionValueOperator:
	#DimensionValueOperator_IN |
	#DimensionValueOperator_NOT_IN

#DimensionValueOperator_IN:     #DimensionValueOperator & "IN"
#DimensionValueOperator_NOT_IN: #DimensionValueOperator & "NOT_IN"

#DomainConfigurationStatus: string // #enumDomainConfigurationStatus

#enumDomainConfigurationStatus:
	#DomainConfigurationStatus_ENABLED |
	#DomainConfigurationStatus_DISABLED

#DomainConfigurationStatus_ENABLED:  #DomainConfigurationStatus & "ENABLED"
#DomainConfigurationStatus_DISABLED: #DomainConfigurationStatus & "DISABLED"

#DomainType: string // #enumDomainType

#enumDomainType:
	#DomainType_ENDPOINT |
	#DomainType_AWS_MANAGED |
	#DomainType_CUSTOMER_MANAGED

#DomainType_ENDPOINT:         #DomainType & "ENDPOINT"
#DomainType_AWS_MANAGED:      #DomainType & "AWS_MANAGED"
#DomainType_CUSTOMER_MANAGED: #DomainType & "CUSTOMER_MANAGED"

#DynamicGroupStatus: string // #enumDynamicGroupStatus

#enumDynamicGroupStatus:
	#DynamicGroupStatus_ACTIVE |
	#DynamicGroupStatus_BUILDING |
	#DynamicGroupStatus_REBUILDING

#DynamicGroupStatus_ACTIVE:     #DynamicGroupStatus & "ACTIVE"
#DynamicGroupStatus_BUILDING:   #DynamicGroupStatus & "BUILDING"
#DynamicGroupStatus_REBUILDING: #DynamicGroupStatus & "REBUILDING"

#DynamoKeyType: string // #enumDynamoKeyType

#enumDynamoKeyType:
	#DynamoKeyType_STRING |
	#DynamoKeyType_NUMBER

#DynamoKeyType_STRING: #DynamoKeyType & "STRING"
#DynamoKeyType_NUMBER: #DynamoKeyType & "NUMBER"

#EventType: string // #enumEventType

#enumEventType:
	#EventType_THING |
	#EventType_THING_GROUP |
	#EventType_THING_TYPE |
	#EventType_THING_GROUP_MEMBERSHIP |
	#EventType_THING_GROUP_HIERARCHY |
	#EventType_THING_TYPE_ASSOCIATION |
	#EventType_JOB |
	#EventType_JOB_EXECUTION |
	#EventType_POLICY |
	#EventType_CERTIFICATE |
	#EventType_CA_CERTIFICATE

#EventType_THING:                  #EventType & "THING"
#EventType_THING_GROUP:            #EventType & "THING_GROUP"
#EventType_THING_TYPE:             #EventType & "THING_TYPE"
#EventType_THING_GROUP_MEMBERSHIP: #EventType & "THING_GROUP_MEMBERSHIP"
#EventType_THING_GROUP_HIERARCHY:  #EventType & "THING_GROUP_HIERARCHY"
#EventType_THING_TYPE_ASSOCIATION: #EventType & "THING_TYPE_ASSOCIATION"
#EventType_JOB:                    #EventType & "JOB"
#EventType_JOB_EXECUTION:          #EventType & "JOB_EXECUTION"
#EventType_POLICY:                 #EventType & "POLICY"
#EventType_CERTIFICATE:            #EventType & "CERTIFICATE"
#EventType_CA_CERTIFICATE:         #EventType & "CA_CERTIFICATE"

#FieldType: string // #enumFieldType

#enumFieldType:
	#FieldType_Number |
	#FieldType_String |
	#FieldType_Boolean

#FieldType_Number:  #FieldType & "Number"
#FieldType_String:  #FieldType & "String"
#FieldType_Boolean: #FieldType & "Boolean"

#FleetMetricUnit: string // #enumFleetMetricUnit

#enumFleetMetricUnit:
	#FleetMetricUnit_Seconds |
	#FleetMetricUnit_Microseconds |
	#FleetMetricUnit_Milliseconds |
	#FleetMetricUnit_Bytes |
	#FleetMetricUnit_Kilobytes |
	#FleetMetricUnit_Megabytes |
	#FleetMetricUnit_Gigabytes |
	#FleetMetricUnit_Terabytes |
	#FleetMetricUnit_Bits |
	#FleetMetricUnit_Kilobits |
	#FleetMetricUnit_Megabits |
	#FleetMetricUnit_Gigabits |
	#FleetMetricUnit_Terabits |
	#FleetMetricUnit_Percent |
	#FleetMetricUnit_Count |
	#FleetMetricUnit_Bytes_Second |
	#FleetMetricUnit_Kilobytes_Second |
	#FleetMetricUnit_Megabytes_Second |
	#FleetMetricUnit_Gigabytes_Second |
	#FleetMetricUnit_Terabytes_Second |
	#FleetMetricUnit_Bits_Second |
	#FleetMetricUnit_Kilobits_Second |
	#FleetMetricUnit_Megabits_Second |
	#FleetMetricUnit_Gigabits_Second |
	#FleetMetricUnit_Terabits_Second |
	#FleetMetricUnit_Count_Second |
	#FleetMetricUnit_None

#FleetMetricUnit_Seconds:          #FleetMetricUnit & "Seconds"
#FleetMetricUnit_Microseconds:     #FleetMetricUnit & "Microseconds"
#FleetMetricUnit_Milliseconds:     #FleetMetricUnit & "Milliseconds"
#FleetMetricUnit_Bytes:            #FleetMetricUnit & "Bytes"
#FleetMetricUnit_Kilobytes:        #FleetMetricUnit & "Kilobytes"
#FleetMetricUnit_Megabytes:        #FleetMetricUnit & "Megabytes"
#FleetMetricUnit_Gigabytes:        #FleetMetricUnit & "Gigabytes"
#FleetMetricUnit_Terabytes:        #FleetMetricUnit & "Terabytes"
#FleetMetricUnit_Bits:             #FleetMetricUnit & "Bits"
#FleetMetricUnit_Kilobits:         #FleetMetricUnit & "Kilobits"
#FleetMetricUnit_Megabits:         #FleetMetricUnit & "Megabits"
#FleetMetricUnit_Gigabits:         #FleetMetricUnit & "Gigabits"
#FleetMetricUnit_Terabits:         #FleetMetricUnit & "Terabits"
#FleetMetricUnit_Percent:          #FleetMetricUnit & "Percent"
#FleetMetricUnit_Count:            #FleetMetricUnit & "Count"
#FleetMetricUnit_Bytes_Second:     #FleetMetricUnit & "Bytes/Second"
#FleetMetricUnit_Kilobytes_Second: #FleetMetricUnit & "Kilobytes/Second"
#FleetMetricUnit_Megabytes_Second: #FleetMetricUnit & "Megabytes/Second"
#FleetMetricUnit_Gigabytes_Second: #FleetMetricUnit & "Gigabytes/Second"
#FleetMetricUnit_Terabytes_Second: #FleetMetricUnit & "Terabytes/Second"
#FleetMetricUnit_Bits_Second:      #FleetMetricUnit & "Bits/Second"
#FleetMetricUnit_Kilobits_Second:  #FleetMetricUnit & "Kilobits/Second"
#FleetMetricUnit_Megabits_Second:  #FleetMetricUnit & "Megabits/Second"
#FleetMetricUnit_Gigabits_Second:  #FleetMetricUnit & "Gigabits/Second"
#FleetMetricUnit_Terabits_Second:  #FleetMetricUnit & "Terabits/Second"
#FleetMetricUnit_Count_Second:     #FleetMetricUnit & "Count/Second"
#FleetMetricUnit_None:             #FleetMetricUnit & "None"

#IndexStatus: string // #enumIndexStatus

#enumIndexStatus:
	#IndexStatus_ACTIVE |
	#IndexStatus_BUILDING |
	#IndexStatus_REBUILDING

#IndexStatus_ACTIVE:     #IndexStatus & "ACTIVE"
#IndexStatus_BUILDING:   #IndexStatus & "BUILDING"
#IndexStatus_REBUILDING: #IndexStatus & "REBUILDING"

#JobExecutionFailureType: string // #enumJobExecutionFailureType

#enumJobExecutionFailureType:
	#JobExecutionFailureType_FAILED |
	#JobExecutionFailureType_REJECTED |
	#JobExecutionFailureType_TIMED_OUT |
	#JobExecutionFailureType_ALL

#JobExecutionFailureType_FAILED:    #JobExecutionFailureType & "FAILED"
#JobExecutionFailureType_REJECTED:  #JobExecutionFailureType & "REJECTED"
#JobExecutionFailureType_TIMED_OUT: #JobExecutionFailureType & "TIMED_OUT"
#JobExecutionFailureType_ALL:       #JobExecutionFailureType & "ALL"

#JobExecutionStatus: string // #enumJobExecutionStatus

#enumJobExecutionStatus:
	#JobExecutionStatus_QUEUED |
	#JobExecutionStatus_IN_PROGRESS |
	#JobExecutionStatus_SUCCEEDED |
	#JobExecutionStatus_FAILED |
	#JobExecutionStatus_TIMED_OUT |
	#JobExecutionStatus_REJECTED |
	#JobExecutionStatus_REMOVED |
	#JobExecutionStatus_CANCELED

#JobExecutionStatus_QUEUED:      #JobExecutionStatus & "QUEUED"
#JobExecutionStatus_IN_PROGRESS: #JobExecutionStatus & "IN_PROGRESS"
#JobExecutionStatus_SUCCEEDED:   #JobExecutionStatus & "SUCCEEDED"
#JobExecutionStatus_FAILED:      #JobExecutionStatus & "FAILED"
#JobExecutionStatus_TIMED_OUT:   #JobExecutionStatus & "TIMED_OUT"
#JobExecutionStatus_REJECTED:    #JobExecutionStatus & "REJECTED"
#JobExecutionStatus_REMOVED:     #JobExecutionStatus & "REMOVED"
#JobExecutionStatus_CANCELED:    #JobExecutionStatus & "CANCELED"

#JobStatus: string // #enumJobStatus

#enumJobStatus:
	#JobStatus_IN_PROGRESS |
	#JobStatus_CANCELED |
	#JobStatus_COMPLETED |
	#JobStatus_DELETION_IN_PROGRESS

#JobStatus_IN_PROGRESS:          #JobStatus & "IN_PROGRESS"
#JobStatus_CANCELED:             #JobStatus & "CANCELED"
#JobStatus_COMPLETED:            #JobStatus & "COMPLETED"
#JobStatus_DELETION_IN_PROGRESS: #JobStatus & "DELETION_IN_PROGRESS"

#LogLevel: string // #enumLogLevel

#enumLogLevel:
	#LogLevel_DEBUG |
	#LogLevel_INFO |
	#LogLevel_ERROR |
	#LogLevel_WARN |
	#LogLevel_DISABLED

#LogLevel_DEBUG:    #LogLevel & "DEBUG"
#LogLevel_INFO:     #LogLevel & "INFO"
#LogLevel_ERROR:    #LogLevel & "ERROR"
#LogLevel_WARN:     #LogLevel & "WARN"
#LogLevel_DISABLED: #LogLevel & "DISABLED"

#LogTargetType: string // #enumLogTargetType

#enumLogTargetType:
	#LogTargetType_DEFAULT |
	#LogTargetType_THING_GROUP |
	#LogTargetType_CLIENT_ID |
	#LogTargetType_SOURCE_IP |
	#LogTargetType_PRINCIPAL_ID

#LogTargetType_DEFAULT:      #LogTargetType & "DEFAULT"
#LogTargetType_THING_GROUP:  #LogTargetType & "THING_GROUP"
#LogTargetType_CLIENT_ID:    #LogTargetType & "CLIENT_ID"
#LogTargetType_SOURCE_IP:    #LogTargetType & "SOURCE_IP"
#LogTargetType_PRINCIPAL_ID: #LogTargetType & "PRINCIPAL_ID"

#MessageFormat: string // #enumMessageFormat

#enumMessageFormat:
	#MessageFormat_RAW |
	#MessageFormat_JSON

#MessageFormat_RAW:  #MessageFormat & "RAW"
#MessageFormat_JSON: #MessageFormat & "JSON"

#MitigationActionType: string // #enumMitigationActionType

#enumMitigationActionType:
	#MitigationActionType_UPDATE_DEVICE_CERTIFICATE |
	#MitigationActionType_UPDATE_CA_CERTIFICATE |
	#MitigationActionType_ADD_THINGS_TO_THING_GROUP |
	#MitigationActionType_REPLACE_DEFAULT_POLICY_VERSION |
	#MitigationActionType_ENABLE_IOT_LOGGING |
	#MitigationActionType_PUBLISH_FINDING_TO_SNS

#MitigationActionType_UPDATE_DEVICE_CERTIFICATE:      #MitigationActionType & "UPDATE_DEVICE_CERTIFICATE"
#MitigationActionType_UPDATE_CA_CERTIFICATE:          #MitigationActionType & "UPDATE_CA_CERTIFICATE"
#MitigationActionType_ADD_THINGS_TO_THING_GROUP:      #MitigationActionType & "ADD_THINGS_TO_THING_GROUP"
#MitigationActionType_REPLACE_DEFAULT_POLICY_VERSION: #MitigationActionType & "REPLACE_DEFAULT_POLICY_VERSION"
#MitigationActionType_ENABLE_IOT_LOGGING:             #MitigationActionType & "ENABLE_IOT_LOGGING"
#MitigationActionType_PUBLISH_FINDING_TO_SNS:         #MitigationActionType & "PUBLISH_FINDING_TO_SNS"

#ModelStatus: string // #enumModelStatus

#enumModelStatus:
	#ModelStatus_PENDING_BUILD |
	#ModelStatus_ACTIVE |
	#ModelStatus_EXPIRED

#ModelStatus_PENDING_BUILD: #ModelStatus & "PENDING_BUILD"
#ModelStatus_ACTIVE:        #ModelStatus & "ACTIVE"
#ModelStatus_EXPIRED:       #ModelStatus & "EXPIRED"

#NamedShadowIndexingMode: string // #enumNamedShadowIndexingMode

#enumNamedShadowIndexingMode:
	#NamedShadowIndexingMode_OFF |
	#NamedShadowIndexingMode_ON

#NamedShadowIndexingMode_OFF: #NamedShadowIndexingMode & "OFF"
#NamedShadowIndexingMode_ON:  #NamedShadowIndexingMode & "ON"

#OTAUpdateStatus: string // #enumOTAUpdateStatus

#enumOTAUpdateStatus:
	#OTAUpdateStatus_CREATE_PENDING |
	#OTAUpdateStatus_CREATE_IN_PROGRESS |
	#OTAUpdateStatus_CREATE_COMPLETE |
	#OTAUpdateStatus_CREATE_FAILED

#OTAUpdateStatus_CREATE_PENDING:     #OTAUpdateStatus & "CREATE_PENDING"
#OTAUpdateStatus_CREATE_IN_PROGRESS: #OTAUpdateStatus & "CREATE_IN_PROGRESS"
#OTAUpdateStatus_CREATE_COMPLETE:    #OTAUpdateStatus & "CREATE_COMPLETE"
#OTAUpdateStatus_CREATE_FAILED:      #OTAUpdateStatus & "CREATE_FAILED"

#PolicyTemplateName: string // #enumPolicyTemplateName

#enumPolicyTemplateName:
	#PolicyTemplateName_BLANK_POLICY

#PolicyTemplateName_BLANK_POLICY: #PolicyTemplateName & "BLANK_POLICY"

#Protocol: string // #enumProtocol

#enumProtocol:
	#Protocol_MQTT |
	#Protocol_HTTP

#Protocol_MQTT: #Protocol & "MQTT"
#Protocol_HTTP: #Protocol & "HTTP"

#ReportType: string // #enumReportType

#enumReportType:
	#ReportType_ERRORS |
	#ReportType_RESULTS

#ReportType_ERRORS:  #ReportType & "ERRORS"
#ReportType_RESULTS: #ReportType & "RESULTS"

#ResourceType: string // #enumResourceType

#enumResourceType:
	#ResourceType_DEVICE_CERTIFICATE |
	#ResourceType_CA_CERTIFICATE |
	#ResourceType_IOT_POLICY |
	#ResourceType_COGNITO_IDENTITY_POOL |
	#ResourceType_CLIENT_ID |
	#ResourceType_ACCOUNT_SETTINGS |
	#ResourceType_ROLE_ALIAS |
	#ResourceType_IAM_ROLE

#ResourceType_DEVICE_CERTIFICATE:    #ResourceType & "DEVICE_CERTIFICATE"
#ResourceType_CA_CERTIFICATE:        #ResourceType & "CA_CERTIFICATE"
#ResourceType_IOT_POLICY:            #ResourceType & "IOT_POLICY"
#ResourceType_COGNITO_IDENTITY_POOL: #ResourceType & "COGNITO_IDENTITY_POOL"
#ResourceType_CLIENT_ID:             #ResourceType & "CLIENT_ID"
#ResourceType_ACCOUNT_SETTINGS:      #ResourceType & "ACCOUNT_SETTINGS"
#ResourceType_ROLE_ALIAS:            #ResourceType & "ROLE_ALIAS"
#ResourceType_IAM_ROLE:              #ResourceType & "IAM_ROLE"

#RetryableFailureType: string // #enumRetryableFailureType

#enumRetryableFailureType:
	#RetryableFailureType_FAILED |
	#RetryableFailureType_TIMED_OUT |
	#RetryableFailureType_ALL

#RetryableFailureType_FAILED:    #RetryableFailureType & "FAILED"
#RetryableFailureType_TIMED_OUT: #RetryableFailureType & "TIMED_OUT"
#RetryableFailureType_ALL:       #RetryableFailureType & "ALL"

#ServerCertificateStatus: string // #enumServerCertificateStatus

#enumServerCertificateStatus:
	#ServerCertificateStatus_INVALID |
	#ServerCertificateStatus_VALID

#ServerCertificateStatus_INVALID: #ServerCertificateStatus & "INVALID"
#ServerCertificateStatus_VALID:   #ServerCertificateStatus & "VALID"

#ServiceType: string // #enumServiceType

#enumServiceType:
	#ServiceType_DATA |
	#ServiceType_CREDENTIAL_PROVIDER |
	#ServiceType_JOBS

#ServiceType_DATA:                #ServiceType & "DATA"
#ServiceType_CREDENTIAL_PROVIDER: #ServiceType & "CREDENTIAL_PROVIDER"
#ServiceType_JOBS:                #ServiceType & "JOBS"

#Status: string // #enumStatus

#enumStatus:
	#Status_InProgress |
	#Status_Completed |
	#Status_Failed |
	#Status_Cancelled |
	#Status_Cancelling

#Status_InProgress: #Status & "InProgress"
#Status_Completed:  #Status & "Completed"
#Status_Failed:     #Status & "Failed"
#Status_Cancelled:  #Status & "Cancelled"
#Status_Cancelling: #Status & "Cancelling"

#TargetSelection: string // #enumTargetSelection

#enumTargetSelection:
	#TargetSelection_CONTINUOUS |
	#TargetSelection_SNAPSHOT

#TargetSelection_CONTINUOUS: #TargetSelection & "CONTINUOUS"
#TargetSelection_SNAPSHOT:   #TargetSelection & "SNAPSHOT"

#ThingConnectivityIndexingMode: string // #enumThingConnectivityIndexingMode

#enumThingConnectivityIndexingMode:
	#ThingConnectivityIndexingMode_OFF |
	#ThingConnectivityIndexingMode_STATUS

#ThingConnectivityIndexingMode_OFF:    #ThingConnectivityIndexingMode & "OFF"
#ThingConnectivityIndexingMode_STATUS: #ThingConnectivityIndexingMode & "STATUS"

#ThingGroupIndexingMode: string // #enumThingGroupIndexingMode

#enumThingGroupIndexingMode:
	#ThingGroupIndexingMode_OFF |
	#ThingGroupIndexingMode_ON

#ThingGroupIndexingMode_OFF: #ThingGroupIndexingMode & "OFF"
#ThingGroupIndexingMode_ON:  #ThingGroupIndexingMode & "ON"

#ThingIndexingMode: string // #enumThingIndexingMode

#enumThingIndexingMode:
	#ThingIndexingMode_OFF |
	#ThingIndexingMode_REGISTRY |
	#ThingIndexingMode_REGISTRY_AND_SHADOW

#ThingIndexingMode_OFF:                 #ThingIndexingMode & "OFF"
#ThingIndexingMode_REGISTRY:            #ThingIndexingMode & "REGISTRY"
#ThingIndexingMode_REGISTRY_AND_SHADOW: #ThingIndexingMode & "REGISTRY_AND_SHADOW"

#TopicRuleDestinationStatus: string // #enumTopicRuleDestinationStatus

#enumTopicRuleDestinationStatus:
	#TopicRuleDestinationStatus_ENABLED |
	#TopicRuleDestinationStatus_IN_PROGRESS |
	#TopicRuleDestinationStatus_DISABLED |
	#TopicRuleDestinationStatus_ERROR |
	#TopicRuleDestinationStatus_DELETING

#TopicRuleDestinationStatus_ENABLED:     #TopicRuleDestinationStatus & "ENABLED"
#TopicRuleDestinationStatus_IN_PROGRESS: #TopicRuleDestinationStatus & "IN_PROGRESS"
#TopicRuleDestinationStatus_DISABLED:    #TopicRuleDestinationStatus & "DISABLED"
#TopicRuleDestinationStatus_ERROR:       #TopicRuleDestinationStatus & "ERROR"
#TopicRuleDestinationStatus_DELETING:    #TopicRuleDestinationStatus & "DELETING"

#VerificationState: string // #enumVerificationState

#enumVerificationState:
	#VerificationState_FALSE_POSITIVE |
	#VerificationState_BENIGN_POSITIVE |
	#VerificationState_TRUE_POSITIVE |
	#VerificationState_UNKNOWN

#VerificationState_FALSE_POSITIVE:  #VerificationState & "FALSE_POSITIVE"
#VerificationState_BENIGN_POSITIVE: #VerificationState & "BENIGN_POSITIVE"
#VerificationState_TRUE_POSITIVE:   #VerificationState & "TRUE_POSITIVE"
#VerificationState_UNKNOWN:         #VerificationState & "UNKNOWN"

#ViolationEventType: string // #enumViolationEventType

#enumViolationEventType:
	#ViolationEventType_in_alarm |
	#ViolationEventType_alarm_cleared |
	#ViolationEventType_alarm_invalidated

#ViolationEventType_in_alarm:          #ViolationEventType & "in-alarm"
#ViolationEventType_alarm_cleared:     #ViolationEventType & "alarm-cleared"
#ViolationEventType_alarm_invalidated: #ViolationEventType & "alarm-invalidated"
