package xplanecue

import (
	// import from this module
	"github.com/fire-ant/xplanecue"
)

rds: "rds"

apiVersion: "database.aws.crossplane.io/v1alpha1"
kind: "RDSInstance"
metadata: name: "rdspostgresql"
spec: #DBInstance: {
	forProvider: {
		region:                          "us-east-1"
		dbInstanceClass:                 12
		masterUsername:                  "masteruser"
		allocatedStorage:                20
		engine:                          "postgres"
		engineVersion:                   "12"
		skipFinalSnapshotBeforeDeletion: true
	}
	writeConnectionSecretToRef: {
		namespace: "crossplane-system"
		name:      "aws-rdspostgresql-conn"
	}
}