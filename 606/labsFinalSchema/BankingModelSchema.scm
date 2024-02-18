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
	BankingModelSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2062;
	Bank subclassOf Object highestSubId = 3, highestOrdinal = 5, number = 2057;
	BankAccount subclassOf Object abstract, highestOrdinal = 5, number = 2067;
	ChequeAccount subclassOf BankAccount highestOrdinal = 1, number = 2068;
	SavingsAccount subclassOf BankAccount highestOrdinal = 1, number = 2069;
	Customer subclassOf Object highestSubId = 1, highestOrdinal = 6, number = 2066;
	GBankingModelSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2063;
	SequenceNumber subclassOf Object highestOrdinal = 2, number = 2058;
	SBankingModelSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2064;
	BankAccountByNumber subclassOf MemberKeyDictionary loadFactor = 66, number = 2094;
	ChequeAccountByNumber subclassOf MemberKeyDictionary loadFactor = 66, number = 2092;
	CustomerByLastName subclassOf MemberKeyDictionary loadFactor = 66, number = 2065;
	SavingsAccountByNumber subclassOf MemberKeyDictionary loadFactor = 66, number = 2093;
	CustomerSet subclassOf ObjectSet loadFactor = 66, number = 2060;
	CustomerArray subclassOf Array number = 2061;
membershipDefinitions
	BankAccountByNumber of BankAccount;
	ChequeAccountByNumber of ChequeAccount;
	CustomerByLastName of Customer;
	SavingsAccountByNumber of SavingsAccount;
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
	referenceDefinitions
		myBank:                        Bank  readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:09:05:09:38:01.658;
	jadeMethodDefinitions
		initialize() updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:09:05:09:47:55.988;
	)
	Bank completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:10:10:15:39.259;
	referenceDefinitions
		allChequeAccounts:             ChequeAccountByNumber   explicitInverse, readonly, subId = 2, number = 4, ordinal = 4;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:05:32.759;
		allCustomers:                  CustomerByLastName   explicitInverse, readonly, subId = 1, number = 3, ordinal = 3;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:03:21.175;
		allSavingsAccounts:            SavingsAccountByNumber   explicitInverse, readonly, subId = 3, number = 5, ordinal = 5;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:08:08.907;
		myBankAcctSeqNum:              SequenceNumber  protected, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:10:10:06:24.104;
		myCustomerSeqNum:              SequenceNumber  protected, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:10:10:06:06.711;
	jadeMethodDefinitions
		create() updating, number = 1003;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:10:10:18:00.559;
		delete() updating, number = 1004;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:29:59.846;
		nextBankAcctNum(): Integer number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:28:50.411;
		nextCustomerNum(): Integer number = 1002;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:29:02.638;
	)
	BankAccount completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:01:10:34:03.221;
	attributeDefinitions
		balance:                       Decimal[12,2] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:25:31.765;
		number:                        Integer readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:26:03.878;
	referenceDefinitions
		myBank:                        Bank   explicitEmbeddedInverse, readonly, number = 4, ordinal = 5;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:08:08.907;
		myCustomer:                    Customer   explicitEmbeddedInverse, readonly, number = 3, ordinal = 4;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:00:17.898;
	jadeMethodDefinitions
		create() updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:10:10:27:11.627;
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
			pCustomer: Customer; 
			pOverdraft: Decimal) updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:09:50.823;
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
			pCustomer: Customer; 
			pIntRate: Decimal) updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:11:32.656;
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
	referenceDefinitions
		allBankAccounts:               BankAccountByNumber   explicitInverse, readonly, subId = 1, number = 5, ordinal = 5;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:00:17.896;
		myBank:                        Bank   explicitEmbeddedInverse, readonly, number = 6, ordinal = 6;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:03:21.176;
	jadeMethodDefinitions
		create() updating, number = 1002;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:10:10:28:44.046;
		setPropertiesOnUpdate(
			pAddress: String; 
			pFirstNames: String; 
			pLastName: String) updating, number = 1003;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:11:27:35.181;
		setpropertiesoncreate(
			pAddress: String; 
			pFirstNames: String; 
			pLastName: String) updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:15:35.315;
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
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:01:12.109;
		createBank() number = 1006;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:30:34.474;
		createChequeAccounts() number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:11:16:16:41:02.889;
		createCustomerWithBankAccounts() number = 1007;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:32:37.017;
		createCustomersFromFile() number = 1004;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:11:16:16:45:07.968;
		createSavingsAccounts() number = 1002;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:01:10:20:25.679;
		testAddTax() number = 1003;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:08:09:42:21.954;
	)
	SequenceNumber completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:10:10:01:30.974;
	attributeDefinitions
		number:                        Integer protected, number = 1, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:26:10.757;
	jadeMethodDefinitions
		next(): Integer updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:26:35.278;
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
	Window completeDefinition
	(
	)
	Control completeDefinition
	(
		setModifiedTimeStamp "cnwam14" "99.0.00" 210107 2021:07:15:16:42:49.072;
	)
	Picture completeDefinition
	(
		setModifiedTimeStamp "cnwrjd1" "9.9.00" 110516 2016:08:04:16:27:32.781;
	)
	Form completeDefinition
	(
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
	BankAccountByNumber completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:09:58:15.871;
	)
	ChequeAccountByNumber completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:09:54:26.590;
	)
	CustomerByLastName completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:10:01:12.108;
	)
	SavingsAccountByNumber completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:10:31:09:57:01.413;
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
	BankAccountByNumber completeDefinition
	(
		number;
	)
	ChequeAccountByNumber completeDefinition
	(
		number;
	)
	CustomerByLastName completeDefinition
	(
		lastName;
	)
	SavingsAccountByNumber completeDefinition
	(
		number;
	)
