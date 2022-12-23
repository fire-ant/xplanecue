// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1

package v1alpha1

#AlgorithmSpec: string // #enumAlgorithmSpec

#enumAlgorithmSpec:
	#AlgorithmSpec_RSAES_PKCS1_V1_5 |
	#AlgorithmSpec_RSAES_OAEP_SHA_1 |
	#AlgorithmSpec_RSAES_OAEP_SHA_256

#AlgorithmSpec_RSAES_PKCS1_V1_5:   #AlgorithmSpec & "RSAES_PKCS1_V1_5"
#AlgorithmSpec_RSAES_OAEP_SHA_1:   #AlgorithmSpec & "RSAES_OAEP_SHA_1"
#AlgorithmSpec_RSAES_OAEP_SHA_256: #AlgorithmSpec & "RSAES_OAEP_SHA_256"

#ConnectionErrorCodeType: string // #enumConnectionErrorCodeType

#enumConnectionErrorCodeType:
	#ConnectionErrorCodeType_INVALID_CREDENTIALS |
	#ConnectionErrorCodeType_CLUSTER_NOT_FOUND |
	#ConnectionErrorCodeType_NETWORK_ERRORS |
	#ConnectionErrorCodeType_INTERNAL_ERROR |
	#ConnectionErrorCodeType_INSUFFICIENT_CLOUDHSM_HSMS |
	#ConnectionErrorCodeType_USER_LOCKED_OUT |
	#ConnectionErrorCodeType_USER_NOT_FOUND |
	#ConnectionErrorCodeType_USER_LOGGED_IN |
	#ConnectionErrorCodeType_SUBNET_NOT_FOUND

#ConnectionErrorCodeType_INVALID_CREDENTIALS:        #ConnectionErrorCodeType & "INVALID_CREDENTIALS"
#ConnectionErrorCodeType_CLUSTER_NOT_FOUND:          #ConnectionErrorCodeType & "CLUSTER_NOT_FOUND"
#ConnectionErrorCodeType_NETWORK_ERRORS:             #ConnectionErrorCodeType & "NETWORK_ERRORS"
#ConnectionErrorCodeType_INTERNAL_ERROR:             #ConnectionErrorCodeType & "INTERNAL_ERROR"
#ConnectionErrorCodeType_INSUFFICIENT_CLOUDHSM_HSMS: #ConnectionErrorCodeType & "INSUFFICIENT_CLOUDHSM_HSMS"
#ConnectionErrorCodeType_USER_LOCKED_OUT:            #ConnectionErrorCodeType & "USER_LOCKED_OUT"
#ConnectionErrorCodeType_USER_NOT_FOUND:             #ConnectionErrorCodeType & "USER_NOT_FOUND"
#ConnectionErrorCodeType_USER_LOGGED_IN:             #ConnectionErrorCodeType & "USER_LOGGED_IN"
#ConnectionErrorCodeType_SUBNET_NOT_FOUND:           #ConnectionErrorCodeType & "SUBNET_NOT_FOUND"

#ConnectionStateType: string // #enumConnectionStateType

#enumConnectionStateType:
	#ConnectionStateType_CONNECTED |
	#ConnectionStateType_CONNECTING |
	#ConnectionStateType_FAILED |
	#ConnectionStateType_DISCONNECTED |
	#ConnectionStateType_DISCONNECTING

#ConnectionStateType_CONNECTED:     #ConnectionStateType & "CONNECTED"
#ConnectionStateType_CONNECTING:    #ConnectionStateType & "CONNECTING"
#ConnectionStateType_FAILED:        #ConnectionStateType & "FAILED"
#ConnectionStateType_DISCONNECTED:  #ConnectionStateType & "DISCONNECTED"
#ConnectionStateType_DISCONNECTING: #ConnectionStateType & "DISCONNECTING"

#CustomerMasterKeySpec: string // #enumCustomerMasterKeySpec

