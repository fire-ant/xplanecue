// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/cognitoidentityprovider/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// +kubebuilder:skipversion
#AccountRecoverySettingType: {
	recoveryMechanisms?: [...null | #RecoveryOptionType] @go(RecoveryMechanisms,[]*RecoveryOptionType)
}

// +kubebuilder:skipversion
#AdminCreateUserConfigType: {
	allowAdminCreateUserOnly?: null | bool @go(AllowAdminCreateUserOnly,*bool)

	// The message template structure.
	inviteMessageTemplate?: null | #MessageTemplateType @go(InviteMessageTemplate,*MessageTemplateType)
}

// +kubebuilder:skipversion
#AnalyticsConfigurationType: {
	applicationARN?: null | string @go(ApplicationARN,*string)
	applicationID?:  null | string @go(ApplicationID,*string)
	externalID?:     null | string @go(ExternalID,*string)
	roleARN?:        null | string @go(RoleARN,*string)
	userDataShared?: null | bool   @go(UserDataShared,*bool)
}

// +kubebuilder:skipversion
#AnalyticsMetadataType: {
	analyticsEndpointID?: null | string @go(AnalyticsEndpointID,*string)
}

// +kubebuilder:skipversion
#AuthEventType: {
	creationDate?: null | metav1.#Time @go(CreationDate,*metav1.Time)
	eventID?:      null | string       @go(EventID,*string)
}

// +kubebuilder:skipversion
#AuthenticationResultType: {
	expiresIn?: null | int64  @go(ExpiresIn,*int64)
	tokenType?: null | string @go(TokenType,*string)
}

// +kubebuilder:skipversion
#CodeDeliveryDetailsType: {
	destination?: null | string @go(Destination,*string)
}

// +kubebuilder:skipversion
#ContextDataType: {
	encodedData?: null | string @go(EncodedData,*string)
	ipAddress?:   null | string @go(IPAddress,*string)
	serverName?:  null | string @go(ServerName,*string)
	serverPath?:  null | string @go(ServerPath,*string)
}

// +kubebuilder:skipversion
#CustomDomainConfigType: {
	certificateARN?: null | string @go(CertificateARN,*string)
}

// +kubebuilder:skipversion
#CustomEmailLambdaVersionConfigType: {
	lambdaARN?:     null | string @go(LambdaARN,*string)
	lambdaVersion?: null | string @go(LambdaVersion,*string)
}

// +kubebuilder:skipversion
#CustomSMSLambdaVersionConfigType: {
	lambdaARN?:     null | string @go(LambdaARN,*string)
	lambdaVersion?: null | string @go(LambdaVersion,*string)
}

// +kubebuilder:skipversion
#DeviceConfigurationType: {
	challengeRequiredOnNewDevice?:     null | bool @go(ChallengeRequiredOnNewDevice,*bool)
	deviceOnlyRememberedOnUserPrompt?: null | bool @go(DeviceOnlyRememberedOnUserPrompt,*bool)
}

// +kubebuilder:skipversion
#DeviceSecretVerifierConfigType: {
	passwordVerifier?: null | string @go(PasswordVerifier,*string)
	salt?:             null | string @go(Salt,*string)
}

// +kubebuilder:skipversion
#DeviceType: {
	deviceCreateDate?:            null | metav1.#Time @go(DeviceCreateDate,*metav1.Time)
	deviceLastAuthenticatedDate?: null | metav1.#Time @go(DeviceLastAuthenticatedDate,*metav1.Time)
	deviceLastModifiedDate?:      null | metav1.#Time @go(DeviceLastModifiedDate,*metav1.Time)
}

// +kubebuilder:skipversion
#DomainDescriptionType: {
	awsAccountID?:           null | string @go(AWSAccountID,*string)
	cloudFrontDistribution?: null | string @go(CloudFrontDistribution,*string)

	// The configuration for a custom domain that hosts the sign-up and sign-in
	// webpages for your application.
	customDomainConfig?: null | #CustomDomainConfigType @go(CustomDomainConfig,*CustomDomainConfigType)
	domain?:             null | string                  @go(Domain,*string)
	s3Bucket?:           null | string                  @go(S3Bucket,*string)
	status?:             null | string                  @go(Status,*string)
	userPoolID?:         null | string                  @go(UserPoolID,*string)
	version?:            null | string                  @go(Version,*string)
}

