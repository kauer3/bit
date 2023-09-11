/* JADE COMMAND FILE NAME C:\Documents and Settings\Owner\My Documents\Jade 6 Web Content Project\JADE 6.0 2 Course\Full course\Schemas\TransactionsAndLocks.jcf */
jadeVersionNumber "6.0.15";
schemaDefinition
TransactionsAndLocks subschemaOf RootSchema completeDefinition, patchVersion=1, patchVersioningEnabled = false;
importedPackageDefinitions
constantDefinitions
localeDefinitions
	5129 "English (New Zealand)";
	10249 "English (Belize)" _cloneOf 5129;
	1033 "English (United States)" _cloneOf 5129;
	11273 "English (Trinidad and Tobago)" _cloneOf 5129;
	2057 "English (United Kingdom)" _cloneOf 5129;
	3081 "English (Australia)" _cloneOf 5129;
	4105 "English (Canada)" _cloneOf 5129;
	6153 "English (Ireland)" _cloneOf 5129;
	7177 "English (South Africa)" _cloneOf 5129;
	8201 "English (Jamaica)" _cloneOf 5129;
	9225 "English (Caribbean)" _cloneOf 5129;
libraryDefinitions
typeHeaders
	Account subclassOf Object highestOrdinal = 3, number = 2379;
	TransactionsAndLocksApp subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestOrdinal = 2, number = 2380;
	Branch subclassOf Object highestSubId = 1, highestOrdinal = 2, number = 2381;
	TransactionsAndLocksGlobal subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2382;
	Source subclassOf Object highestOrdinal = 2, number = 2383;
	TransactionsAndLocksSession subclassOf RootSchemaSession transient, number = 2384;
	FrmLocking subclassOf Form transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestSubId = 1, highestOrdinal = 57, number = 2386;
	AccountsByNumber subclassOf MemberKeyDictionary number = 2387;
 
membershipDefinitions
	AccountsByNumber of Account ;
 