#enumCustomerMasterKeySpec:
	#CustomerMasterKeySpec_RSA_2048 |
	#CustomerMasterKeySpec_RSA_3072 |
	#CustomerMasterKeySpec_RSA_4096 |
	#CustomerMasterKeySpec_ECC_NIST_P256 |
	#CustomerMasterKeySpec_ECC_NIST_P384 |
	#CustomerMasterKeySpec_ECC_NIST_P521 |
	#CustomerMasterKeySpec_ECC_SECG_P256K1 |
	#CustomerMasterKeySpec_SYMMETRIC_DEFAULT |
	#CustomerMasterKeySpec_HMAC_224 |
	#CustomerMasterKeySpec_HMAC_256 |
	#CustomerMasterKeySpec_HMAC_384 |
	#CustomerMasterKeySpec_HMAC_512

#CustomerMasterKeySpec_RSA_2048:          #CustomerMasterKeySpec & "RSA_2048"
#CustomerMasterKeySpec_RSA_3072:          #CustomerMasterKeySpec & "RSA_3072"
#CustomerMasterKeySpec_RSA_4096:          #CustomerMasterKeySpec & "RSA_4096"
#CustomerMasterKeySpec_ECC_NIST_P256:     #CustomerMasterKeySpec & "ECC_NIST_P256"
#CustomerMasterKeySpec_ECC_NIST_P384:     #CustomerMasterKeySpec & "ECC_NIST_P384"
#CustomerMasterKeySpec_ECC_NIST_P521:     #CustomerMasterKeySpec & "ECC_NIST_P521"
#CustomerMasterKeySpec_ECC_SECG_P256K1:   #CustomerMasterKeySpec & "ECC_SECG_P256K1"
#CustomerMasterKeySpec_SYMMETRIC_DEFAULT: #CustomerMasterKeySpec & "SYMMETRIC_DEFAULT"
#CustomerMasterKeySpec_HMAC_224:          #CustomerMasterKeySpec & "HMAC_224"
#CustomerMasterKeySpec_HMAC_256:          #CustomerMasterKeySpec & "HMAC_256"
#CustomerMasterKeySpec_HMAC_384:          #CustomerMasterKeySpec & "HMAC_384"
#CustomerMasterKeySpec_HMAC_512:          #CustomerMasterKeySpec & "HMAC_512"

#DataKeyPairSpec: string // #enumDataKeyPairSpec

#enumDataKeyPairSpec:
	#DataKeyPairSpec_RSA_2048 |
	#DataKeyPairSpec_RSA_3072 |
	#DataKeyPairSpec_RSA_4096 |
	#DataKeyPairSpec_ECC_NIST_P256 |
	#DataKeyPairSpec_ECC_NIST_P384 |
	#DataKeyPairSpec_ECC_NIST_P521 |
	#DataKeyPairSpec_ECC_SECG_P256K1

#DataKeyPairSpec_RSA_2048:        #DataKeyPairSpec & "RSA_2048"
#DataKeyPairSpec_RSA_3072:        #DataKeyPairSpec & "RSA_3072"
#DataKeyPairSpec_RSA_4096:        #DataKeyPairSpec & "RSA_4096"
#DataKeyPairSpec_ECC_NIST_P256:   #DataKeyPairSpec & "ECC_NIST_P256"
#DataKeyPairSpec_ECC_NIST_P384:   #DataKeyPairSpec & "ECC_NIST_P384"
#DataKeyPairSpec_ECC_NIST_P521:   #DataKeyPairSpec & "ECC_NIST_P521"
#DataKeyPairSpec_ECC_SECG_P256K1: #DataKeyPairSpec & "ECC_SECG_P256K1"

#DataKeySpec: string // #enumDataKeySpec

#enumDataKeySpec:
	#DataKeySpec_AES_256 |
	#DataKeySpec_AES_128

#DataKeySpec_AES_256: #DataKeySpec & "AES_256"
#DataKeySpec_AES_128: #DataKeySpec & "AES_128"

#EncryptionAlgorithmSpec: string // #enumEncryptionAlgorithmSpec

#enumEncryptionAlgorithmSpec:
	#EncryptionAlgorithmSpec_SYMMETRIC_DEFAULT |
	#EncryptionAlgorithmSpec_RSAES_OAEP_SHA_1 |
	#EncryptionAlgorithmSpec_RSAES_OAEP_SHA_256