// +kubebuilder:skipversion
#EmailConfigurationType: {
	configurationSet?:    null | string @go(ConfigurationSet,*string)
	emailSendingAccount?: null | string @go(EmailSendingAccount,*string)
	from?:                null | string @go(From,*string)
	replyToEmailAddress?: null | string @go(ReplyToEmailAddress,*string)
	sourceARN?:           null | string @go(SourceARN,*string)
}

// +kubebuilder:skipversion
#EventContextDataType: {
	city?:       null | string @go(City,*string)
	country?:    null | string @go(Country,*string)
	deviceName?: null | string @go(DeviceName,*string)
	ipAddress?:  null | string @go(IPAddress,*string)
	timezone?:   null | string @go(Timezone,*string)
}

// +kubebuilder:skipversion
#EventFeedbackType: {
	feedbackDate?: null | metav1.#Time @go(FeedbackDate,*metav1.Time)
	provider?:     null | string       @go(Provider,*string)
}

// +kubebuilder:skipversion
#EventRiskType: {
	compromisedCredentialsDetected?: null | bool @go(CompromisedCredentialsDetected,*bool)
}

// +kubebuilder:skipversion
#GroupType: {
	creationDate?:     null | metav1.#Time @go(CreationDate,*metav1.Time)
	description?:      null | string       @go(Description,*string)
	groupName?:        null | string       @go(GroupName,*string)
	lastModifiedDate?: null | metav1.#Time @go(LastModifiedDate,*metav1.Time)
	precedence?:       null | int64        @go(Precedence,*int64)
	roleARN?:          null | string       @go(RoleARN,*string)
	userPoolID?:       null | string       @go(UserPoolID,*string)
}

// +kubebuilder:skipversion
#HTTPHeader: {
	headerName?:  null | string @go(HeaderName,*string)
	headerValue?: null | string @go(HeaderValue,*string)
}

// +kubebuilder:skipversion
#IdentityProviderType: {
	attributeMapping?: {[string]: null | string} @go(AttributeMapping,map[string]*string)
	creationDate?: null | metav1.#Time @go(CreationDate,*metav1.Time)
	idpIdentifiers?: [...null | string] @go(IDpIdentifiers,[]*string)
	lastModifiedDate?: null | metav1.#Time @go(LastModifiedDate,*metav1.Time)
	providerName?:     null | string       @go(ProviderName,*string)
	providerType?:     null | string       @go(ProviderType,*string)
	userPoolID?:       null | string       @go(UserPoolID,*string)
}

// +kubebuilder:skipversion
#LambdaConfigType: {
	createAuthChallenge?: null | string @go(CreateAuthChallenge,*string)

	// A custom email sender Lambda configuration type.
	customEmailSender?: null | #CustomEmailLambdaVersionConfigType @go(CustomEmailSender,*CustomEmailLambdaVersionConfigType)
	customMessage?:     null | string                              @go(CustomMessage,*string)

	// A custom SMS sender Lambda configuration type.
	customSMSSender?:             null | #CustomSMSLambdaVersionConfigType @go(CustomSMSSender,*CustomSMSLambdaVersionConfigType)
	defineAuthChallenge?:         null | string                            @go(DefineAuthChallenge,*string)
	kmsKeyID?:                    null | string                            @go(KMSKeyID,*string)
	postAuthentication?:          null | string                            @go(PostAuthentication,*string)
	postConfirmation?:            null | string                            @go(PostConfirmation,*string)
	preAuthentication?:           null | string                            @go(PreAuthentication,*string)
	preSignUp?:                   null | string                            @go(PreSignUp,*string)
	preTokenGeneration?:          null | string                            @go(PreTokenGeneration,*string)
	userMigration?:               null | string                            @go(UserMigration,*string)
	verifyAuthChallengeResponse?: null | string                            @go(VerifyAuthChallengeResponse,*string)
}

