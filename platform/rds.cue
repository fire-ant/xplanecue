package rds

import (
	// import from this module
	xrds "github.com/crossplane-contrib/provider-aws/apis/rds/v1alpha1"
	// res "github.com/crossplane/crossplane-runtime/apis/common/v1"
)

apiVersion: "database.aws.crossplane.io/v1alpha1"
kind: "RDSInstance"
metadata: 
	name: "rdspostgresql"
spec: xrds.#DBInstanceSpec & {
	forProvider: {
		region:                          "eu-west-1"
		dbInstanceClass:                 "db.t2.small"
		masterUsername:                  "user"
		allocatedStorage:                20
		engine:                          "postgres"
		engineVersion:                   "12"
	}
	writeConnectionSecretToRef: {
		namespace: "crossplane-system"
		name:      spec.forProvider.masterUsername + "-key"
	}
}