// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/secretsmanager/v1beta1

package v1beta1

#FilterNameStringType: string // #enumFilterNameStringType

#enumFilterNameStringType:
	#FilterNameStringType_description |
	#FilterNameStringType_name |
	#FilterNameStringType_tag_key |
	#FilterNameStringType_tag_value |
	#FilterNameStringType_primary_region |
	#FilterNameStringType_all

#FilterNameStringType_description:    #FilterNameStringType & "description"
#FilterNameStringType_name:           #FilterNameStringType & "name"
#FilterNameStringType_tag_key:        #FilterNameStringType & "tag-key"
#FilterNameStringType_tag_value:      #FilterNameStringType & "tag-value"
#FilterNameStringType_primary_region: #FilterNameStringType & "primary-region"
#FilterNameStringType_all:            #FilterNameStringType & "all"

#SortOrderType: string // #enumSortOrderType

#enumSortOrderType:
	#SortOrderType_asc |
	#SortOrderType_desc

#SortOrderType_asc:  #SortOrderType & "asc"
#SortOrderType_desc: #SortOrderType & "desc"

#StatusType: string // #enumStatusType

#enumStatusType:
	#StatusType_InSync |
	#StatusType_Failed |
	#StatusType_InProgress

#StatusType_InSync:     #StatusType & "InSync"
#StatusType_Failed:     #StatusType & "Failed"
#StatusType_InProgress: #StatusType & "InProgress"