inverseDefinitions
	allChequeAccounts of Bank automatic peerOf myBank of BankAccount manual;
	allCustomers of Bank automatic peerOf myBank of Customer manual;
	allSavingsAccounts of Bank automatic peerOf myBank of BankAccount manual;
	allBankAccounts of Customer automatic peerOf myCustomer of BankAccount manual;

databaseDefinitions
	BankingModelSchemaDb
	(
	setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
	databaseFileDefinitions
		"bank" number = 52;
		setModifiedTimeStamp "<unknown>" "" 2023:10:31:09:47:26;
	defaultFileDefinition "bank";
	classMapDefinitions
		Bank in "bank";
		BankAccount in "bank";
		BankAccountByNumber in "bank";
		BankingModelSchema in "_usergui";
		ChequeAccount in "bank";
		ChequeAccountByNumber in "bank";
		Customer in "bank";
		CustomerArray in "bank";
		CustomerByLastName in "bank";
		CustomerSet in "bank";
		GBankingModelSchema in "bank";
		SBankingModelSchema in "_environ";
		SavingsAccount in "bank";
		SavingsAccountByNumber in "bank";
		SequenceNumber in "bank";
	)
typeSources
	BankingModelSchema (
	jadeMethodSources
initialize
{
initialize() updating;

begin
	self.myBank := Bank.firstInstance();
end;
}
	)
	Bank (
	jadeMethodSources
create
{
create() updating;

begin
	create self.myBankAcctSeqNum;
	create self.myCustomerSeqNum;
end;
}
delete
{
delete() updating;

begin
	delete self.myBankAcctSeqNum;
	delete self.myCustomerSeqNum;
end;
}
nextBankAcctNum
{
nextBankAcctNum() : Integer;

begin
	return self.myBankAcctSeqNum.next();
end;
}
nextCustomerNum
{
nextCustomerNum() : Integer;

begin
	return self.myCustomerSeqNum.next();
end;
}
	)
	BankAccount (
	jadeMethodSources
create
{
create() updating;

begin
	self.number := app.myBank.nextBankAcctNum();
end;
}
	)
	ChequeAccount (
	jadeMethodSources
setPropertiesOnCreate
{
setPropertiesOnCreate(pBalance : Decimal; pCustomer : Customer; pOverdraft : Decimal) updating;

begin
	self.balance := pBalance;
	self.overdraftLimit := pOverdraft;
	self.myCustomer := pCustomer;
	self.myBank := app.myBank;
end;
}
	)
	SavingsAccount (
	jadeMethodSources
setPropertiesOnCreate
{
setPropertiesOnCreate(pBalance : Decimal; pCustomer : Customer; pIntRate : Decimal) updating;

begin
	self.balance := pBalance;
	self.interestRate := pIntRate;
	self.myCustomer := pCustomer;
	self.myBank := myBank;
end;
}
	)
	Customer (
	jadeMethodSources
create
{
create() updating;

begin
	self.number := app.myBank.nextCustomerNum();
end;
}
setPropertiesOnUpdate
{
setPropertiesOnUpdate(pAddress: String; pFirstNames: String; pLastName: String) updating;

begin
	self.address := pAddress;
	self.firstName := pFirstNames;
	if self.lastName <> pLastName then
		self.lastName := pLastName;
	endif;
end;
}
setpropertiesoncreate
{
setpropertiesoncreate(pAddress : String; pFirstNames : String; pLastName : String) updating;

begin
	self.address := pAddress;
	self.firstName := pFirstNames;
	self.lastName := pLastName;
	self.myBank := app.myBank;
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
	dict : CustomerByLastName;
	cust : Customer;
	count : Integer;
begin
	dict := CustomerByLastName.firstInstance();
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
createBank
{
createBank();

vars
	bank: Bank;
begin
	beginTransaction;
	create bank persistent;
	commitTransaction;
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
createCustomerWithBankAccounts
{
createCustomerWithBankAccounts();

vars
	customer : Customer;
	chequeAcc : ChequeAccount;
	savingsAcc : SavingsAccount;
begin
	app.initialize();
	
	beginTransaction;
	create customer persistent;
	customer.setpropertiesoncreate('Wales', 'Tom', 'Jones');
	create chequeAcc persistent;
	chequeAcc.setPropertiesOnCreate(100, customer, 5000);
	create chequeAcc persistent;
	chequeAcc.setPropertiesOnCreate(650, customer, 2000);
	
	create savingsAcc persistent;
	savingsAcc.setPropertiesOnCreate(2000, customer, 0.05);
	create savingsAcc persistent;
	savingsAcc.setPropertiesOnCreate(1550, customer, 0.045);
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
begin
	app.initialize();
	create file transient;
	file.fileName := 'C:\Users\kaue0\.gitstuff\bit\606\lab4\files\customers.txt';
	file.kind := File.Kind_Unknown_Text;
	beginTransaction;
	while not file.endOfFile() do
		str := file.readLine();
		create cust persistent;
		cust.setpropertiesoncreate (str[41:end].trimBlanks(), str[16:25].trimBlanks(), str[1:15].trimBlanks());
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
	SequenceNumber (
	jadeMethodSources
next
{
next() : Integer updating;

begin
	self.number := self.number + 1;
	return self.number;
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