#EncryptionAlgorithmSpec_SYMMETRIC_DEFAULT:  #EncryptionAlgorithmSpec & "SYMMETRIC_DEFAULT"
#EncryptionAlgorithmSpec_RSAES_OAEP_SHA_1:   #EncryptionAlgorithmSpec & "RSAES_OAEP_SHA_1"
#EncryptionAlgorithmSpec_RSAES_OAEP_SHA_256: #EncryptionAlgorithmSpec & "RSAES_OAEP_SHA_256"

#ExpirationModelType: string // #enumExpirationModelType

#enumExpirationModelType:
	#ExpirationModelType_KEY_MATERIAL_EXPIRES |
	#ExpirationModelType_KEY_MATERIAL_DOES_NOT_EXPIRE

#ExpirationModelType_KEY_MATERIAL_EXPIRES:         #ExpirationModelType & "KEY_MATERIAL_EXPIRES"
#ExpirationModelType_KEY_MATERIAL_DOES_NOT_EXPIRE: #ExpirationModelType & "KEY_MATERIAL_DOES_NOT_EXPIRE"

#GrantOperation: string // #enumGrantOperation

#enumGrantOperation:
	#GrantOperation_Decrypt |
	#GrantOperation_Encrypt |
	#GrantOperation_GenerateDataKey |
	#GrantOperation_GenerateDataKeyWithoutPlaintext |
	#GrantOperation_ReEncryptFrom |
	#GrantOperation_ReEncryptTo |
	#GrantOperation_Sign |
	#GrantOperation_Verify |
	#GrantOperation_GetPublicKey |
	#GrantOperation_CreateGrant |
	#GrantOperation_RetireGrant |
	#GrantOperation_DescribeKey |
	#GrantOperation_GenerateDataKeyPair |
	#GrantOperation_GenerateDataKeyPairWithoutPlaintext |
	#GrantOperation_GenerateMac |
	#GrantOperation_VerifyMac

#GrantOperation_Decrypt:                             #GrantOperation & "Decrypt"
#GrantOperation_Encrypt:                             #GrantOperation & "Encrypt"
#GrantOperation_GenerateDataKey:                     #GrantOperation & "GenerateDataKey"
#GrantOperation_GenerateDataKeyWithoutPlaintext:     #GrantOperation & "GenerateDataKeyWithoutPlaintext"
#GrantOperation_ReEncryptFrom:                       #GrantOperation & "ReEncryptFrom"
#GrantOperation_ReEncryptTo:                         #GrantOperation & "ReEncryptTo"
#GrantOperation_Sign:                                #GrantOperation & "Sign"
#GrantOperation_Verify:                              #GrantOperation & "Verify"
#GrantOperation_GetPublicKey:                        #GrantOperation & "GetPublicKey"
#GrantOperation_CreateGrant:                         #GrantOperation & "CreateGrant"
#GrantOperation_RetireGrant:                         #GrantOperation & "RetireGrant"
#GrantOperation_DescribeKey:                         #GrantOperation & "DescribeKey"
#GrantOperation_GenerateDataKeyPair:                 #GrantOperation & "GenerateDataKeyPair"
#GrantOperation_GenerateDataKeyPairWithoutPlaintext: #GrantOperation & "GenerateDataKeyPairWithoutPlaintext"
#GrantOperation_GenerateMac:                         #GrantOperation & "GenerateMac"
#GrantOperation_VerifyMac:                           #GrantOperation & "VerifyMac"

#KeyManagerType: string // #enumKeyManagerType

#enumKeyManagerType:
	#KeyManagerType_AWS |
	#KeyManagerType_CUSTOMER

#KeyManagerType_AWS:      #KeyManagerType & "AWS"
#KeyManagerType_CUSTOMER: #KeyManagerType & "CUSTOMER"

#KeySpec_SDK: string // #enumKeySpec_SDK

