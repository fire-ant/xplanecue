package rds

import (
	// import from this module
	xrds "github.com/crossplane-contrib/provider-aws/apis/rds/v1alpha1"
)

apiVersion: "database.aws.crossplane.io/v1alpha1"
kind: "RDSInstance"
metadata:
	name: "rdspostgresql"
spec: xrds.#DBInstanceSpec & {
	forProvider: {
		region:                          "us-east-1"
		dbInstanceClass:                 "db.t2.small"
		masterUsername:                  "masteruser"
		allocatedStorage:                20
		engine:                          "postgres"
		engineVersion:                   "12"
	}
	#writeConnectionSecretToRef: {
		namespace: "crossplane-system"
		name:      spec.forProvider.masterUsername + "-key"
	}
}