// +kubebuilder:skipversion
#MessageTemplateType: {
	emailMessage?: null | string @go(EmailMessage,*string)
	emailSubject?: null | string @go(EmailSubject,*string)
	sMSMessage?:   null | string @go(SMSMessage,*string)
}

// +kubebuilder:skipversion
#NewDeviceMetadataType: {
	deviceGroupKey?: null | string @go(DeviceGroupKey,*string)
}

// +kubebuilder:skipversion
#NotifyConfigurationType: {
	from?:      null | string @go(From,*string)
	replyTo?:   null | string @go(ReplyTo,*string)
	sourceARN?: null | string @go(SourceARN,*string)
}

// +kubebuilder:skipversion
#NumberAttributeConstraintsType: {
	maxValue?: null | string @go(MaxValue,*string)
	minValue?: null | string @go(MinValue,*string)
}

// +kubebuilder:skipversion
#PasswordPolicyType: {
	minimumLength?:                 null | int64 @go(MinimumLength,*int64)
	requireLowercase?:              null | bool  @go(RequireLowercase,*bool)
	requireNumbers?:                null | bool  @go(RequireNumbers,*bool)
	requireSymbols?:                null | bool  @go(RequireSymbols,*bool)
	requireUppercase?:              null | bool  @go(RequireUppercase,*bool)
	temporaryPasswordValidityDays?: null | int64 @go(TemporaryPasswordValidityDays,*int64)
}

// +kubebuilder:skipversion
#ProviderDescription: {
	creationDate?:     null | metav1.#Time @go(CreationDate,*metav1.Time)
	lastModifiedDate?: null | metav1.#Time @go(LastModifiedDate,*metav1.Time)
	providerName?:     null | string       @go(ProviderName,*string)
	providerType?:     null | string       @go(ProviderType,*string)
}

// +kubebuilder:skipversion
#ProviderUserIdentifierType: {
	providerAttributeName?:  null | string @go(ProviderAttributeName,*string)
	providerAttributeValue?: null | string @go(ProviderAttributeValue,*string)
	providerName?:           null | string @go(ProviderName,*string)
}

// +kubebuilder:skipversion
#RecoveryOptionType: {
	name?:     null | string @go(Name,*string)
	priority?: null | int64  @go(Priority,*int64)
}

// +kubebuilder:skipversion
#ResourceServerScopeType: {
	scopeDescription?: null | string @go(ScopeDescription,*string)
	scopeName?:        null | string @go(ScopeName,*string)
}

// +kubebuilder:skipversion
#ResourceServerType: {
	identifier?: null | string @go(Identifier,*string)
	name?:       null | string @go(Name,*string)
	scopes?: [...null | #ResourceServerScopeType] @go(Scopes,[]*ResourceServerScopeType)
	userPoolID?: null | string @go(UserPoolID,*string)
}

// +kubebuilder:skipversion
#RiskConfigurationType: {
	clientID?:         null | string       @go(ClientID,*string)
	lastModifiedDate?: null | metav1.#Time @go(LastModifiedDate,*metav1.Time)
	userPoolID?:       null | string       @go(UserPoolID,*string)
}

// +kubebuilder:skipversion
#SMSMFASettingsType: {
	enabled?:      null | bool @go(Enabled,*bool)
	preferredMFA?: null | bool @go(PreferredMFA,*bool)
}

// +kubebuilder:skipversion
#SchemaAttributeType: {
	attributeDataType?:      null | string @go(AttributeDataType,*string)
	developerOnlyAttribute?: null | bool   @go(DeveloperOnlyAttribute,*bool)
	mutable?:                null | bool   @go(Mutable,*bool)
	name?:                   null | string @go(Name,*string)

	// The minimum and maximum values of an attribute that is of the number data
	// type.
	numberAttributeConstraints?: null | #NumberAttributeConstraintsType @go(NumberAttributeConstraints,*NumberAttributeConstraintsType)
	required?:                   null | bool                            @go(Required,*bool)

	// The constraints associated with a string attribute.
	stringAttributeConstraints?: null | #StringAttributeConstraintsType @go(StringAttributeConstraints,*StringAttributeConstraintsType)
}

