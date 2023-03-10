// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/iam/v1alpha1

package v1alpha1

#AccessAdvisorUsageGranularityType: string // #enumAccessAdvisorUsageGranularityType

#enumAccessAdvisorUsageGranularityType:
	#AccessAdvisorUsageGranularityType_SERVICE_LEVEL |
	#AccessAdvisorUsageGranularityType_ACTION_LEVEL

#AccessAdvisorUsageGranularityType_SERVICE_LEVEL: #AccessAdvisorUsageGranularityType & "SERVICE_LEVEL"
#AccessAdvisorUsageGranularityType_ACTION_LEVEL:  #AccessAdvisorUsageGranularityType & "ACTION_LEVEL"

#AssignmentStatusType: string // #enumAssignmentStatusType

#enumAssignmentStatusType:
	#AssignmentStatusType_Assigned |
	#AssignmentStatusType_Unassigned |
	#AssignmentStatusType_Any

#AssignmentStatusType_Assigned:   #AssignmentStatusType & "Assigned"
#AssignmentStatusType_Unassigned: #AssignmentStatusType & "Unassigned"
#AssignmentStatusType_Any:        #AssignmentStatusType & "Any"

#ContextKeyTypeEnum: string // #enumContextKeyTypeEnum

#enumContextKeyTypeEnum:
	#ContextKeyTypeEnum_string |
	#ContextKeyTypeEnum_stringList |
	#ContextKeyTypeEnum_numeric |
	#ContextKeyTypeEnum_numericList |
	#ContextKeyTypeEnum_boolean |
	#ContextKeyTypeEnum_booleanList |
	#ContextKeyTypeEnum_ip |
	#ContextKeyTypeEnum_ipList |
	#ContextKeyTypeEnum_binary |
	#ContextKeyTypeEnum_binaryList |
	#ContextKeyTypeEnum_date |
	#ContextKeyTypeEnum_dateList

#ContextKeyTypeEnum_string:      #ContextKeyTypeEnum & "string"
#ContextKeyTypeEnum_stringList:  #ContextKeyTypeEnum & "stringList"
#ContextKeyTypeEnum_numeric:     #ContextKeyTypeEnum & "numeric"
#ContextKeyTypeEnum_numericList: #ContextKeyTypeEnum & "numericList"
#ContextKeyTypeEnum_boolean:     #ContextKeyTypeEnum & "boolean"
#ContextKeyTypeEnum_booleanList: #ContextKeyTypeEnum & "booleanList"
#ContextKeyTypeEnum_ip:          #ContextKeyTypeEnum & "ip"
#ContextKeyTypeEnum_ipList:      #ContextKeyTypeEnum & "ipList"
#ContextKeyTypeEnum_binary:      #ContextKeyTypeEnum & "binary"
#ContextKeyTypeEnum_binaryList:  #ContextKeyTypeEnum & "binaryList"
#ContextKeyTypeEnum_date:        #ContextKeyTypeEnum & "date"
#ContextKeyTypeEnum_dateList:    #ContextKeyTypeEnum & "dateList"

#DeletionTaskStatusType: string // #enumDeletionTaskStatusType

#enumDeletionTaskStatusType:
	#DeletionTaskStatusType_SUCCEEDED |
	#DeletionTaskStatusType_IN_PROGRESS |
	#DeletionTaskStatusType_FAILED |
	#DeletionTaskStatusType_NOT_STARTED

#DeletionTaskStatusType_SUCCEEDED:   #DeletionTaskStatusType & "SUCCEEDED"
#DeletionTaskStatusType_IN_PROGRESS: #DeletionTaskStatusType & "IN_PROGRESS"
#DeletionTaskStatusType_FAILED:      #DeletionTaskStatusType & "FAILED"
#DeletionTaskStatusType_NOT_STARTED: #DeletionTaskStatusType & "NOT_STARTED"

#EncodingType: string // #enumEncodingType

