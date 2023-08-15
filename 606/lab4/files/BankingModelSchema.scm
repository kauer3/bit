jadeVersionNumber "22.0.02";
schemaDefinition
BankingModelSchema subschemaOf RootSchema completeDefinition;
	setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
constantDefinitions
	categoryDefinition FinancialConstants
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:08:09:46:22.621;
		TaxRate:                       Decimal = 0.15;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:08:09:48:00.173;
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
	setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:55.936;
typeHeaders
	BankingModelSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2062;
	BankAccount subclassOf Object abstract, highestOrdinal = 3, number = 2067;
	ChequeAccount subclassOf BankAccount highestOrdinal = 1, number = 2068;
	SavingsAccount subclassOf BankAccount highestOrdinal = 1, number = 2069;
	Customer subclassOf Object highestOrdinal = 4, number = 2066;
	GBankingModelSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2063;
	SBankingModelSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2064;
	CustomerbylastName subclassOf MemberKeyDictionary loadFactor = 66, number = 2065;
	CustomerSet subclassOf ObjectSet loadFactor = 66, number = 2060;
	CustomerArray subclassOf Array number = 2061;
membershipDefinitions
	CustomerbylastName of Customer;
	CustomerSet of Customer;
	CustomerArray of Customer;
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
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:01:10:34:03.221;
	attributeDefinitions
		balance:                       Decimal[12,2] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:25:31.765;
		number:                        Integer readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:26:03.878;
	)
	ChequeAccount completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:01:09:34:31.190;
	attributeDefinitions
		overdraftLimit:                Decimal[12] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:29:09.067;
	jadeMethodDefinitions
		setPropertiesOnCreate(
			pBalance: Decimal; 
			pOverdraft: Decimal) updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:01:10:08:05.177;
	)
	SavingsAccount completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:01:09:54:31.587;
	attributeDefinitions
		interestRate:                  Decimal[3] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:30:40.928;
	jadeMethodDefinitions
		setPropertiesOnCreate(
			pBalance: Decimal; 
			pIntRate: Decimal) updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:01:10:16:11.572;
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
	jadeMethodDefinitions
		setpropertiesoncreate(
			pAddress: String; 
			pFirstName: String; 
			pLastName: String) updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:15:11:09:39.649;
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
	JadeScript completeDefinition
	(
	jadeMethodDefinitions
		count_J_Customers() number = 1005;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:15:11:14:01.556;
		createChequeAccounts() number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:01:10:10:36.916;
		createCustomersFromFile() number = 1004;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:15:11:12:08.016;
		createSavingsAccounts() number = 1002;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:01:10:20:25.679;
		testAddTax() number = 1003;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:08:09:42:21.954;
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
	Collection completeDefinition
	(
	)
	Btree completeDefinition
	(
	)
	Dictionary completeDefinition
	(
	)
	MemberKeyDictionary completeDefinition
	(
	)
	CustomerbylastName completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:15:11:07:39.921;
	)
	Set completeDefinition
	(
	)
	ObjectSet completeDefinition
	(
	)
	CustomerSet completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:15:11:05:29.101;
	)
	List completeDefinition
	(
	)
	Array completeDefinition
	(
	)
	CustomerArray completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:15:11:06:28.233;
	)
	Decimal completeDefinition
	(
	jadeMethodDefinitions
		addTax(): Decimal number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:08:09:49:58.756;
	)
memberKeyDefinitions
	CustomerbylastName completeDefinition
	(
		lastName;
	)
databaseDefinitions
	BankingModelSchemaDb
	(
	setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
	databaseFileDefinitions
		"bank" number = 52;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
	defaultFileDefinition "bank";
	classMapDefinitions
		BankAccount in "bank";
		BankingModelSchema in "_usergui";
		ChequeAccount in "bank";
		Customer in "bank";
		CustomerArray in "bank";
		CustomerSet in "bank";
		CustomerbylastName in "bank";
		GBankingModelSchema in "bank";
		SBankingModelSchema in "_environ";
		SavingsAccount in "bank";
	)
typeSources
	ChequeAccount (
	jadeMethodSources
setPropertiesOnCreate
{
setPropertiesOnCreate(pBalance : Decimal; pOverdraft : Decimal) updating;

begin
	self.balance := pBalance;
	self.overdraftLimit := pOverdraft;
end;
}
	)
	SavingsAccount (
	jadeMethodSources
setPropertiesOnCreate
{
setPropertiesOnCreate(pBalance : Decimal; pIntRate : Decimal) updating;

begin
	self.balance := pBalance;
	self.interestRate := pIntRate;
end;
}
	)
	Customer (
	jadeMethodSources
setpropertiesoncreate
{
setpropertiesoncreate(pAddress : String; pFirstName : String; pLastName : String) updating;

begin
	self.address := pAddress;
	self.firstName := pFirstName;
	self.lastName := pLastName;
end;
}
	)
	JadeScript (
	jadeMethodSources
count_J_Customers
{
count_J_Customers();

vars
	iter : Iterator;
	dict : CustomerbylastName;
	cust : Customer;
	count : Integer;
begin
	dict := CustomerbylastName.firstInstance();
	iter := dict.createIterator();
	dict.startKeyGeq('J', iter);
	while iter.next (cust) do
		if cust.lastName >= 'K' then
			break;
		endif;
		count := count + 1;
	endwhile;
	write count.String & ' customer last names beigin with "J"';
end;
}
createChequeAccounts
{
createChequeAccounts();

vars
	chequeAcc : ChequeAccount;

begin
	beginTransaction;
	create chequeAcc persistent;
	chequeAcc.setPropertiesOnCreate (100, 5000);
	create chequeAcc persistent;
	chequeAcc.setPropertiesOnCreate (650, 2000);
	commitTransaction;
end;
}
createCustomersFromFile
{
createCustomersFromFile();

vars
	file : File;
	str : String;
	cust : Customer;
	ary : CustomerArray;
	dict : CustomerbylastName;
	set : CustomerSet;
begin
	create file transient;
	file.fileName := 'C:\Users\kaue0\.gitstuff\bit\606\lab4\files\customers.txt';
	file.kind := File.Kind_Unknown_Text;
	beginTransaction;
	create ary persistent;
	create dict persistent;
	create set persistent;
	while not file.endOfFile() do
		str := file.readLine();
		create cust persistent;
		cust.setpropertiesoncreate (str[41:end].trimBlanks(), str[16:25].trimBlanks(), str[1:15].trimBlanks());
		ary.add(cust);
		dict.add(cust);
		set.add(cust);
	endwhile;
	commitTransaction;
epilog
	delete file;
end;
}
createSavingsAccounts
{
createSavingsAccounts();

vars
	savingsAcc : SavingsAccount;
	
begin
	beginTransaction;
	create savingsAcc persistent;
	savingsAcc.setPropertiesOnCreate (20000, 0.05);
	create savingsAcc persistent;
	savingsAcc.setPropertiesOnCreate (1550, 0.045);
	commitTransaction;
end;
}
testAddTax
{
testAddTax();

vars
	d : Decimal[8,2];
begin
	d := 100;
	write d.addTax();
end;
}
	)
	Decimal (
	jadeMethodSources
addTax
{
addTax(): Decimal;

begin
	return  self + self * TaxRate;
end;
}
	)