#enumKeySpec_SDK:
	#KeySpec_SDK_RSA_2048 |
	#KeySpec_SDK_RSA_3072 |
	#KeySpec_SDK_RSA_4096 |
	#KeySpec_SDK_ECC_NIST_P256 |
	#KeySpec_SDK_ECC_NIST_P384 |
	#KeySpec_SDK_ECC_NIST_P521 |
	#KeySpec_SDK_ECC_SECG_P256K1 |
	#KeySpec_SDK_SYMMETRIC_DEFAULT |
	#KeySpec_SDK_HMAC_224 |
	#KeySpec_SDK_HMAC_256 |
	#KeySpec_SDK_HMAC_384 |
	#KeySpec_SDK_HMAC_512

#KeySpec_SDK_RSA_2048:          #KeySpec_SDK & "RSA_2048"
#KeySpec_SDK_RSA_3072:          #KeySpec_SDK & "RSA_3072"
#KeySpec_SDK_RSA_4096:          #KeySpec_SDK & "RSA_4096"
#KeySpec_SDK_ECC_NIST_P256:     #KeySpec_SDK & "ECC_NIST_P256"
#KeySpec_SDK_ECC_NIST_P384:     #KeySpec_SDK & "ECC_NIST_P384"
#KeySpec_SDK_ECC_NIST_P521:     #KeySpec_SDK & "ECC_NIST_P521"
#KeySpec_SDK_ECC_SECG_P256K1:   #KeySpec_SDK & "ECC_SECG_P256K1"
#KeySpec_SDK_SYMMETRIC_DEFAULT: #KeySpec_SDK & "SYMMETRIC_DEFAULT"
#KeySpec_SDK_HMAC_224:          #KeySpec_SDK & "HMAC_224"
#KeySpec_SDK_HMAC_256:          #KeySpec_SDK & "HMAC_256"
#KeySpec_SDK_HMAC_384:          #KeySpec_SDK & "HMAC_384"
#KeySpec_SDK_HMAC_512:          #KeySpec_SDK & "HMAC_512"

#KeyState: string // #enumKeyState

#enumKeyState:
	#KeyState_Creating |
	#KeyState_Enabled |
	#KeyState_Disabled |
	#KeyState_PendingDeletion |
	#KeyState_PendingImport |
	#KeyState_PendingReplicaDeletion |
	#KeyState_Unavailable |
	#KeyState_Updating

#KeyState_Creating:               #KeyState & "Creating"
#KeyState_Enabled:                #KeyState & "Enabled"
#KeyState_Disabled:               #KeyState & "Disabled"
#KeyState_PendingDeletion:        #KeyState & "PendingDeletion"
#KeyState_PendingImport:          #KeyState & "PendingImport"
#KeyState_PendingReplicaDeletion: #KeyState & "PendingReplicaDeletion"
#KeyState_Unavailable:            #KeyState & "Unavailable"
#KeyState_Updating:               #KeyState & "Updating"

#KeyUsageType: string // #enumKeyUsageType

#enumKeyUsageType:
	#KeyUsageType_SIGN_VERIFY |
	#KeyUsageType_ENCRYPT_DECRYPT |
	#KeyUsageType_GENERATE_VERIFY_MAC

#KeyUsageType_SIGN_VERIFY:         #KeyUsageType & "SIGN_VERIFY"
#KeyUsageType_ENCRYPT_DECRYPT:     #KeyUsageType & "ENCRYPT_DECRYPT"
#KeyUsageType_GENERATE_VERIFY_MAC: #KeyUsageType & "GENERATE_VERIFY_MAC"

#MacAlgorithmSpec: string // #enumMacAlgorithmSpec

#enumMacAlgorithmSpec:
	#MacAlgorithmSpec_HMAC_SHA_224 |
	#MacAlgorithmSpec_HMAC_SHA_256 |
	#MacAlgorithmSpec_HMAC_SHA_384 |
	#MacAlgorithmSpec_HMAC_SHA_512