typeDefinitions
	Object completeDefinition
	(
	)
	Account completeDefinition
	(
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:02;
	attributeDefinitions
		balance:                       Decimal[12,2] readonly, number = 2, ordinal = 1;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:06;
		number:                        Integer readonly, number = 1, ordinal = 2;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
	referenceDefinitions
		myBranch:                      Branch   explicitEmbeddedInverse, readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
 
	jadeMethodDefinitions
		setBalance(value: Decimal) updating, number = 1002;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
		setBranch(value: Branch) updating, number = 1003;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
		setNumber(value: Integer) updating, number = 1001;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	TransactionsAndLocksApp completeDefinition
	(
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:06;
	attributeDefinitions
		instructionTime:               Integer readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:10:14:26.152;
	referenceDefinitions
		myBranch:                      Branch  number = 1, ordinal = 1;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
 
	jadeMethodDefinitions
		addAccounts() number = 1003;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
		addSources() number = 1002;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:11:35:03.416;
		initialize() updating, number = 1001;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:10:15:42.355;
		pause() number = 1005;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:11:33:53.979;
		setInstructionTime(pTime: Integer) updating, number = 1004;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:10:15:16.730;
	)
	Branch completeDefinition
	(
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:06;
	attributeDefinitions
		name:                          String[31] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
	referenceDefinitions
		allAccounts:                   AccountsByNumber   explicitInverse, readonly, subId = 1, number = 2, ordinal = 2;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
 
	jadeMethodDefinitions
		setName(value: String) updating, number = 1001;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	TransactionsAndLocksGlobal completeDefinition
	(
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:06;
	)
	JadeScript completeDefinition
	(
 
	jadeMethodDefinitions
		deleteAll() number = 1001;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
	)
	Source completeDefinition
	(
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:06;
	attributeDefinitions
		code:                          String subId = 1, number = 2, ordinal = 1;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
		name:                          String[41] number = 1, ordinal = 2;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:07;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	TransactionsAndLocksSession completeDefinition
	(
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:06;
	)
	Window completeDefinition
	(
	)
	Form completeDefinition
	(
	)
	FrmLocking completeDefinition
	(
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:13:25:13.585;
	constantDefinitions
		TIMER_EXECUTING:               Integer = 1;
		setModifiedTimeStamp "Owner" "6.0.15" 1 2003:05:12:11:27:23;
	referenceDefinitions
		btnAbortTrans:                 Button  number = 28, ordinal = 1;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnBeginLoad:                  Button  number = 10, ordinal = 2;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnBeginLock:                  Button  number = 23, ordinal = 3;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnBeginTrans:                 Button  number = 2, ordinal = 4;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnClear:                      Button  number = 12, ordinal = 5;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnCommitTrans:                Button  number = 26, ordinal = 6;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnCreate:                     Button  number = 16, ordinal = 7;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnDelete:                     Button  number = 15, ordinal = 8;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnEndLoad:                    Button  number = 25, ordinal = 9;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnEndLock:                    Button  number = 24, ordinal = 10;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnExecute:                    Button  number = 48, ordinal = 11;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnLock:                       Button  number = 5, ordinal = 12;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnUnlock:                     Button  number = 11, ordinal = 13;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnUpdateAccount:              Button  number = 17, ordinal = 14;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnUpdateBranch:               Button  number = 57, ordinal = 15;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		cmbMethods:                    ComboBox  number = 54, ordinal = 16;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		folder:                        Folder  number = 43, ordinal = 18;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		grpDuration:                   GroupBox  number = 8, ordinal = 19;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		grpObjects:                    GroupBox  number = 33, ordinal = 20;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		grpTransactions:               GroupBox  number = 40, ordinal = 21;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		grpType:                       GroupBox  number = 9, ordinal = 22;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		lblReadLoad:                   Label  number = 30, ordinal = 23;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		lblReadLock:                   Label  number = 31, ordinal = 24;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		lblSpeed:                      Label  number = 50, ordinal = 25;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		lblTimeout:                    Label  number = 7, ordinal = 26;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		lblUpdateTrans:                Label  number = 4, ordinal = 27;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		menu:                          MenuItem  number = 51, ordinal = 28;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		menuStartAppInNewNode:         MenuItem  number = 53, ordinal = 29;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		menuStartAppInSameNode:        MenuItem  number = 52, ordinal = 30;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		optBranch:                     OptionButton  number = 27, ordinal = 34;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		optCollection:                 OptionButton  number = 35, ordinal = 35;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		optExclusive:                  OptionButton  number = 22, ordinal = 36;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		optReserve:                    OptionButton  number = 21, ordinal = 37;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		optSession:                    OptionButton  number = 18, ordinal = 38;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		optShare:                      OptionButton  number = 20, ordinal = 39;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		optTransaction:                OptionButton  number = 19, ordinal = 40;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		pctAccountForm:                Picture  number = 3, ordinal = 41;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		pctBranchForm:                 Picture  number = 41, ordinal = 42;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		pctColectionForm:              Picture  number = 13, ordinal = 43;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		scrInstructTime:               HScroll  number = 49, ordinal = 44;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		shtInstructions:               Sheet  number = 46, ordinal = 45;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		shtWorkspace:                  Sheet  number = 47, ordinal = 46;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		staLine:                       StatusLine  number = 1, ordinal = 47;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		tblAccounts:                   Table  number = 44, ordinal = 48;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		tblBranch:                     Table  number = 36, ordinal = 49;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		tblCollection:                 Table  number = 37, ordinal = 50;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		txtBalance:                    TextBox  number = 42, ordinal = 51;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		txtEditionAcount:              TextBox  number = 32, ordinal = 52;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		txtEditionBranch:              TextBox  number = 55, ordinal = 53;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		txtEditionColl:                TextBox  number = 29, ordinal = 54;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		txtName:                       TextBox  number = 56, ordinal = 55;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		txtNumber:                     TextBox  number = 14, ordinal = 56;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		txtSource:                     TextBox  number = 34, ordinal = 17;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		txtTimeout:                    TextBox  number = 6, ordinal = 57;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
 
	jadeMethodDefinitions
		alignAccountOptionButtons() updating, number = 1036;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnAbortTrans_click(btn: Button input) updating, number = 1011;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnBeginLoad_click(btn: Button input) updating, number = 1006;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnBeginLock_click(btn: Button input) updating, number = 1015;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnBeginTrans_click(btn: Button input) updating, number = 1007;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnClear_click(btn: Button input) updating, number = 1013;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnCommitTrans_click(btn: Button input) updating, number = 1019;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnCreate_click(btn: Button input) updating, number = 1001;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnDelete_click(btn: Button input) updating, number = 1003;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnEndLoad_click(btn: Button input) updating, number = 1017;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnEndLock_click(btn: Button input) updating, number = 1018;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnExecute_click(btn: Button input) updating, number = 1048;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:13:24:41.820;
		btnLock_click(btn: Button input) updating, number = 1005;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnUnlock_click(btn: Button input) updating, number = 1008;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnUpdateAccount_click(btn: Button input) updating, number = 1004;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		btnUpdateBranch_click(btn: Button input) updating, number = 1042;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		cmbMethods_click(combobox: ComboBox input) updating, number = 1054;
		setModifiedTimeStamp "Owner" "6.0.15" 1 2003:05:12:10:56:51.354;
		cmbMethods_displayEntry(
			combobox: ComboBox input; 
			obj: Any; 
			lstIndex: Integer): String updating, number = 1052;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		codebox_nextInstruction() updating, number = 1027;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		contextMenu(
			conwin: Window input; 
			mouse: Boolean; 
			x: Integer; 
			y: Integer): Boolean updating, number = 1050;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		createAccount() number = 1037;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		createOptionButton(
			acct: Object; 
			row: Integer): OptionButton updating, number = 1031;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:10:31:58.166;
		deleteAccount() updating, number = 1038;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		deselectObject() number = 1021;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:10:33:51.791;
		displayAccounts() updating, number = 1026;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:11:02:46.135;
		displayBranch() updating, number = 1045;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:11:02:56.479;
		displayCollection() updating, number = 1046;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:11:20:11.775;
		displayLocks() updating, number = 1043;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		findOptionButtonFromAccount(acct: Account): OptionButton number = 1047;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		findSelectedOptionButton(): OptionButton number = 1035;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		findTableRowFromOptionButton(opt: OptionButton): Integer number = 1028;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		handlerDeadlock(exObj: DeadlockException): Integer number = 1002;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:08;
		handlerException(exObj: Exception): Integer number = 1014;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		handlerLock(exObj: LockException): Integer number = 1010;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		keyDown(
			keyCode: Integer io; 
			shift: Integer) updating, number = 1034;
		setModifiedTimeStamp "Owner" "6.0.15" 1 2003:05:12:10:56:51.354;
		load() updating, number = 1012;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:10:44:34.260;
		lockObject(object: Object) number = 1040;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		menuStartAppInNewNode_click(menuItem: MenuItem input) updating, number = 1053;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		menuStartAppInSameNode_click(menuItem: MenuItem input) updating, number = 1051;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		optBranch_click(optionbutton: OptionButton input) updating, number = 1033;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		optCollection_click(optionbutton: OptionButton input) updating, number = 1041;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		optionButtonClick(optionbutton: OptionButton input) updating, number = 1030;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		pctAccountForm_mouseUp(
			pict: Picture input; 
			button: Integer; 
			shift: Integer; 
			x: Real; 
			y: Real) updating, number = 1057;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		pctBranchForm_mouseUp(
			pict: Picture input; 
			button: Integer; 
			shift: Integer; 
			x: Real; 
			y: Real) updating, number = 1058;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		pctColectionForm_mouseUp(
			pict: Picture input; 
			button: Integer; 
			shift: Integer; 
			x: Real; 
			y: Real) updating, number = 1059;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		reportLockStatus(
			obj: Object; 
			tbl: Table io; 
			row: Integer; 
			col: Integer) number = 1009;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		reportTransactionStatus() number = 1024;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:11:36:37.104;
		scrInstructTime_change(scroll: ScrollBar input) updating, number = 1049;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:10:47:51.182;
		startAnotherProcess() updating, number = 1023;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		sysNotify(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer) updating, number = 1020;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:11:25:26.463;
		tblAccounts_click(table: Table input) updating, number = 1029;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:10:37:00.651;
		tblBranch_click(table: Table input) updating, number = 1022;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:10:33:57.838;
		tblCollection_click(table: Table input) updating, number = 1032;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:10:34:08.510;
		timerEvent(eventTag: Integer) updating, number = 1025;
		setModifiedTimeStamp "owner" "6.0.15" 1 2003:05:12:11:36:29.244;
		unload() updating, number = 1016;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		updateAccount() number = 1039;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
		updateBranch() number = 1055;
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:09;
 
	eventMethodMappings
		btnAbortTrans_click = click of Button;
		btnBeginLoad_click = click of Button;
		btnBeginLock_click = click of Button;
		btnBeginTrans_click = click of Button;
		btnClear_click = click of Button;
		btnCommitTrans_click = click of Button;
		btnCreate_click = click of Button;
		btnDelete_click = click of Button;
		btnEndLoad_click = click of Button;
		btnEndLock_click = click of Button;
		btnExecute_click = click of Button;
		btnLock_click = click of Button;
		btnUnlock_click = click of Button;
		btnUpdateAccount_click = click of Button;
		btnUpdateBranch_click = click of Button;
		cmbMethods_click = click of ComboBox;
		cmbMethods_displayEntry = displayEntry of ComboBox;
		contextMenu = contextMenu of Form;
		keyDown = keyDown of Form;
		load = load of Form;
		menuStartAppInNewNode_click = click of MenuItem;
		menuStartAppInSameNode_click = click of MenuItem;
		optBranch_click = click of OptionButton;
		optCollection_click = click of OptionButton;
		pctAccountForm_mouseUp = mouseUp of Picture;
		pctBranchForm_mouseUp = mouseUp of Picture;
		pctColectionForm_mouseUp = mouseUp of Picture;
		scrInstructTime_change = change of ScrollBar;
		sysNotify = sysNotify of Form;
		tblAccounts_click = click of Table;
		tblBranch_click = click of Table;
		tblCollection_click = click of Table;
		unload = unload of Form;
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
	AccountsByNumber completeDefinition
	(
		setModifiedTimeStamp "owner" "5.2.08" 1 2003:05:09:11:04:06;
	)
 
memberKeyDefinitions
	AccountsByNumber completeDefinition
	(
		number;
	)
 
inverseDefinitions
	allAccounts of Branch automatic parentOf myBranch of Account manual;
databaseDefinitions
TransactionsAndLocksDb
	(
	databaseFileDefinitions
		"tranlock" number=110;
	defaultFileDefinition "tranlock";
	classMapDefinitions
		TransactionsAndLocksApp in "_usergui";
		TransactionsAndLocksGlobal in "tranlock";
		TransactionsAndLocksSession in "tranlock";
		Branch in "tranlock";
		Account in "tranlock";
		AccountsByNumber in "tranlock";
		Source in "tranlock";
	)
schemaViewDefinitions
_remapTableDefinitions
CnwchcS17 description="S17 Location"
(
)
CnwchcS18 description="S18 Location"
(
)
Dumb description="Dinoing"
(
)
Extra description=""
(
)
Foo description="Foo"
(
)
Howaboutthisfortoolonghowab description="How about this for too long"
(
)
Production description="production version"
(
)
Remap01 description="Description"
(
)
System description="Default location"
(
)
Test description="Test version "
(
)
exportedPackageDefinitions
externalFunctionSources
typeSources
	Account (
	jadeMethodSources
setBalance
{
setBalance(value : Decimal) updating;

begin
	if balance <> value then 
		balance := value;
	endif;
end;
}

setBranch
{
setBranch(value : Branch) updating;

begin
	if myBranch <> value then 
		myBranch := value;
	endif;
end;
}

setNumber
{
setNumber(value : Integer) updating;

begin
	if number <> value then 
		number := value;
	endif;
end;
}

	)
	TransactionsAndLocksApp (
	jadeMethodSources
addAccounts
{
addAccounts();

vars
	acct : Account;
begin
	Account.instances.purge;

	create acct;
	acct.setBalance(745.50);
	acct.setNumber(111111);
	acct.setBranch(myBranch);
	create acct;
	acct.setBalance(245.00);
	acct.setNumber(222222);
	acct.setBranch(myBranch);
	create acct;
	acct.setBalance(1297.80);
	acct.setNumber(333333);
	acct.setBranch(myBranch);
end;
}

addSources
{
addSources();

vars
	src : Source;
begin
	Source.instances.purge;

	create src;
	src.name := ' ';
	src.code :=
'vars

begin

end;';
// Example 1
	create src;
	src.name := 'Example 1 - Update Transactions (1)';
	src.code :=
'vars
	coll : AccountsByNumber;
	acct : Account;
begin
	beginTransaction;
	coll := app.myBranch.allAccounts;
	foreach acct in coll do
		acct.setBalance(acct.balance - 1);
		app.pause;
	endforeach;
	app.pause;
	commitTransaction;
end;';
// Example 2
	create src;
	src.name := 'Example 2 - Update Transactions (2)';
	src.code :=
'vars
	coll : AccountsByNumber;
	acct : Account;
begin
	beginTransaction;
	coll := app.myBranch.allAccounts;
	foreach acct in coll do
		acct.setNumber(acct.number - 1);
		app.pause;
	endforeach;
	app.pause;
	commitTransaction;
end;';
// Example 3
	create src;
	src.name := 'Example 3 - Read Transactions (1)';
	src.code :=
'vars
	coll : AccountsByNumber;
	acct : Account;
begin
	beginLock;
	coll := app.myBranch.allAccounts;
	foreach acct in coll do
		write acct;
		app.pause;
	endforeach;
	app.pause;
	endLock;
end;';
// Example 4
	create src;
	src.name := 'Example 4 - Read Transactions (2)';
	src.code :=
'vars
	coll : AccountsByNumber;
	acct : Account;
begin
	beginLock;
	coll := app.myBranch.allAccounts;
	foreach acct in coll do
		write acct.number;
		app.pause;
	endforeach;
	app.pause;
	endLock;
end;';
// Example 5
	create src;
	src.name := 'Example 5 - Read Transactions (3)';
	src.code :=
'vars
	coll : AccountsByNumber;
	acct : Account;
begin
	beginLock;
	coll := app.myBranch.allAccounts;
	foreach acct in coll reversed do
		write acct.number;
		app.pause;
	endforeach;
	app.pause;
	endLock;
end;';
// Example 6
	create src;
	src.name := 'Example 6 - Collection Methods';
	src.code :=
"vars
	coll : AccountsByNumber;
	acct : Account;
begin
	coll := app.myBranch.allAccounts;
//	In another process, exclusively lock coll
	acct := Account.firstInstance;
	if coll.includes(acct) then
		write 'yes';
	else
		write 'no';
	endif;
end;";
// Example 7
	create src;
	src.name := 'Example 7 - Iterators (1)';
	src.code :=
'vars
	coll : AccountsByNumber;
	acct : Account;
	iter : Iterator;
begin
	beginLock;
	coll := app.myBranch.allAccounts;
	iter := coll.createIterator;
	while iter.next(acct) do
		write acct.number;
		app.pause;
	endwhile;
	app.pause;
	endLock;
epilog
	delete iter;
end;';
// Example 7
	create src;
	src.name := 'Example 8 - Iterators (2)';
	src.code :=
'vars
	coll : AccountsByNumber;
	acct : Account;
	iter : Iterator;
begin
	beginLock;
	coll := app.myBranch.allAccounts;
	iter := coll.createIterator;
	while iter.next(acct) do
		write iter.getCurrentKey(1);
		app.pause;
	endwhile;
	app.pause;
	endLock;
epilog
	delete iter;
end;';

end;
}

initialize
{
initialize() updating;

begin
	self.myBranch 			:= Branch.firstInstance;
	self.instructionTime	:= 1000;
	if myBranch = null then
		beginTransaction;
		create myBranch;
		myBranch.setName('Central City');
		addAccounts;
		commitTransaction;
	endif;
	if Source.firstInstance = null then
		beginTransaction;
		addSources;
		commitTransaction;
	endif;
end;
}

pause
{
pause();

vars

begin
	app.doWindowEvents(self.instructionTime);
end;
}

setInstructionTime
{
setInstructionTime(pTime :Integer) updating;

vars

begin
	self.instructionTime	:= pTime;
end;
}

	)
	Branch (
	jadeMethodSources
setName
{
setName(value : String) updating;

begin
	if name <> value then 
		name := value;
	endif;
end;
}

	)
	JadeScript (
	jadeMethodSources
deleteAll
{
deleteAll();

begin
	beginTransaction;
	delete Branch.firstInstance;
	Source.instances.purge;
	commitTransaction;
end;
}

	)
	FrmLocking (
	jadeMethodSources
alignAccountOptionButtons
{
alignAccountOptionButtons() updating;

vars
	obj : Object;
	row : Integer;
	i : Integer;
	ctl : Control;
begin
	foreach row in 1 to tblAccounts.rows do
		obj := tblAccounts.accessCell(row, 1).itemObject;
		foreach i in 1 to controlCount do
			ctl := controls(i);
			if ctl = obj then
				ctl.top := tblAccounts.top + row * 17 - 18;
			endif;
		endforeach;
	endforeach;
end;
}

btnAbortTrans_click
{
btnAbortTrans_click(btn : Button input) updating;

begin
	staLine.caption := null;
	abortTransaction;
	pctBranchForm.visible := false;
	pctColectionForm.visible := false;
	pctAccountForm.visible := false;
	deselectObject;
	reportTransactionStatus;
	displayLocks;
end;
}

btnBeginLoad_click
{
btnBeginLoad_click(btn : Button input) updating;

begin
	staLine.caption := null;
	beginLoad;
	reportTransactionStatus;
end;
}

btnBeginLock_click
{
btnBeginLock_click(btn : Button input) updating;

begin
	staLine.caption := null;
	beginLock;
	reportTransactionStatus;
end;
}

btnBeginTrans_click
{
btnBeginTrans_click(btn : Button input) updating;

begin
	staLine.caption := null;
	beginTransaction;
	reportTransactionStatus;
end;
}

btnClear_click
{
btnClear_click(btn : Button input) updating;

begin
	staLine.caption := null;
	deselectObject;
	txtNumber.setFocus;
end;
}

btnCommitTrans_click
{
btnCommitTrans_click(btn : Button input) updating;

begin
	staLine.caption := null;
	commitTransaction;
	pctBranchForm.visible := false;
	pctColectionForm.visible := false;
	pctAccountForm.visible := false;
	deselectObject;
	reportTransactionStatus;
	displayLocks;
end;
}

btnCreate_click
{
btnCreate_click(btn : Button input) updating;

begin
	staLine.caption := null;
	createAccount;
	displayLocks;
end;
}

btnDelete_click
{
btnDelete_click(btn : Button input) updating;

begin
	staLine.caption := null;
	deleteAccount;
	displayLocks;
end;
}

btnEndLoad_click
{
btnEndLoad_click(btn : Button input) updating;

begin
	staLine.caption := null;
	endLoad;
	reportTransactionStatus;
	displayLocks;
end;
}

btnEndLock_click
{
btnEndLock_click(btn : Button input) updating;

begin
	staLine.caption := null;
	endLock;
	reportTransactionStatus;
	displayLocks;
end;
}

btnExecute_click
{
btnExecute_click(btn : Button input) updating;

vars
	strSource	:String;
	intStart, intFinish, intError, intPos, intLen		: Integer;
begin
	app.mousePointer	:= MousePointer_HourGlass;
	staLine.caption		:= null;
	staLine.refreshNow;
	
	strSource 			:= txtSource.text;

	self.beginTimer(200, Timer_Continuous, TIMER_EXECUTING); 
	
	staLine.caption		:= 'Executing...';
	staLine.refreshNow;

	intStart := app.clock;

	process.executeScript('normal', class, currentSchema, strSource, true, null, 
								intError, intPos, intLen, self);
								
	if intError <> null then
		staLine.caption := 'Error ' & intError.String & ' - ' & process.getErrorText(intError);
		return;
	endif;								

	intFinish := app.clock;
	staLine.caption := 'Execution complete - elapsed time ' & (intFinish - intStart).Time.String;
epilog
	self.endTimer(TIMER_EXECUTING);
	self.reportTransactionStatus;
	self.displayLocks;
	
	app.mousePointer	:= MousePointer_Default;	
end;
}

btnLock_click
{
btnLock_click(btn : Button input) updating;

vars
	opt : OptionButton;
	obj : Object;
	row : Integer;
begin
	staLine.caption := null;
	opt := findSelectedOptionButton;
	if opt = null then
		staLine.caption := 'Select an object first';
	elseif opt = optBranch then
		obj := app.myBranch;
		lockObject(obj);
		reportLockStatus(obj, tblBranch, 1, 2);
	elseif opt = optCollection then
		obj := app.myBranch.allAccounts;
		lockObject(obj);
		reportLockStatus(obj, tblCollection, 1, 2);
	else
		obj := opt.userObject;
		row := findTableRowFromOptionButton(opt);
		lockObject(obj);
		reportLockStatus(obj, tblAccounts, row, 4);
	endif;
end;
}

btnUnlock_click
{
btnUnlock_click(btn : Button input) updating;

vars
	opt : OptionButton;
	obj : Object;
	row : Integer;
begin
	staLine.caption := null;
	opt := findSelectedOptionButton;
	if opt = null then
		staLine.caption := 'Select an object first';
	elseif opt = optBranch then
		obj := app.myBranch;
		unlock(obj);
		reportLockStatus(obj, tblBranch, 1, 2);
	elseif opt = optCollection then
		obj := app.myBranch.allAccounts;
		unlock(obj);
		reportLockStatus(obj, tblCollection, 1, 2);
	else
		obj := opt.userObject;
		row := findTableRowFromOptionButton(opt);
		unlock(obj);
		reportLockStatus(obj, tblAccounts, row, 4);
	endif;
end;
}

btnUpdateAccount_click
{
btnUpdateAccount_click(btn : Button input) updating;

begin
	staLine.caption := null;
	updateAccount;
	displayLocks;
end;
}

btnUpdateBranch_click
{
btnUpdateBranch_click(btn : Button input) updating;

begin
	staLine.caption := null;
	updateBranch;
	displayLocks;
end;
}

cmbMethods_click
{
cmbMethods_click(combobox : ComboBox input) updating;

begin
	staLine.caption := null;
	txtSource.text := combobox.listObject.Source.code;
end;
}

cmbMethods_displayEntry
{
cmbMethods_displayEntry(combobox : ComboBox input; obj : Any; lstIndex : Integer):String updating;

begin
	return obj.Source.name;
end;
}

codebox_nextInstruction
{
codebox_nextInstruction() updating;

begin
	reportTransactionStatus;
	displayLocks;
end;
}

contextMenu
{
contextMenu(conwin : Window input; mouse : Boolean; x : Integer; y : Integer) : Boolean updating;

vars
	xReal, yReal : Real;
begin
	xReal := x.Real;
	yReal := y.Real;
	conwin.windowToScreen(xReal, yReal);
	screenToWindow(xReal, yReal);
	popupMenu(menu, xReal.Integer, yReal.Integer);
	return false;
end;
}

createAccount
{
createAccount();

vars
	acct : Account;
begin
	if txtNumber.text = null then
		staLine.caption := 'Enter a number for the new account';
		txtNumber.setFocus;
	elseif txtBalance.text = null then
		staLine.caption := 'Enter a balance for the new account';
		txtBalance.setFocus;
	else
		create acct;
		app.mousePointer := MousePointer_HourGlass;
		acct.setBalance(txtBalance.text.Decimal);
		acct.setNumber(txtNumber.text.Integer);
		acct.setBranch(app.myBranch);
	endif;
epilog
	app.mousePointer := MousePointer_Default;
end;
}

createOptionButton
{
createOptionButton(acct : Object; row : Integer) : OptionButton updating;

vars
	opt : OptionButton;
begin
	create opt transient;
	opt.left := tblAccounts.left - 17;
	opt.top := tblAccounts.top + row * 17 - 18;
	opt.caption := null;
	opt.backColor := self.backColor;
	opt.tag := 'object';
	opt.parent := grpObjects;
	opt.userObject := acct;
	addControl(opt);
	opt.setEventMapping('click', 'optionButtonClick');
	return opt;
end;
}

deleteAccount
{
deleteAccount() updating;

vars
	opt : OptionButton;
	acct : Account;
begin
	opt := findSelectedOptionButton;
	if opt = null then
		staLine.caption := 'Select an account first';
	else
		acct := opt.userObject.Account;
		app.mousePointer := MousePointer_HourGlass;
		delete acct;
	endif;
epilog
	app.mousePointer := MousePointer_Default;
end;
}

deselectObject
{
deselectObject();

vars
	row : Integer;
	opt : OptionButton;
begin
	txtName.text := null;
	txtNumber.text := null;
	txtBalance.text := null;
	txtEditionBranch.text := null;
	txtEditionColl.text := null;
	txtEditionAcount.text := null;
	tblBranch.accessRow(1).foreColor := Black;
	tblCollection.accessRow(1).foreColor := Black;
	foreach row in 1 to tblAccounts.rows do
		tblAccounts.accessRow(row).foreColor := Black;
	endforeach;
	opt := findSelectedOptionButton;
	if opt <> null then
		opt.value := false;
	endif;
end;
}

displayAccounts
{
displayAccounts() updating;

vars
	accts : AccountsByNumber;
	acct : Account;
	iter : Iterator;
	row : Integer;
	col : JadeTableColumn;
	cell : JadeTableCell;
begin
	accts := app.myBranch.allAccounts;
	col := tblAccounts.accessColumn(1);
	col.width := 97;
	col.alignment := Table.Alignment_Left;
	col := tblAccounts.accessColumn(2);
	col.width := 47;
	col.alignment := Table.Alignment_Right;
	col := tblAccounts.accessColumn(3);
	col.width := 57;
	col.alignment := Table.Alignment_Right;
	col := tblAccounts.accessColumn(4);
	col.width := 64;
	col.alignment := Table.Alignment_Center;
	col.fontBold := true;
	col.foreColor := Red;
	col := tblAccounts.accessColumn(5);
	col.width := 74;
	col.alignment := Table.Alignment_Center;
	col.fontBold := true;
	col.foreColor := Red;
	tblAccounts.rows := accts.size;
	iter := accts.createIterator;
	while iter.next(acct) do
		row := row + 1;
		cell := tblAccounts.accessCell(row, 1);
		cell.text := 'Account (edition ' & acct.edition.String & ')' & Tab
					& '#' & acct.number.String.padLeadingZeros(6) & Tab & acct.balance.currencyFormat;
		cell.itemObject := createOptionButton(acct, row);
		reportLockStatus(acct, tblAccounts, row, 4);
	endwhile;
epilog
	delete iter;
end;
}

displayBranch
{
displayBranch() updating;

vars
	brch : Branch;
	col : JadeTableColumn;
	cell : JadeTableCell;
begin
	brch := app.myBranch;
	col := tblBranch.accessColumn(1);
	col.alignment := Table.Alignment_Left;
	col.width := 236;
	col := tblBranch.accessColumn(2);
	col.alignment := Table.Alignment_Center;
	col.width := 64;
	col.fontBold := true;
	col.foreColor := Red;
	col := tblBranch.accessColumn(3);
	col.alignment := Table.Alignment_Center;
	col.width := 74;
	col.fontBold := true;
	col.foreColor := Red;
	cell := tblBranch.accessCell(1, 1);
	cell.text := 'Branch (edition ' & brch.edition.String & ')';
	reportLockStatus(brch, tblBranch, 1, 2);
end;
}

displayCollection
{
displayCollection() updating;

vars
	accts : AccountsByNumber;
	col : JadeTableColumn;
	cell : JadeTableCell;
begin
	accts := app.myBranch.allAccounts;
	col := tblCollection.accessColumn(1);
	col.alignment := Table.Alignment_Left;
	col.width := 220;
	col := tblCollection.accessColumn(2);
	col.alignment := Table.Alignment_Center;
	col.width := 64;
	col.fontBold := true;
	col.foreColor := Red;
	col := tblCollection.accessColumn(3);
	col.alignment := Table.Alignment_Center;
	col.width := 74;
	col.fontBold := true;
	col.foreColor := Red;
	cell := tblCollection.accessCell(1, 1);
	cell.text := 'Collection (edition ' & accts.edition.String & ')';
	reportLockStatus(accts, tblCollection, 1, 2);
end;
}

displayLocks
{
displayLocks() updating;

vars
	brch : Branch;
	accts : AccountsByNumber;
	acct : Account;
	row : Integer;
	cell : JadeTableCell;
	opt : OptionButton;
begin
	brch := app.myBranch;
	reportLockStatus(brch, tblBranch, 1, 2);

	accts := brch.allAccounts;
	reportLockStatus(accts, tblCollection, 1, 2);

	foreach row in 1 to tblAccounts.rows do
		cell := tblAccounts.accessCell(row, 1);
		opt := cell.itemObject.OptionButton;
		acct := opt.userObject.Account;
		reportLockStatus(acct, tblAccounts, row, 4);
	endforeach;
end;
}

findOptionButtonFromAccount
{
findOptionButtonFromAccount(acct : Account) : OptionButton;

vars
	i : Integer;
	ctl : Control;
	opt : OptionButton;
begin
	foreach i in 1 to controlCount do
		ctl := controls(i);
		if ctl.isKindOf(OptionButton) then
			opt := ctl.OptionButton;
			if opt.tag = 'object' and opt.userObject = acct then
				return opt;
			endif;
		endif;
	endforeach;
end;
}

findSelectedOptionButton
{
findSelectedOptionButton() : OptionButton;

vars
	i : Integer;
	ctl : Control;
	opt : OptionButton;
begin
	foreach i in 1 to controlCount do
		ctl := controls(i);
		if ctl.isKindOf(OptionButton) then
			opt := ctl.OptionButton;
			if opt.value and opt.tag = 'object' then
				return opt;
			endif;
		endif;
	endforeach;
end;
}

findTableRowFromOptionButton
{
findTableRowFromOptionButton(opt : OptionButton) : Integer;

vars
	row : Integer;
begin
	foreach row in 1 to tblAccounts.rows do
		if tblAccounts.accessCell(row, 1).itemObject = opt then
			return row;
		endif;
	endforeach;
end;
}

handlerDeadlock
{
handlerDeadlock(exObj : DeadlockException) : Integer;

vars
	proc : Process;
begin
	proc := exObj.targetLockedBy;
	staLine.caption := exObj.errorCode.String & ': Deadlock with ' & proc.String;
	beginTimer(0, Timer_OneShot, 0);
	return Ex_Abort_Action;
end;
}

handlerException
{
handlerException(exObj : Exception) : Integer;

begin
	staLine.caption := exObj.errorCode.String & ': ' & exObj.text;
	beginTimer(0, Timer_OneShot, 0);
	return Ex_Abort_Action;
end;
}

handlerLock
{
handlerLock(exObj : LockException) : Integer;

vars
	proc : Process;
	target : Object;
begin
	proc := exObj.targetLockedBy;
	target := exObj.lockTarget;
	if target = app.myBranch then
		staLine.caption := exObj.errorCode.String & ': Branch object locked by ' & proc.String;
	elseif target = app.myBranch.allAccounts then
		staLine.caption := exObj.errorCode.String & ': Collection object locked by ' & proc.String;
	else
		staLine.caption := exObj.errorCode.String & ': Account object locked by ' & proc.String;
	endif;
	if exObj.lockType = 0 then
		staLine.caption := staLine.caption & " ('dirty' read attempt)";
	endif;
	beginTimer(0, Timer_OneShot, 0);
	return Ex_Abort_Action;
end;
}

keyDown
{
keyDown(keyCode : Integer io; shift : Integer) updating;

begin
	txtSource.keyDown(txtSource, keyCode, shift);
end;
}

load
{
load() updating;

begin
	on Exception do handlerException(exception) global;
	on LockException do handlerLock(exception) global;
	on DeadlockException do handlerDeadlock(exception) global;
	
	beginNotification(app.myBranch, Object_Update_Event, Response_Continuous, Branch.number);
	beginClassNotification(Account, false, Any_System_Event, Response_Continuous, 0);
	
	caption 				:= process.String & '      ' & node.String & '          Locking and Transactions';
	scrInstructTime.value	:= 1000;
	
	self.displayBranch;
	self.displayCollection;
	self.displayAccounts;
	cmbMethods.listCollection(Source.instances, false, 0);

	self.startAnotherProcess;
end;
}

lockObject
{
lockObject(object : Object);

vars
	type : Integer;
	dur : Integer;
	time : Integer;
begin
	if optExclusive.value then
		type := Exclusive_Lock;
	elseif optReserve.value then
		type := Reserve_Lock;
	elseif optShare.value then
		type := Share_Lock;
	else
		staLine.caption := "Select a lock type first";
		return;		
	endif;

	if optTransaction.value then
		dur := Transaction_Duration;
	elseif optSession.value then
		dur := Session_Duration;
	else
		staLine.caption := "Select a lock duration first";
		return;
	endif;

	time := txtTimeout.text.Integer;
	app.mousePointer := MousePointer_HourGlass;
	lock(object, type, dur, time);
epilog
	app.mousePointer := MousePointer_Default;
end;
}

menuStartAppInNewNode_click
{
menuStartAppInNewNode_click(menuItem : MenuItem input) updating;

begin
	app.createExternalProcess(app.getJadeInstallDir & '\jade.exe' &
							  ' path=' & app.dbPath &
							  ' host=' & app.dbServerComputerName &
							  ' ini=' & app.getIniFileName &
							  ' schema=' & currentSchema.name &
							  ' app=' & app.name, false);
end;
}

menuStartAppInSameNode_click
{
menuStartAppInSameNode_click(menuItem : MenuItem input) updating;

begin
	app.startApplication(currentSchema.name, app.name);
end;
}

optBranch_click
{
optBranch_click(optionbutton : OptionButton input) updating;

begin
	tblBranch_click(tblBranch);
end;
}

optCollection_click
{
optCollection_click(optionbutton : OptionButton input) updating;

begin
	tblCollection_click(tblCollection);
end;
}

optionButtonClick
{
optionButtonClick(optionbutton : OptionButton input) updating;

begin
	tblAccounts.row := findTableRowFromOptionButton(optionbutton);
	tblAccounts_click(tblAccounts);
end;
}

pctAccountForm_mouseUp
{
pctAccountForm_mouseUp(pict : Picture input; button : Integer; shift : Integer; x : Real; y : Real) updating;

begin
	if x > 322 and x < 339 and y > 5 and y < 20 then
		pict.visible := false;
		deselectObject;
		abortTransaction;
		reportTransactionStatus;
		displayLocks;
	endif;
end;
}

pctBranchForm_mouseUp
{
pctBranchForm_mouseUp(pict : Picture input; button : Integer; shift : Integer; x : Real; y : Real) updating;

begin
	if x > 322 and x < 339 and y > 5 and y < 20 then
		pict.visible := false;
		deselectObject;
		abortTransaction;
		reportTransactionStatus;
		displayLocks;
	endif;
end;
}

pctColectionForm_mouseUp
{
pctColectionForm_mouseUp(pict : Picture input; button : Integer; shift : Integer; x : Real; y : Real) updating;

begin
	if x > 322 and x < 339 and y > 5 and y < 20 then
		pict.visible := false;
		deselectObject;
		abortTransaction;
		reportTransactionStatus;
		displayLocks;
	endif;
end;
}

reportLockStatus
{
reportLockStatus(obj : Object; tbl : Table io; row : Integer; col : Integer);

vars
	lockType : Integer;
	lockDuration : Integer;
	lockedBy : Process;
	cell : JadeTableCell;
begin
	getLockStatus(obj, lockType, lockDuration, lockedBy);
	cell := tbl.accessCell(row, col);
	if lockedBy = null then
		cell.text := null;
	else
		if lockType = Exclusive_Lock then
			cell.text := 'Exclusive';
		elseif lockType = Reserve_Lock then
			cell.text := 'Reserve';
		elseif lockType = Share_Lock then
			cell.text := 'Share';
		endif;
	endif;
	cell := tbl.accessCell(row, col + 1);
	if lockedBy = null then
		cell.text := null;
	else
		if lockDuration = Transaction_Duration then
			cell.text := 'Transaction';
		elseif lockDuration = Session_Duration then
			cell.text := 'Session';
		endif;
	endif;
end;
}

reportTransactionStatus
{
reportTransactionStatus();

begin
	lblUpdateTrans.visible 	:= process.isInTransactionState;
	lblReadLoad.visible 	:= process.isInLoadState;
	lblReadLock.visible 	:= process.isInLockState;
end;
}

scrInstructTime_change
{
scrInstructTime_change(scroll : ScrollBar input) updating;

begin
	app.setInstructionTime(scroll.value);
	
	btnExecute.setFocus;
end;
}

startAnotherProcess
{
startAnotherProcess() updating;

vars
	proc : Process;
	num : Integer;
begin
	foreach proc in node.processes
		where proc.persistentApp.name = app.name do
			num := num + 1;
	endforeach;
	if num = 1 then
		left := getSystemMetrics(SM_cxFullScreen) - width;
		app.startApplication(currentSchema.name, app.name);
	endif;
end;
}

sysNotify
{
sysNotify(eventType : Integer; theObject : Object; eventTag : Integer) updating;

vars
	acct : Account;
	opt : OptionButton;
	row : Integer;
	cell : JadeTableCell;
begin
	if eventTag = Branch.number then
		cell := tblBranch.accessCell(1, 1);
		cell.text := 'Branch (edition ' & app.myBranch.edition.String & ')';
	else
		acct := theObject.Account;
		cell := tblCollection.accessCell(1, 1);
		cell.text := 'Collection (edition ' & app.myBranch.allAccounts.edition.String & ')';
		if eventType = Object_Update_Event then
			opt := findOptionButtonFromAccount(acct);
			row := findTableRowFromOptionButton(opt);
			cell := tblAccounts.accessCell(row, 1);
			cell.text := 'Account (edition ' & acct.edition.String & ')' & Tab
						& '#' & acct.number.String.padLeadingZeros(6) & Tab & acct.balance.currencyFormat;
		elseif eventType = Object_Create_Event then
			row := tblAccounts.rows + 1;
			tblAccounts.rows := row;
			cell := tblAccounts.accessCell(row, 1);
			cell.text := 'Account (edition ' & acct.edition.String & ')' & Tab
						& '#' & acct.number.String.padLeadingZeros(6) & Tab & acct.balance.currencyFormat;
			cell.itemObject := createOptionButton(acct, row);
		elseif eventType = Object_Delete_Event then
			opt := findOptionButtonFromAccount(acct);
			row := findTableRowFromOptionButton(opt);
			tblAccounts.accessSheet(1).removeItem(row);
			delete opt;
		endif;
		tblAccounts.sortColumn[1] := 2;
		tblAccounts.resort;
		alignAccountOptionButtons;
	endif;
	displayLocks;
end;
}

tblAccounts_click
{
tblAccounts_click(table : Table input) updating;

vars
	opt : OptionButton;
	row : Integer;
	acct : Account;
begin
	staLine.caption := null;
	app.mousePointer := MousePointer_HourGlass;
	tblCollection.accessRow(1).foreColor := Black;
	tblBranch.accessRow(1).foreColor := Black;
	optBranch.value := false;
	optCollection.value := false;
	pctBranchForm.visible := false;
	pctColectionForm.visible := false;
	pctAccountForm.visible := false;
	deselectObject;
	row := tblAccounts.row;
	opt := tblAccounts.accessCell(row, 1).itemObject.OptionButton;
	acct := opt.userObject.Account;
	txtNumber.text := acct.number.String.padLeadingZeros(6);
	txtBalance.text := acct.balance.String;
	txtEditionAcount.text := acct.edition.String;
	tblAccounts.accessRow(row).foreColor := Blue;
	pctAccountForm.visible := true;
	opt.value := true;
	txtNumber.setFocus;
	reportLockStatus(acct, tblAccounts, row, 4);
epilog
	app.mousePointer := MousePointer_Default;
end;
}

tblBranch_click
{
tblBranch_click(table : Table input) updating;

vars
	brch : Branch;
begin
	staLine.caption 			:= null;
	app.mousePointer 			:= MousePointer_HourGlass;
	pctBranchForm.visible 		:= false;
	pctColectionForm.visible 	:= false;
	pctAccountForm.visible 		:= false;
	deselectObject;
	
	brch 									:= app.myBranch;
	txtName.text 							:= brch.name;
	txtEditionBranch.text 					:= brch.edition.String;
	pctBranchForm.visible 					:= true;
	optBranch.value 						:= true;
	tblBranch.accessRow(1).foreColor 		:= Blue;
	tblCollection.accessRow(1).foreColor 	:= Black;
	txtName.setFocus;
	reportLockStatus(app.myBranch, tblBranch, 1, 2);
epilog
	app.mousePointer := MousePointer_Default;
end;
}

tblCollection_click
{
tblCollection_click(table : Table input) updating;

vars
	coll : AccountsByNumber;
	edn : Integer;	
begin
	staLine.caption := null;
	app.mousePointer := MousePointer_HourGlass;
	pctBranchForm.visible := false;
	pctColectionForm.visible := false;
	pctAccountForm.visible := false;
	deselectObject;
//	edn := tblCollection.accessCell(1, 1).text[21:end].Integer;
	coll := app.myBranch.allAccounts;
	edn := coll.edition;
	txtEditionColl.text := edn.String;
	optCollection.value := true;
	tblCollection.accessRow(1).foreColor := Blue;
	tblBranch.accessRow(1).foreColor := Black;
	pctColectionForm.visible := true;
	reportLockStatus(coll, tblCollection, 1, 2);
epilog
	app.mousePointer := MousePointer_Default;
end;
}

timerEvent
{
timerEvent(eventTag : Integer) updating;

begin
	self.reportTransactionStatus;
	
	self.displayLocks;
end;
}

unload
{
unload() updating;

begin
	endNotificationForSubscriber(self);
end;
}

updateAccount
{
updateAccount();

vars
	opt : OptionButton;
	acct : Account;
begin
	opt := findSelectedOptionButton;
	if opt = null then
		staLine.caption := 'Select an account first';
	else
		acct := findSelectedOptionButton.userObject.Account;
		if txtNumber.text = null then
			staLine.caption := 'Enter a number for the account';
			txtNumber.setFocus;
		elseif txtBalance.text = null then
			staLine.caption := 'Enter a balance for the account';
			txtBalance.setFocus;
		else
			app.mousePointer := MousePointer_HourGlass;
			acct.setBalance(txtBalance.text.Decimal);
			acct.setNumber(txtNumber.text.Integer);
			txtEditionAcount.text := acct.edition.String;
		endif;
	endif;
epilog
	app.mousePointer := MousePointer_Default;
end;
}

updateBranch
{
updateBranch();

vars
	opt : OptionButton;
	brch : Branch;
begin
	brch := app.myBranch;
	if txtName.text = null then
		staLine.caption := 'Enter a name for the branch';
		txtName.setFocus;
	else
		app.mousePointer := MousePointer_HourGlass;
		brch.setName(txtName.text);
		txtEditionBranch.text := brch.edition.String;
	endif;
epilog
	app.mousePointer := MousePointer_Default;
end;
}

	)
