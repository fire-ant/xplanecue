// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/Azure/azure-storage-blob-go/azblob

package azblob

#SASVersion: "2018-11-09"

#SASProtocol: string // #enumSASProtocol

#enumSASProtocol:
	#SASProtocolHTTPS |
	#SASProtocolHTTPSandHTTP

// SASProtocolHTTPS can be specified for a SAS protocol
#SASProtocolHTTPS: #SASProtocol & "https"

// SASProtocolHTTPSandHTTP can be specified for a SAS protocol
#SASProtocolHTTPSandHTTP: #SASProtocol & "https,http"

#SASTimeFormat: "2006-01-02T15:04:05Z"

// IPRange represents a SAS IP range's start IP and (optionally) end IP.
#IPRange: {
	Start: string @go(,net.IP)
	End:   string @go(,net.IP)
}
