package rds

// Policy

spec: {
	forProvider:{
	allocatedStorage:      >=15 & <=25
	engine:                "postgres"
	masterUsername:        != "admin"
	region:                != "us-east-1"
	}
}