// +kubebuilder:skipversion
#SmsConfigurationType: {
	externalID?:   null | string @go(ExternalID,*string)
	snsCallerARN?: null | string @go(SNSCallerARN,*string)
	snsRegion?:    null | string @go(SNSRegion,*string)
}

// +kubebuilder:skipversion
#SmsMFAConfigType: {
	smsAuthenticationMessage?: null | string @go(SmsAuthenticationMessage,*string)

	// The SMS configuration type is the settings that your Amazon Cognito user
	// pool must use to send an SMS message from your Amazon Web Services account
	// through Amazon Simple Notification Service. To send SMS messages with Amazon
	// SNS in the Amazon Web Services Region that you want, the Amazon Cognito user
	// pool uses an Identity and Access Management (IAM) role in your Amazon Web
	// Services account.
	smsConfiguration?: null | #SmsConfigurationType @go(SmsConfiguration,*SmsConfigurationType)
}

// +kubebuilder:skipversion
#SoftwareTokenMFAConfigType: {
	enabled?: null | bool @go(Enabled,*bool)
}

// +kubebuilder:skipversion
#SoftwareTokenMFASettingsType: {
	enabled?:      null | bool @go(Enabled,*bool)
	preferredMFA?: null | bool @go(PreferredMFA,*bool)
}

// +kubebuilder:skipversion
#StringAttributeConstraintsType: {
	maxLength?: null | string @go(MaxLength,*string)
	minLength?: null | string @go(MinLength,*string)
}

// +kubebuilder:skipversion
#TokenValidityUnitsType: {
	accessToken?:  null | string @go(AccessToken,*string)
	idToken?:      null | string @go(IDToken,*string)
	refreshToken?: null | string @go(RefreshToken,*string)
}

// +kubebuilder:skipversion
#UICustomizationType: {
	clientID?:         null | string       @go(ClientID,*string)
	creationDate?:     null | metav1.#Time @go(CreationDate,*metav1.Time)
	lastModifiedDate?: null | metav1.#Time @go(LastModifiedDate,*metav1.Time)
	userPoolID?:       null | string       @go(UserPoolID,*string)
}

// +kubebuilder:skipversion
#UserContextDataType: {
	encodedData?: null | string @go(EncodedData,*string)
}

// +kubebuilder:skipversion
#UserImportJobType: {
	cloudWatchLogsRoleARN?: null | string       @go(CloudWatchLogsRoleARN,*string)
	completionDate?:        null | metav1.#Time @go(CompletionDate,*metav1.Time)
	creationDate?:          null | metav1.#Time @go(CreationDate,*metav1.Time)
	startDate?:             null | metav1.#Time @go(StartDate,*metav1.Time)
	userPoolID?:            null | string       @go(UserPoolID,*string)
}

// +kubebuilder:skipversion
#UserPoolAddOnsType: {
	advancedSecurityMode?: null | string @go(AdvancedSecurityMode,*string)
}

// +kubebuilder:skipversion
#UserPoolClientDescription: {
	clientID?:   null | string @go(ClientID,*string)
	clientName?: null | string @go(ClientName,*string)
	userPoolID?: null | string @go(UserPoolID,*string)
}