#MacAlgorithmSpec_HMAC_SHA_224: #MacAlgorithmSpec & "HMAC_SHA_224"
#MacAlgorithmSpec_HMAC_SHA_256: #MacAlgorithmSpec & "HMAC_SHA_256"
#MacAlgorithmSpec_HMAC_SHA_384: #MacAlgorithmSpec & "HMAC_SHA_384"
#MacAlgorithmSpec_HMAC_SHA_512: #MacAlgorithmSpec & "HMAC_SHA_512"

#MessageType: string // #enumMessageType

#enumMessageType:
	#MessageType_RAW |
	#MessageType_DIGEST

#MessageType_RAW:    #MessageType & "RAW"
#MessageType_DIGEST: #MessageType & "DIGEST"

#MultiRegionKeyType: string // #enumMultiRegionKeyType

#enumMultiRegionKeyType:
	#MultiRegionKeyType_PRIMARY |
	#MultiRegionKeyType_REPLICA

#MultiRegionKeyType_PRIMARY: #MultiRegionKeyType & "PRIMARY"
#MultiRegionKeyType_REPLICA: #MultiRegionKeyType & "REPLICA"

#OriginType: string // #enumOriginType

#enumOriginType:
	#OriginType_AWS_KMS |
	#OriginType_EXTERNAL |
	#OriginType_AWS_CLOUDHSM

#OriginType_AWS_KMS:      #OriginType & "AWS_KMS"
#OriginType_EXTERNAL:     #OriginType & "EXTERNAL"
#OriginType_AWS_CLOUDHSM: #OriginType & "AWS_CLOUDHSM"

#SigningAlgorithmSpec: string // #enumSigningAlgorithmSpec

#enumSigningAlgorithmSpec:
	#SigningAlgorithmSpec_RSASSA_PSS_SHA_256 |
	#SigningAlgorithmSpec_RSASSA_PSS_SHA_384 |
	#SigningAlgorithmSpec_RSASSA_PSS_SHA_512 |
	#SigningAlgorithmSpec_RSASSA_PKCS1_V1_5_SHA_256 |
	#SigningAlgorithmSpec_RSASSA_PKCS1_V1_5_SHA_384 |
	#SigningAlgorithmSpec_RSASSA_PKCS1_V1_5_SHA_512 |
	#SigningAlgorithmSpec_ECDSA_SHA_256 |
	#SigningAlgorithmSpec_ECDSA_SHA_384 |
	#SigningAlgorithmSpec_ECDSA_SHA_512

#SigningAlgorithmSpec_RSASSA_PSS_SHA_256:        #SigningAlgorithmSpec & "RSASSA_PSS_SHA_256"
#SigningAlgorithmSpec_RSASSA_PSS_SHA_384:        #SigningAlgorithmSpec & "RSASSA_PSS_SHA_384"
#SigningAlgorithmSpec_RSASSA_PSS_SHA_512:        #SigningAlgorithmSpec & "RSASSA_PSS_SHA_512"
#SigningAlgorithmSpec_RSASSA_PKCS1_V1_5_SHA_256: #SigningAlgorithmSpec & "RSASSA_PKCS1_V1_5_SHA_256"
#SigningAlgorithmSpec_RSASSA_PKCS1_V1_5_SHA_384: #SigningAlgorithmSpec & "RSASSA_PKCS1_V1_5_SHA_384"
#SigningAlgorithmSpec_RSASSA_PKCS1_V1_5_SHA_512: #SigningAlgorithmSpec & "RSASSA_PKCS1_V1_5_SHA_512"
#SigningAlgorithmSpec_ECDSA_SHA_256:             #SigningAlgorithmSpec & "ECDSA_SHA_256"
#SigningAlgorithmSpec_ECDSA_SHA_384:             #SigningAlgorithmSpec & "ECDSA_SHA_384"
#SigningAlgorithmSpec_ECDSA_SHA_512:             #SigningAlgorithmSpec & "ECDSA_SHA_512"

#WrappingKeySpec: string // #enumWrappingKeySpec

#enumWrappingKeySpec:
	#WrappingKeySpec_RSA_2048

#WrappingKeySpec_RSA_2048: #WrappingKeySpec & "RSA_2048"