#enumEncodingType:
	#EncodingType_SSH |
	#EncodingType_PEM

#EncodingType_SSH: #EncodingType & "SSH"
#EncodingType_PEM: #EncodingType & "PEM"

#EntityType: string // #enumEntityType

#enumEntityType:
	#EntityType_User |
	#EntityType_Role |
	#EntityType_Group |
	#EntityType_LocalManagedPolicy |
	#EntityType_AWSManagedPolicy

#EntityType_User:               #EntityType & "User"
#EntityType_Role:               #EntityType & "Role"
#EntityType_Group:              #EntityType & "Group"
#EntityType_LocalManagedPolicy: #EntityType & "LocalManagedPolicy"
#EntityType_AWSManagedPolicy:   #EntityType & "AWSManagedPolicy"

#GlobalEndpointTokenVersion: string // #enumGlobalEndpointTokenVersion

#enumGlobalEndpointTokenVersion:
	#GlobalEndpointTokenVersion_v1Token |
	#GlobalEndpointTokenVersion_v2Token

#GlobalEndpointTokenVersion_v1Token: #GlobalEndpointTokenVersion & "v1Token"
#GlobalEndpointTokenVersion_v2Token: #GlobalEndpointTokenVersion & "v2Token"

#JobStatusType: string // #enumJobStatusType

#enumJobStatusType:
	#JobStatusType_IN_PROGRESS |
	#JobStatusType_COMPLETED |
	#JobStatusType_FAILED

#JobStatusType_IN_PROGRESS: #JobStatusType & "IN_PROGRESS"
#JobStatusType_COMPLETED:   #JobStatusType & "COMPLETED"
#JobStatusType_FAILED:      #JobStatusType & "FAILED"

#PermissionsBoundaryAttachmentType: string // #enumPermissionsBoundaryAttachmentType

#enumPermissionsBoundaryAttachmentType:
	#PermissionsBoundaryAttachmentType_PermissionsBoundaryPolicy

#PermissionsBoundaryAttachmentType_PermissionsBoundaryPolicy: #PermissionsBoundaryAttachmentType & "PermissionsBoundaryPolicy"

#PolicyEvaluationDecisionType: string // #enumPolicyEvaluationDecisionType

#enumPolicyEvaluationDecisionType:
	#PolicyEvaluationDecisionType_allowed |
	#PolicyEvaluationDecisionType_explicitDeny |
	#PolicyEvaluationDecisionType_implicitDeny

#PolicyEvaluationDecisionType_allowed:      #PolicyEvaluationDecisionType & "allowed"
#PolicyEvaluationDecisionType_explicitDeny: #PolicyEvaluationDecisionType & "explicitDeny"
#PolicyEvaluationDecisionType_implicitDeny: #PolicyEvaluationDecisionType & "implicitDeny"

#PolicyOwnerEntityType: string // #enumPolicyOwnerEntityType

#enumPolicyOwnerEntityType:
	#PolicyOwnerEntityType_USER |
	#PolicyOwnerEntityType_ROLE |
	#PolicyOwnerEntityType_GROUP

#PolicyOwnerEntityType_USER:  #PolicyOwnerEntityType & "USER"
#PolicyOwnerEntityType_ROLE:  #PolicyOwnerEntityType & "ROLE"
#PolicyOwnerEntityType_GROUP: #PolicyOwnerEntityType & "GROUP"

#PolicyScopeType: string // #enumPolicyScopeType

#enumPolicyScopeType:
	#PolicyScopeType_All |
	#PolicyScopeType_AWS |
	#PolicyScopeType_Local

#PolicyScopeType_All:   #PolicyScopeType & "All"
#PolicyScopeType_AWS:   #PolicyScopeType & "AWS"
#PolicyScopeType_Local: #PolicyScopeType & "Local"

#PolicySourceType: string // #enumPolicySourceType

#enumPolicySourceType:
	#PolicySourceType_user |
	#PolicySourceType_group |
	#PolicySourceType_role |
	#PolicySourceType_aws_managed |
	#PolicySourceType_user_managed |
	#PolicySourceType_resource |
	#PolicySourceType_none

