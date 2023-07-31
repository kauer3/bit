jadeVersionNumber "22.0.02";
schemaDefinition
BankingModelSchema subschemaOf RootSchema completeDefinition;
	setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
	setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:55.936;
typeHeaders
	BankingModelSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2062;
	BankAccount subclassOf Object abstract, highestOrdinal = 2, number = 2067;
	ChequeAccount subclassOf BankAccount highestOrdinal = 1, number = 2068;
	SavingsAccount subclassOf BankAccount highestOrdinal = 1, number = 2069;
	Customer subclassOf Object highestOrdinal = 4, number = 2066;
	GBankingModelSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2063;
	SBankingModelSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2064;
membershipDefinitions
typeDefinitions
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	BankingModelSchema completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
	)
	BankAccount completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:24:17.237;
	attributeDefinitions
		balance:                       Decimal[12,2] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:25:31.765;
		number:                        Integer readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:26:03.878;
	)
	ChequeAccount completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:26:45.017;
	attributeDefinitions
		overdraftLimit:                Decimal[12] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:29:09.067;
	)
	SavingsAccount completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:27:05.417;
	attributeDefinitions
		interestRate:                  Decimal[3] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:30:40.928;
	)
	Customer completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:12:33.636;
	attributeDefinitions
		address:                       String[26] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:17:52.586;
		firstName:                     String[26] readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:21:43.150;
		lastName:                      String[16] readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:22:49.731;
		number:                        Integer readonly, number = 4, ordinal = 4;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:23:12.392;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GBankingModelSchema completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SBankingModelSchema completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
	)
databaseDefinitions
	BankingModelSchemaDb
	(
	setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
	databaseFileDefinitions
		"bank" number = 51;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
	defaultFileDefinition "bank";
	classMapDefinitions
		BankAccount in "bank";
		BankingModelSchema in "_usergui";
		ChequeAccount in "bank";
		Customer in "bank";
		GBankingModelSchema in "bank";
		SBankingModelSchema in "_environ";
		SavingsAccount in "bank";
	)
typeSources