// +kubebuilder:skipversion
#UserPoolClientType: {
	accessTokenValidity?: null | int64 @go(AccessTokenValidity,*int64)
	allowedOAuthFlows?: [...null | string] @go(AllowedOAuthFlows,[]*string)
	allowedOAuthFlowsUserPoolClient?: null | bool @go(AllowedOAuthFlowsUserPoolClient,*bool)
	allowedOAuthScopes?: [...null | string] @go(AllowedOAuthScopes,[]*string)

	// The Amazon Pinpoint analytics configuration for collecting metrics for a
	// user pool.
	//
	// In Regions where Amazon Pinpointisn't available, user pools only support
	// sending events to Amazon Pinpoint projects in us-east-1. In Regions where
	// Amazon Pinpoint is available, user pools support sending events to Amazon
	// Pinpoint projects within that same Region.
	analyticsConfiguration?: null | #AnalyticsConfigurationType @go(AnalyticsConfiguration,*AnalyticsConfigurationType)
	callbackURLs?: [...null | string] @go(CallbackURLs,[]*string)
	clientID?:              null | string       @go(ClientID,*string)
	clientName?:            null | string       @go(ClientName,*string)
	clientSecret?:          null | string       @go(ClientSecret,*string)
	creationDate?:          null | metav1.#Time @go(CreationDate,*metav1.Time)
	defaultRedirectURI?:    null | string       @go(DefaultRedirectURI,*string)
	enableTokenRevocation?: null | bool         @go(EnableTokenRevocation,*bool)
	explicitAuthFlows?: [...null | string] @go(ExplicitAuthFlows,[]*string)
	idTokenValidity?:  null | int64        @go(IDTokenValidity,*int64)
	lastModifiedDate?: null | metav1.#Time @go(LastModifiedDate,*metav1.Time)
	logoutURLs?: [...null | string] @go(LogoutURLs,[]*string)
	preventUserExistenceErrors?: null | string @go(PreventUserExistenceErrors,*string)
	readAttributes?: [...null | string] @go(ReadAttributes,[]*string)
	refreshTokenValidity?: null | int64 @go(RefreshTokenValidity,*int64)
	supportedIdentityProviders?: [...null | string] @go(SupportedIdentityProviders,[]*string)

	// The data type for TokenValidityUnits that specifics the time measurements
	// for token validity.
	tokenValidityUnits?: null | #TokenValidityUnitsType @go(TokenValidityUnits,*TokenValidityUnitsType)
	userPoolID?:         null | string                  @go(UserPoolID,*string)
	writeAttributes?: [...null | string] @go(WriteAttributes,[]*string)
}

// +kubebuilder:skipversion
#UserPoolDescriptionType: {
	creationDate?: null | metav1.#Time @go(CreationDate,*metav1.Time)
	id?:           null | string       @go(ID,*string)

	// Specifies the configuration for Lambda triggers.
	lambdaConfig?:     null | #LambdaConfigType @go(LambdaConfig,*LambdaConfigType)
	lastModifiedDate?: null | metav1.#Time      @go(LastModifiedDate,*metav1.Time)
	name?:             null | string            @go(Name,*string)
	status?:           null | string            @go(Status,*string)
}

// +kubebuilder:skipversion
#UserPoolPolicyType: {
	// The password policy type.
	passwordPolicy?: null | #PasswordPolicyType @go(PasswordPolicy,*PasswordPolicyType)
}

