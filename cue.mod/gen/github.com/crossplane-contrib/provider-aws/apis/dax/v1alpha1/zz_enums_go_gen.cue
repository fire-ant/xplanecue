// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/dax/v1alpha1

package v1alpha1

#ChangeType: string // #enumChangeType

#enumChangeType:
	#ChangeType_IMMEDIATE |
	#ChangeType_REQUIRES_REBOOT

#ChangeType_IMMEDIATE:       #ChangeType & "IMMEDIATE"
#ChangeType_REQUIRES_REBOOT: #ChangeType & "REQUIRES_REBOOT"

#ClusterEndpointEncryptionType: string // #enumClusterEndpointEncryptionType

#enumClusterEndpointEncryptionType:
	#ClusterEndpointEncryptionType_NONE |
	#ClusterEndpointEncryptionType_TLS

#ClusterEndpointEncryptionType_NONE: #ClusterEndpointEncryptionType & "NONE"
#ClusterEndpointEncryptionType_TLS:  #ClusterEndpointEncryptionType & "TLS"

#IsModifiable: string // #enumIsModifiable

#enumIsModifiable:
	#IsModifiable_TRUE |
	#IsModifiable_FALSE |
	#IsModifiable_CONDITIONAL

#IsModifiable_TRUE:        #IsModifiable & "TRUE"
#IsModifiable_FALSE:       #IsModifiable & "FALSE"
#IsModifiable_CONDITIONAL: #IsModifiable & "CONDITIONAL"

#ParameterType: string // #enumParameterType

#enumParameterType:
	#ParameterType_DEFAULT |
	#ParameterType_NODE_TYPE_SPECIFIC

#ParameterType_DEFAULT:            #ParameterType & "DEFAULT"
#ParameterType_NODE_TYPE_SPECIFIC: #ParameterType & "NODE_TYPE_SPECIFIC"

#SSEStatus: string // #enumSSEStatus

#enumSSEStatus:
	#SSEStatus_ENABLING |
	#SSEStatus_ENABLED |
	#SSEStatus_DISABLING |
	#SSEStatus_DISABLED

#SSEStatus_ENABLING:  #SSEStatus & "ENABLING"
#SSEStatus_ENABLED:   #SSEStatus & "ENABLED"
#SSEStatus_DISABLING: #SSEStatus & "DISABLING"
#SSEStatus_DISABLED:  #SSEStatus & "DISABLED"

#SourceType: string // #enumSourceType

#enumSourceType:
	#SourceType_CLUSTER |
	#SourceType_PARAMETER_GROUP |
	#SourceType_SUBNET_GROUP

#SourceType_CLUSTER:         #SourceType & "CLUSTER"
#SourceType_PARAMETER_GROUP: #SourceType & "PARAMETER_GROUP"
#SourceType_SUBNET_GROUP:    #SourceType & "SUBNET_GROUP"