#PolicySourceType_user:         #PolicySourceType & "user"
#PolicySourceType_group:        #PolicySourceType & "group"
#PolicySourceType_role:         #PolicySourceType & "role"
#PolicySourceType_aws_managed:  #PolicySourceType & "aws-managed"
#PolicySourceType_user_managed: #PolicySourceType & "user-managed"
#PolicySourceType_resource:     #PolicySourceType & "resource"
#PolicySourceType_none:         #PolicySourceType & "none"

#PolicyType: string // #enumPolicyType

#enumPolicyType:
	#PolicyType_INLINE |
	#PolicyType_MANAGED

#PolicyType_INLINE:  #PolicyType & "INLINE"
#PolicyType_MANAGED: #PolicyType & "MANAGED"

#PolicyUsageType: string // #enumPolicyUsageType

#enumPolicyUsageType:
	#PolicyUsageType_PermissionsPolicy |
	#PolicyUsageType_PermissionsBoundary

#PolicyUsageType_PermissionsPolicy:   #PolicyUsageType & "PermissionsPolicy"
#PolicyUsageType_PermissionsBoundary: #PolicyUsageType & "PermissionsBoundary"

#ReportFormatType: string // #enumReportFormatType

#enumReportFormatType:
	#ReportFormatType_text_csv

#ReportFormatType_text_csv: #ReportFormatType & "text/csv"

#ReportStateType: string // #enumReportStateType

#enumReportStateType:
	#ReportStateType_STARTED |
	#ReportStateType_INPROGRESS |
	#ReportStateType_COMPLETE

#ReportStateType_STARTED:    #ReportStateType & "STARTED"
#ReportStateType_INPROGRESS: #ReportStateType & "INPROGRESS"
#ReportStateType_COMPLETE:   #ReportStateType & "COMPLETE"

#SortKeyType: string // #enumSortKeyType

#enumSortKeyType:
	#SortKeyType_SERVICE_NAMESPACE_ASCENDING |
	#SortKeyType_SERVICE_NAMESPACE_DESCENDING |
	#SortKeyType_LAST_AUTHENTICATED_TIME_ASCENDING |
	#SortKeyType_LAST_AUTHENTICATED_TIME_DESCENDING

#SortKeyType_SERVICE_NAMESPACE_ASCENDING:        #SortKeyType & "SERVICE_NAMESPACE_ASCENDING"
#SortKeyType_SERVICE_NAMESPACE_DESCENDING:       #SortKeyType & "SERVICE_NAMESPACE_DESCENDING"
#SortKeyType_LAST_AUTHENTICATED_TIME_ASCENDING:  #SortKeyType & "LAST_AUTHENTICATED_TIME_ASCENDING"
#SortKeyType_LAST_AUTHENTICATED_TIME_DESCENDING: #SortKeyType & "LAST_AUTHENTICATED_TIME_DESCENDING"

#StatusType: string // #enumStatusType

#enumStatusType:
	#StatusType_Active |
	#StatusType_Inactive

#StatusType_Active:   #StatusType & "Active"
#StatusType_Inactive: #StatusType & "Inactive"

#SummaryKeyType: string // #enumSummaryKeyType