// +kubebuilder:skipversion
#UserPoolType: {
	// The data type for AccountRecoverySetting.
	accountRecoverySetting?: null | #AccountRecoverySettingType @go(AccountRecoverySetting,*AccountRecoverySettingType)

	// The configuration for creating a new user profile.
	adminCreateUserConfig?: null | #AdminCreateUserConfigType @go(AdminCreateUserConfig,*AdminCreateUserConfigType)
	aliasAttributes?: [...null | string] @go(AliasAttributes,[]*string)
	arn?: null | string @go(ARN,*string)
	autoVerifiedAttributes?: [...null | string] @go(AutoVerifiedAttributes,[]*string)
	creationDate?: null | metav1.#Time @go(CreationDate,*metav1.Time)
	customDomain?: null | string       @go(CustomDomain,*string)

	// The device tracking configuration for a user pool. A user pool with device
	// tracking deactivated returns a null value.
	//
	// When you provide values for any DeviceConfiguration field, you activate device
	// tracking.
	deviceConfiguration?: null | #DeviceConfigurationType @go(DeviceConfiguration,*DeviceConfigurationType)
	domain?:              null | string                   @go(Domain,*string)

	// The email configuration of your user pool. The email configuration type sets
	// your preferred sending method, Amazon Web Services Region, and sender for
	// messages from your user pool.
	//
	// Amazon Cognito can send email messages with Amazon Simple Email Service resources
	// in the Amazon Web Services Region where you created your user pool, and in
	// alternate Regions in some cases. For more information on the supported Regions,
	// see Email settings for Amazon Cognito user pools (https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-email.html).
	emailConfiguration?:        null | #EmailConfigurationType @go(EmailConfiguration,*EmailConfigurationType)
	emailConfigurationFailure?: null | string                  @go(EmailConfigurationFailure,*string)
	emailVerificationMessage?:  null | string                  @go(EmailVerificationMessage,*string)
	emailVerificationSubject?:  null | string                  @go(EmailVerificationSubject,*string)
	estimatedNumberOfUsers?:    null | int64                   @go(EstimatedNumberOfUsers,*int64)
	id?:                        null | string                  @go(ID,*string)

	// Specifies the configuration for Lambda triggers.
	lambdaConfig?:     null | #LambdaConfigType @go(LambdaConfig,*LambdaConfigType)
	lastModifiedDate?: null | metav1.#Time      @go(LastModifiedDate,*metav1.Time)
	mfaConfiguration?: null | string            @go(MFAConfiguration,*string)
	name?:             null | string            @go(Name,*string)

	// The policy associated with a user pool.
	policies?: null | #UserPoolPolicyType @go(Policies,*UserPoolPolicyType)
	schemaAttributes?: [...null | #SchemaAttributeType] @go(SchemaAttributes,[]*SchemaAttributeType)
	smsAuthenticationMessage?: null | string @go(SmsAuthenticationMessage,*string)

	// The SMS configuration type is the settings that your Amazon Cognito user
	// pool must use to send an SMS message from your Amazon Web Services account
	// through Amazon Simple Notification Service. To send SMS messages with Amazon
	// SNS in the Amazon Web Services Region that you want, the Amazon Cognito user
	// pool uses an Identity and Access Management (IAM) role in your Amazon Web
	// Services account.
	smsConfiguration?:        null | #SmsConfigurationType @go(SmsConfiguration,*SmsConfigurationType)
	smsConfigurationFailure?: null | string                @go(SmsConfigurationFailure,*string)
	smsVerificationMessage?:  null | string                @go(SmsVerificationMessage,*string)
	status?:                  null | string                @go(Status,*string)

	// The user pool add-ons type.
	userPoolAddOns?: null | #UserPoolAddOnsType @go(UserPoolAddOns,*UserPoolAddOnsType)
	userPoolTags?: {[string]: null | string} @go(UserPoolTags,map[string]*string)
	usernameAttributes?: [...null | string] @go(UsernameAttributes,[]*string)

	// The username configuration type.
	usernameConfiguration?: null | #UsernameConfigurationType @go(UsernameConfiguration,*UsernameConfigurationType)

	// The template for verification messages.
	verificationMessageTemplate?: null | #VerificationMessageTemplateType @go(VerificationMessageTemplate,*VerificationMessageTemplateType)
}

// +kubebuilder:skipversion
#UserType: {
	enabled?:              null | bool         @go(Enabled,*bool)
	userCreateDate?:       null | metav1.#Time @go(UserCreateDate,*metav1.Time)
	userLastModifiedDate?: null | metav1.#Time @go(UserLastModifiedDate,*metav1.Time)
}

// +kubebuilder:skipversion
#UsernameConfigurationType: {
	caseSensitive?: null | bool @go(CaseSensitive,*bool)
}

// +kubebuilder:skipversion
#VerificationMessageTemplateType: {
	defaultEmailOption?: null | string @go(DefaultEmailOption,*string)
	emailMessage?:       null | string @go(EmailMessage,*string)
	emailMessageByLink?: null | string @go(EmailMessageByLink,*string)
	emailSubject?:       null | string @go(EmailSubject,*string)
	emailSubjectByLink?: null | string @go(EmailSubjectByLink,*string)
	smsMessage?:         null | string @go(SmsMessage,*string)
}