#enumSummaryKeyType:
	#SummaryKeyType_Users |
	#SummaryKeyType_UsersQuota |
	#SummaryKeyType_Groups |
	#SummaryKeyType_GroupsQuota |
	#SummaryKeyType_ServerCertificates |
	#SummaryKeyType_ServerCertificatesQuota |
	#SummaryKeyType_UserPolicySizeQuota |
	#SummaryKeyType_GroupPolicySizeQuota |
	#SummaryKeyType_GroupsPerUserQuota |
	#SummaryKeyType_SigningCertificatesPerUserQuota |
	#SummaryKeyType_AccessKeysPerUserQuota |
	#SummaryKeyType_MFADevices |
	#SummaryKeyType_MFADevicesInUse |
	#SummaryKeyType_AccountMFAEnabled |
	#SummaryKeyType_AccountAccessKeysPresent |
	#SummaryKeyType_AccountSigningCertificatesPresent |
	#SummaryKeyType_AttachedPoliciesPerGroupQuota |
	#SummaryKeyType_AttachedPoliciesPerRoleQuota |
	#SummaryKeyType_AttachedPoliciesPerUserQuota |
	#SummaryKeyType_Policies |
	#SummaryKeyType_PoliciesQuota |
	#SummaryKeyType_PolicySizeQuota |
	#SummaryKeyType_PolicyVersionsInUse |
	#SummaryKeyType_PolicyVersionsInUseQuota |
	#SummaryKeyType_VersionsPerPolicyQuota |
	#SummaryKeyType_GlobalEndpointTokenVersion

#SummaryKeyType_Users:                             #SummaryKeyType & "Users"
#SummaryKeyType_UsersQuota:                        #SummaryKeyType & "UsersQuota"
#SummaryKeyType_Groups:                            #SummaryKeyType & "Groups"
#SummaryKeyType_GroupsQuota:                       #SummaryKeyType & "GroupsQuota"
#SummaryKeyType_ServerCertificates:                #SummaryKeyType & "ServerCertificates"
#SummaryKeyType_ServerCertificatesQuota:           #SummaryKeyType & "ServerCertificatesQuota"
#SummaryKeyType_UserPolicySizeQuota:               #SummaryKeyType & "UserPolicySizeQuota"
#SummaryKeyType_GroupPolicySizeQuota:              #SummaryKeyType & "GroupPolicySizeQuota"
#SummaryKeyType_GroupsPerUserQuota:                #SummaryKeyType & "GroupsPerUserQuota"
#SummaryKeyType_SigningCertificatesPerUserQuota:   #SummaryKeyType & "SigningCertificatesPerUserQuota"
#SummaryKeyType_AccessKeysPerUserQuota:            #SummaryKeyType & "AccessKeysPerUserQuota"
#SummaryKeyType_MFADevices:                        #SummaryKeyType & "MFADevices"
#SummaryKeyType_MFADevicesInUse:                   #SummaryKeyType & "MFADevicesInUse"
#SummaryKeyType_AccountMFAEnabled:                 #SummaryKeyType & "AccountMFAEnabled"
#SummaryKeyType_AccountAccessKeysPresent:          #SummaryKeyType & "AccountAccessKeysPresent"
#SummaryKeyType_AccountSigningCertificatesPresent: #SummaryKeyType & "AccountSigningCertificatesPresent"
#SummaryKeyType_AttachedPoliciesPerGroupQuota:     #SummaryKeyType & "AttachedPoliciesPerGroupQuota"
#SummaryKeyType_AttachedPoliciesPerRoleQuota:      #SummaryKeyType & "AttachedPoliciesPerRoleQuota"
#SummaryKeyType_AttachedPoliciesPerUserQuota:      #SummaryKeyType & "AttachedPoliciesPerUserQuota"
#SummaryKeyType_Policies:                          #SummaryKeyType & "Policies"
#SummaryKeyType_PoliciesQuota:                     #SummaryKeyType & "PoliciesQuota"
#SummaryKeyType_PolicySizeQuota:                   #SummaryKeyType & "PolicySizeQuota"
#SummaryKeyType_PolicyVersionsInUse:               #SummaryKeyType & "PolicyVersionsInUse"
#SummaryKeyType_PolicyVersionsInUseQuota:          #SummaryKeyType & "PolicyVersionsInUseQuota"
#SummaryKeyType_VersionsPerPolicyQuota:            #SummaryKeyType & "VersionsPerPolicyQuota"
#SummaryKeyType_GlobalEndpointTokenVersion:        #SummaryKeyType & "GlobalEndpointTokenVersion"
