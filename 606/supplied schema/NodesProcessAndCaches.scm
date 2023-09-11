jadeVersionNumber "5.2.08";
schemaDefinition
NodesProcessAndCaches subschemaOf RootSchema completeDefinition, patchVersioningEnabled = false;
constantDefinitions
localeDefinitions
	5129 "English (New Zealand)";
	10249 "English (Belize)" _cloneOf 5129;
	1033 "English (United States)" _cloneOf 5129;
	11273 "English (Trinidad y Tobago)" _cloneOf 5129;
	2057 "English (United Kingdom)" _cloneOf 5129;
	3081 "English (Australia)" _cloneOf 5129;
	4105 "English (Canada)" _cloneOf 5129;
	6153 "English (Ireland)" _cloneOf 5129;
	7177 "English (South Africa)" _cloneOf 5129;
	8201 "English (Jamaica)" _cloneOf 5129;
	9225 "English (Caribbean)" _cloneOf 5129;
libraryDefinitions
typeHeaders
	NodesProcessAndCachesApp subclassOf RootSchemaApp number = 2212;
	Command subclassOf Object abstract, number = 2287;
	AddProcess subclassOf Command number = 2288;
	CreatePersistent subclassOf Command number = 2289;
	CreateSharedTransient subclassOf Command number = 2290;
	CreateTransient subclassOf Command number = 2291;
	DeleteObject subclassOf Command number = 2292;
	LockObject subclassOf Command number = 2293;
	ReadObject subclassOf Command number = 2294;
	RemoveProcess subclassOf Command highestSubId = 1, number = 2295;
	ResynchObject subclassOf Command number = 2296;
	SelectProcess subclassOf Command highestSubId = 2, number = 2297;
	SubscribeClass subclassOf Command number = 2298;
	SubscribeObject subclassOf Command number = 2299;
	UnlockObject subclassOf Command number = 2300;
	UpdateObject subclassOf Command number = 2301;
	ExampleObject subclassOf Object number = 2302;
	NodesProcessAndCachesGlobal subclassOf RootSchemaGlobal number = 2213;
	NodesProcessAndCachesSession subclassOf RootSchemaSession number = 2219;
	FrmDatabase subclassOf Form transient, number = 2303;
	FrmNode subclassOf Form transient, number = 2304;
	FrmSystem subclassOf Form transient, number = 2305;
 
membershipDefinitions
 
typeDefinitions
	NodesProcessAndCachesApp completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.331;
 
	jadeMethodDefinitions
		initializeProcessApp() updating, number = 1004;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.141;
		sysNotification(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer) updating, number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.271;
		userNotification(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer; 
			userInfo: Any) updating, number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.331;
	)
	Command completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.531;
	constantDefinitions
		Completed:                     Integer = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.391;
		Exception_InTranState:         Character = 'b';
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.401;
		Exception_InTransientTranState:Character = 'c';
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.401;
		Exception_NoTransaction:       Character = 'a';
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.401;
		Issued:                        Integer = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.401;
		PersistentObject:              Character = 'd';
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.411;
		SharedTransientObject:         Character = 'e';
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.411;
		TransientObject:               Character = 'f';
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.421;
	attributeDefinitions
		objectOid:                     String[11] readonly, number = 2;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.431;
		processOid:                    String[31] readonly, number = 1;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.441;
 
	jadeMethodDefinitions
		exceptionHandler(exObj: Exception): Integer number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.501;
		execute() abstract, number = 1003;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.511;
		objectInfo(pObject: ExampleObject): String number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.511;
		response_FrmDatabase(
			pInfo: String; 
			pForm: FrmDatabase) abstract, number = 1008;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.511;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) abstract, number = 1007;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.521;
		setPropertiesOnCreate(
			pObjectOid: String; 
			pProcessOid: String) updating, number = 1004;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.531;
	)
	AddProcess completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.542;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.542;
	)
	CreatePersistent completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.552;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.542;
		response_FrmDatabase(
			pInfo: String; 
			pForm: FrmDatabase) number = 1003;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.552;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.552;
	)
	CreateSharedTransient completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.562;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.552;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.562;
	)
	CreateTransient completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.572;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.562;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.572;
	)
	DeleteObject completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.582;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.572;
		response_FrmDatabase(
			pInfo: String; 
			pForm: FrmDatabase) number = 1003;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.572;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.582;
	)
	LockObject completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.612;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.582;
		response_FrmDatabase(
			pInfo: String; 
			pForm: FrmDatabase) number = 1003;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.582;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.612;
	)
	ReadObject completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.622;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.612;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.622;
	)
	RemoveProcess completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.632;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.622;
		remainingTransientsInfo(): String number = 1003;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.622;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.632;
	)
	ResynchObject completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.632;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.632;
	)
	SelectProcess completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.642;
 
	jadeMethodDefinitions
		accessibleTransientsInfo(): String number = 1003;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.642;
		execute() number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.642;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.642;
	)
	SubscribeClass completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.652;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.652;
	)
	SubscribeObject completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.652;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.652;
	)
	UnlockObject completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.672;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.662;
		response_FrmDatabase(
			pInfo: String; 
			pForm: FrmDatabase) number = 1003;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.662;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.672;
	)
	UpdateObject completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.682;
 
	jadeMethodDefinitions
		execute() number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.672;
		response_FrmDatabase(
			pInfo: String; 
			pForm: FrmDatabase) number = 1004;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.682;
		response_FrmNode(
			pType: Character; 
			pInfo: String; 
			pForm: FrmNode) number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.682;
	)
	ExampleObject completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.702;
	attributeDefinitions
		property:                      String[2] protected, number = 1;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.692;
 
	jadeMethodDefinitions
		getMethod(): String number = 1004;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.692;
		setMethod(pProperty: String) updating, number = 1003;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.702;
	)
	NodesProcessAndCachesGlobal completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.702;
	)
	NodesProcessAndCachesSession completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.712;
	)
	FrmDatabase completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.882;
	referenceDefinitions
		btnNewNode:                    Button number = 4;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.722;
		lstDatabase:                   ListBox number = 5;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.722;
		pctCursor:                     Picture number = 6;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.722;
		pctDatabase:                   Picture number = 7;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.722;
		pctPersistent:                 Picture number = 8;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.732;
 
	jadeMethodDefinitions
		addToDatabase(pInfo: String) number = 1012;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.732;
		btnNewNode_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.782;
		createNode() number = 1004;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.782;
		createNodeForm(pNode: Node) number = 1009;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.782;
		deleteAllCommands() number = 1010;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.782;
		deleteAllExampleObjects() number = 1007;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.792;
		load() updating, number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.802;
		lstDatabase_mouseDown(
			listbox: ListBox input; 
			button: Integer; 
			shift: Integer; 
			x: Real; 
			y: Real) updating, number = 1011;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.822;
		releaseLocksOnPersistents(pProcessOid: String) number = 1005;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.822;
		removeFromDatabase(pInfo: String) number = 1013;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.832;
		sysNotify(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer) updating, number = 1014;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.862;
		unload() updating, number = 1015;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.862;
		updateDatabase(pInfo: String) number = 1016;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.872;
		userNotify(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer; 
			userInfo: Any) updating, number = 1003;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.872;
 
	eventMethodMappings
		btnNewNode_click = click of Button;
		load = load of Form;
		lstDatabase_mouseDown = mouseDown of ListBox;
		sysNotify = sysNotify of Form;
		unload = unload of Form;
		userNotify = userNotify of Form;
	)
	FrmNode completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:52:11.972;
	referenceDefinitions
		btnAddProcess:                 Button number = 16;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.882;
		btnClassNotify:                Button number = 4;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.882;
		btnCreatePersist:              Button number = 19;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.882;
		btnCreateShared:               Button number = 17;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.892;
		btnCreateTrans:                Button number = 18;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.892;
		btnDelete:                     Button number = 23;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.892;
		btnLock:                       Button number = 13;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.892;
		btnObjectNotify:               Button number = 3;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.902;
		btnRemoveProcess:              Button number = 15;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.902;
		btnResynch:                    Button number = 11;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:43.902;
		btnTouch:                      Button number = 7;
		btnUnlock:                     Button number = 12;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.383;
		btnUpdate:                     Button number = 22;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.383;
		grpAction:                     GroupBox number = 20;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.383;
		grpProcess:                    GroupBox number = 1;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.393;
		lblPersistCache:               Label number = 2;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.393;
		lblTransCache:                 Label number = 6;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.393;
		lstPersistCache:               ListBox number = 8;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.393;
		lstProcesses:                  ListBox number = 25;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.393;
		lstTransCache:                 ListBox number = 10;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.403;
		myNode:                        Node number = 5;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.403;
		pctProcesses:                  Picture number = 26;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.403;
		status:                        StatusLine number = 14;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.403;
		txtObject:                     TextBox number = 24;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.403;
 
	jadeMethodDefinitions
		addPersistentToCache(pInfo: String) number = 1023;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.413;
		addSharedTransientToCache(pInfo: String) number = 1025;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.413;
		addTransientToCache(pInfo: String) number = 1024;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.413;
		btnAddProcess_click(btn: Button input) updating, number = 1004;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.413;
		btnClassNotify_click(btn: Button input) updating, number = 1047;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.423;
		btnCreatePersist_click(btn: Button input) updating, number = 1009;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.423;
		btnCreateShared_click(btn: Button input) updating, number = 1010;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.433;
		btnCreateTrans_click(btn: Button input) updating, number = 1011;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.443;
		btnDelete_click(btn: Button input) updating, number = 1012;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.443;
		btnLock_click(btn: Button input) updating, number = 1013;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.453;
		btnObjectNotify_click(btn: Button input) updating, number = 1048;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.453;
		btnRemoveProcess_click(btn: Button input) updating, number = 1008;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.463;
		btnResynch_click(btn: Button input) updating, number = 1015;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.463;
		btnTouch_click(btn: Button input) updating, number = 1033;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:52:11.622;
		btnUnlock_click(btn: Button input) updating, number = 1016;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.503;
		btnUpdate_click(btn: Button input) updating, number = 1017;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.513;
		isObjectSelected(): Boolean number = 1007;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.513;
		isProcessSelected(): Boolean number = 1027;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.523;
		issueCommand(pClass: Class) number = 1030;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.533;
		issueCommandToObject(pClass: Class) number = 1029;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.533;
		load() updating, number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.533;
		lstPersistCache_click(listbox: ListBox input) updating, number = 1018;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.563;
		lstProcesses_click(listbox: ListBox input) updating, number = 1019;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.573;
		lstProcesses_displayEntry(
			listbox: ListBox input; 
			obj: Any; 
			lstIndex: Integer): String updating, number = 1005;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.593;
		lstProcesses_paint(listbox: ListBox input) updating, number = 1022;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.593;
		lstTransCache_click(listbox: ListBox input) updating, number = 1020;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.603;
		processOid(): String number = 1026;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.603;
		releaseLocksOnPersistents() number = 1028;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.603;
		releaseLocksOnSharedTransients() number = 1031;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.603;
		removeFromPersistentCache(pInfo: String) number = 1032;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.613;
		removeFromTransientCache(pInfo: String) number = 1045;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.613;
		showAccessibleTransients(pInfo: String) number = 1039;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.613;
		showRemainingTransients(pInfo: String) number = 1041;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.623;
		sysNotify(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer) updating, number = 1003;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.623;
		txtObject_click(textbox: TextBox input) updating, number = 1021;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.663;
		txtObject_dragDrop(
			textbox: TextBox input; 
			win: Window input; 
			x: Real; 
			y: Real) updating, number = 1042;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.673;
		unload() updating, number = 1002;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.673;
		updatePersistentCache(pInfo: String) number = 1034;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.673;
		updateTransientCache(pInfo: String) number = 1006;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.683;
		userNotify(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer; 
			userInfo: Any) updating, number = 1043;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.683;
 
	eventMethodMappings
		btnAddProcess_click = click of Button;
		btnClassNotify_click = click of Button;
		btnCreatePersist_click = click of Button;
		btnCreateShared_click = click of Button;
		btnCreateTrans_click = click of Button;
		btnDelete_click = click of Button;
		btnLock_click = click of Button;
		btnObjectNotify_click = click of Button;
		btnRemoveProcess_click = click of Button;
		btnResynch_click = click of Button;
		btnTouch_click = click of Button;
		btnUnlock_click = click of Button;
		btnUpdate_click = click of Button;
		load = load of Form;
		lstPersistCache_click = click of ListBox;
		lstProcesses_click = click of ListBox;
		lstProcesses_displayEntry = displayEntry of ListBox;
		lstProcesses_paint = paint of ListBox;
		lstTransCache_click = click of ListBox;
		sysNotify = sysNotify of Form;
		txtObject_click = click of TextBox;
		txtObject_dragDrop = dragDrop of TextBox;
		unload = unload of Form;
		userNotify = userNotify of Form;
	)
	FrmSystem completeDefinition
	(
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.733;
	attributeDefinitions
		oid:                           String[11] number = 1;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.723;
 
	jadeMethodDefinitions
		load() updating, number = 1001;
		setModifiedTimeStamp "cnwged1" "5.2.08" 2002:06:04:09:59:44.723;
 
	eventMethodMappings
		load = load of Form;
	)
	Collection completeDefinition
	(
	)
	Btree completeDefinition
	(
	)
	Set completeDefinition
	(
	)
	ObjectSet completeDefinition
	(
	)
 
inverseDefinitions
databaseDefinitions
NodesProcessAndCachesDb
	(
	databaseFileDefinitions
		"architecture" number=202;
	defaultFileDefinition "architecture";
	classMapDefinitions
		NodesProcessAndCachesApp in "_usergui";
		NodesProcessAndCachesGlobal in "architecture";
		NodesProcessAndCachesSession in "architecture";
		AddProcess in "architecture";
		RemoveProcess in "architecture";
		CreatePersistent in "architecture";
		CreateTransient in "architecture";
		CreateSharedTransient in "architecture";
		ExampleObject in "architecture";
		SelectProcess in "architecture";
		DeleteObject in "architecture";
		LockObject in "architecture";
		ReadObject in "architecture";
		UpdateObject in "architecture";
		UnlockObject in "architecture";
		SubscribeObject in "architecture";
		SubscribeClass in "architecture";
		ResynchObject in "architecture";
		Command in "architecture";
	)
schemaViewDefinitions
_remapTableDefinitions
Extra description=""
(
)
Production description="production version"
(
)
Remap01 description="Description"
(
)
Test description="Test version "
(
)
externalFunctionSources
typeSources
	NodesProcessAndCachesApp (
	jadeMethodSources
initializeProcessApp
{
initializeProcessApp() updating;

begin
	self.beginClassNotification(Command, false, Command.Issued, Response_Continuous, null);
end;
}

sysNotification
{
sysNotification(eventType : Integer; theObject : Object; eventTag : Integer) updating;

begin

end;
}

userNotification
{
userNotification(eventType : Integer; theObject : Object; eventTag : Integer; userInfo : Any) updating;

vars
	cmd : Command;
begin
	if eventType = Command.Issued then
		cmd := theObject.Command;
		if process = cmd.processOid.asOid then
			on Exception do cmd.exceptionHandler(exception);
			cmd.execute();
		endif;
	endif;
end;
}

	)
	Command (
	jadeMethodSources
exceptionHandler
{
exceptionHandler(exObj : Exception) : Integer;

vars
	type : String;
begin
	if process.isInTransactionState() then
		abortTransaction;
		type := Exception_InTranState;
	elseif process.isInTransientTransactionState() then
		abortTransientTransaction;
		type := Exception_InTransientTranState;
	else
		type := Exception_NoTransaction;
	endif;
	self.causeEvent(Completed, true, type & exObj.errorCode.String & ': ' & exObj.text());
	return Ex_Abort_Action;
end;
}

execute
{
execute() abstract;
}

objectInfo
{
objectInfo(pObject : ExampleObject) : String;

vars
	info : String;
begin
	if pObject.isSharedTransient() then
		info := SharedTransientObject;
	elseif pObject.isTransient() then
		info := TransientObject;
	else
		info := PersistentObject;
	endif;
	info := info & objectOid & ' (edition ' & pObject.edition().String;
	if self.isLockedByMe(pObject) then
		info := info & ', locked by ' & processOid;
	endif;
	return info & ')';
end;
}

response_FrmDatabase
{
response_FrmDatabase(pInfo : String; pForm : FrmDatabase) abstract;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode) abstract;
}

setPropertiesOnCreate
{
setPropertiesOnCreate(pObjectOid : String; pProcessOid : String) updating;

begin
	self.objectOid := pObjectOid;
	self.processOid := pProcessOid;
end;
}

	)
	AddProcess (
	jadeMethodSources
execute
{
execute();

begin
	app.startApplication(currentSchema.name, 'Process');
end;
}

	)
	CreatePersistent (
	jadeMethodSources
execute
{
execute();

vars
	obj : ExampleObject;
	info : String;
begin
	beginTransaction;
	create obj persistent;
	commitTransaction;

	info := PersistentObject & obj.getOidString() & ' (edition ' & obj.edition().String;
	if self.isLockedByMe(obj) then
		info := info & ', locked by ' & processOid;
	endif;
	info := info & ')';

	self.causeEvent(Completed, true, info);
end;
}

response_FrmDatabase
{
response_FrmDatabase(pInfo : String; pForm : FrmDatabase);

begin
	pForm.addToDatabase(pInfo);
	pForm.releaseLocksOnPersistents(self.processOid);
end;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode);

begin
	pForm.addPersistentToCache(pInfo);
	pForm.releaseLocksOnPersistents();
end;
}

	)
	CreateSharedTransient (
	jadeMethodSources
execute
{
execute();

vars
	obj : ExampleObject;
	info : String;
begin
	beginTransientTransaction;
	create obj sharedTransient;
	commitTransientTransaction;

	info := SharedTransientObject & obj.getOidString() & ' (edition ' & obj.edition().String;
	if self.isLockedByMe(obj) then
		info := info & ', locked by ' & processOid;
	endif;
	info := info & ')';

	self.causeEvent(Completed, true, info);
end;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode);

begin
	pForm.addSharedTransientToCache(pInfo);
	pForm.releaseLocksOnSharedTransients();
end;
}

	)
	CreateTransient (
	jadeMethodSources
execute
{
execute();

vars
	obj : ExampleObject;
	info : String;
begin
	create obj transient;

	info := TransientObject & obj.getOidString() & ' (edition ' & obj.edition().String;
	if self.isLockedByMe(obj) then
		info := info & ', locked by ' & processOid;
	endif;
	info := info & ')';

	self.causeEvent(Completed, true, info);
end;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode);

begin
	pForm.addTransientToCache(pInfo);
end;
}

	)
	DeleteObject (
	jadeMethodSources
execute
{
execute();

vars
	obj : ExampleObject;
	info : String;
begin
	obj := self.objectOid.asOid.ExampleObject;
	info := self.objectInfo(obj);
	if obj.isSharedTransient() then
		beginTransientTransaction;
		delete obj;
		commitTransientTransaction;
	elseif obj.isTransient() then
		delete obj;
	else
		beginTransaction;
		delete obj;
		commitTransaction;
	endif;
	self.causeEvent(Completed, true, info);
end;
}

response_FrmDatabase
{
response_FrmDatabase(pInfo : String; pForm : FrmDatabase);

begin
	pForm.removeFromDatabase(pInfo);
	pForm.releaseLocksOnPersistents(self.processOid);
end;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode);

begin
	if pType = PersistentObject then
		pForm.removeFromPersistentCache(pInfo);
		pForm.releaseLocksOnPersistents();
	elseif pType = SharedTransientObject then
		pForm.removeFromTransientCache(pInfo);
		pForm.releaseLocksOnSharedTransients();
	else
		pForm.removeFromTransientCache(pInfo);
	endif;
end;
}

	)
	LockObject (
	jadeMethodSources
execute
{
execute();

vars
	obj : ExampleObject;
begin
	obj := self.objectOid.asOid.ExampleObject;
	self.exclusiveLock(obj);
	self.causeEvent(Completed, true, self.objectInfo(obj));
end;
}

response_FrmDatabase
{
response_FrmDatabase(pInfo : String; pForm : FrmDatabase);

begin
	pForm.updateDatabase(pInfo);
end;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode);

begin
	if pType = PersistentObject then
		pForm.updatePersistentCache(pInfo);
	else
		pForm.updateTransientCache(pInfo);
	endif;
end;
}

	)
	ReadObject (
	jadeMethodSources
execute
{
execute();

vars
	obj : ExampleObject;
begin
	obj := self.objectOid.asOid.ExampleObject;
	obj.getMethod();
	obj := self.objectOid.asOid().ExampleObject;
	self.causeEvent(Completed, true, self.objectInfo(obj));
end;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode);

begin
	if pType = PersistentObject then
		pForm.updatePersistentCache(pInfo);
	else
		pForm.updateTransientCache(pInfo);
	endif;
end;
}

	)
	RemoveProcess (
	jadeMethodSources
execute
{
execute();

begin
	self.causeEvent(Completed, true, self.remainingTransientsInfo());
	terminate;
end;
}

remainingTransientsInfo
{
remainingTransientsInfo() : String;

vars
	transients : ObjectArray;
	obj : Object;
	info : String;
begin
	create transients transient;
	ExampleObject.allProcessTransientInstances(transients, 0, false);
	
	info := '**';
	foreach obj in transients do
		info := info & obj.getOidString() & '*';
	endforeach;
	return info;
epilog
	delete transients;
end;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode);

begin
	pForm.showRemainingTransients(pInfo);
end;
}

	)
	ResynchObject (
	jadeMethodSources
execute
{
execute();

vars
	obj : ExampleObject;
begin
	obj := self.objectOid.asOid.ExampleObject;
	self.resynchObject(obj);
end;
}

	)
	SelectProcess (
	jadeMethodSources
accessibleTransientsInfo
{
accessibleTransientsInfo() : String;

vars
	transients : ObjectArray;
	obj : Object;
	info : String;
begin
	create transients transient;
	ExampleObject.allProcessTransientInstances(transients, 0, false);
	
	info := '**';
	foreach obj in transients do
		info := info & obj.getOidString() & '*';
	endforeach;
	
	transients.clear();
	ExampleObject.allSharedTransientInstances(transients, 0, false);

	foreach obj in transients do
		info := info & obj.getOidString() & '*';
	endforeach;

	return info;
epilog
	delete transients;
end;
}

execute
{
execute();

begin
	self.causeEvent(Completed, true, self.accessibleTransientsInfo());
end;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode);

begin
	pForm.showAccessibleTransients(pInfo);
end;
}

	)
	SubscribeClass (
	jadeMethodSources
execute
{
execute();

begin
	app.beginClassNotification(self.objectOid.asOid.class, false, Any_System_Event, Response_Continuous, null);
end;
}

	)
	SubscribeObject (
	jadeMethodSources
execute
{
execute();

begin
	app.beginNotification(self.objectOid.asOid, Any_System_Event, Response_Continuous, null);
end;
}

	)
	UnlockObject (
	jadeMethodSources
execute
{
execute();

vars
	obj : ExampleObject;
begin
	obj := self.objectOid.asOid.ExampleObject;
	if self.isLockedByMe(obj) then
		self.unlock(obj);
		self.causeEvent(Completed, true, self.objectInfo(obj));
	endif;
end;
}

response_FrmDatabase
{
response_FrmDatabase(pInfo : String; pForm : FrmDatabase);

begin
	pForm.updateDatabase(pInfo);
end;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode);

begin
	if pType = PersistentObject then
		pForm.updatePersistentCache(pInfo);
	else
		pForm.updateTransientCache(pInfo);
	endif;
end;
}

	)
	UpdateObject (
	jadeMethodSources
execute
{
execute();

vars
	obj : ExampleObject;
begin
	obj := self.objectOid.asOid.ExampleObject;
	if obj.isSharedTransient() then
		beginTransientTransaction;
		obj.setMethod(null);
		commitTransientTransaction;
	elseif obj.isTransient() then
		obj.setMethod(null);
	else
		beginTransaction;
		obj.setMethod(null);
		commitTransaction;
	endif;
	self.causeEvent(Completed, true, self.objectInfo(obj));
end;
}

response_FrmDatabase
{
response_FrmDatabase(pInfo : String; pForm : FrmDatabase);

begin
	pForm.updateDatabase(pInfo);
	pForm.releaseLocksOnPersistents(self.processOid);
end;
}

response_FrmNode
{
response_FrmNode(pType : Character; pInfo : String; pForm : FrmNode);

begin
	if pType = PersistentObject then
		pForm.updatePersistentCache(pInfo);
		pForm.releaseLocksOnPersistents();
	elseif pType = SharedTransientObject then
		pForm.updateTransientCache(pInfo);
		pForm.releaseLocksOnSharedTransients();
	else
		pForm.updateTransientCache(pInfo);
	endif;
end;
}

	)
	ExampleObject (
	jadeMethodSources
getMethod
{
getMethod() : String;

begin
	return property;
end;
}

setMethod
{
setMethod(pProperty : String) updating;

begin
	property := pProperty;
end;
}

	)
	FrmDatabase (
	jadeMethodSources
addToDatabase
{
addToDatabase(pInfo : String);

vars
	i : Integer;
begin
	i := lstDatabase.addItem(pInfo);
	lstDatabase.itemPicture[i] := pctPersistent.picture;
end;
}

btnNewNode_click
{
btnNewNode_click(btn : Button input) updating;

begin
	self.createNode();
end;
}

createNode
{
createNode();

vars
	args : StringArray;
	result : Integer;
begin
	create args transient;
	args.add('path=' & app.dbPath);
	args.add('host=' & app.dbServerComputerName);
	args.add('ini=' & app.getIniFileName);
	args.add('schema=' & currentSchema.name);
	args.add('app=Process');
	node.createExternalProcess(app.getJadeInstallDir, 'jade.exe', args, null, true, false, result);
epilog
	delete args;
end;
}

createNodeForm
{
createNodeForm(pNode : Node);

vars
	form : FrmNode;
begin
	create form;
	form.myNode := pNode;
	form.show;
end;
}

deleteAllCommands
{
deleteAllCommands();

begin
	beginTransaction;
	Command.deleteAllInstances();
	commitTransaction;
end;
}

deleteAllExampleObjects
{
deleteAllExampleObjects();

vars
	coll : ObjectArray;
begin
	beginTransaction;
	ExampleObject.instances.purge();
	commitTransaction;
	
	create coll transient;
	ExampleObject.allSharedTransientInstances(coll, 0, true);
	beginTransientTransaction;
	coll.purge();
	commitTransientTransaction;
epilog
	delete coll;
end;
}

load
{
load() updating;

begin
	self.deleteAllExampleObjects();
	self.deleteAllCommands();
	self.beginClassNotification(Node, false, Object_Create_Event, Response_Continuous, null);
	self.beginClassNotification(CreatePersistent, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(DeleteObject, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(LockObject, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(UnlockObject, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(UpdateObject, false, Command.Completed, Response_Continuous, null);
end;
}

lstDatabase_mouseDown
{
lstDatabase_mouseDown(listbox : ListBox input; button : Integer; shift : Integer; x : Real; y : Real) updating;

begin
	if listbox.listIndex > 0 then
		self.dragMode := DragMode_Drag;
		self.dragCursor := pctCursor.picture;
		self.getMdiFrame().FrmSystem.oid := listbox.itemText[listbox.listIndex].Decimal.String;
		listbox.listIndex := -1;
		btnNewNode.setFocus();
	endif;
end;
}

releaseLocksOnPersistents
{
releaseLocksOnPersistents(pProcessOid : String);

vars
	i : Integer;
	pos : Integer;
begin
	foreach i in 1 to lstDatabase.listCount() do
		pos := lstDatabase.itemText[i].pos(', locked by ' & pProcessOid, 1);
		if pos > 0 then
			lstDatabase.itemText[i] := lstDatabase.itemText[i][1 : pos - 1] & ')';
		endif;
	endforeach;
end;
}

removeFromDatabase
{
removeFromDatabase(pInfo : String);

vars
	strListBox : String;
	i : Integer;
begin
	while i < lstDatabase.listCount() do
		i := i + 1;
		strListBox := lstDatabase.itemText[i];
		if pInfo.Decimal.String = strListBox.Decimal.String then
			lstDatabase.removeItem(i);
		endif;
	endwhile;
end;
}

sysNotify
{
sysNotify(eventType : Integer; theObject : Object; eventTag : Integer) updating;

begin
	if Node.hasInstance(theObject) then
		self.createNodeForm(theObject.Node);
	endif;
end;
}

unload
{
unload() updating;

begin
	self.endNotificationForSubscriber(self);
end;
}

updateDatabase
{
updateDatabase(pInfo : String);

vars
	strListBox : String;
	i : Integer;
begin
	foreach i in 1 to lstDatabase.listCount() do
		strListBox := lstDatabase.itemText[i];
		if pInfo.Decimal.String = strListBox.Decimal.String then
			lstDatabase.itemText[i] := pInfo;
			return;
		endif;
	endforeach;
	self.addToDatabase(pInfo);
end;
}

userNotify
{
userNotify(eventType : Integer; theObject : Object; eventTag : Integer; userInfo : Any) updating;

vars
	cmd : Command;
	type : Character;
	info : String;
begin
	cmd := theObject.Command;

	type := userInfo.String[1];
	info := userInfo.String[2 : end];
	if type = Command.Exception_InTranState then
		self.releaseLocksOnPersistents(cmd.processOid);
	elseif type = Command.PersistentObject then
		cmd.response_FrmDatabase(info, self);
	endif;
end;
}

	)
	FrmNode (
	jadeMethodSources
addPersistentToCache
{
addPersistentToCache(pInfo : String);

vars
	i : Integer;
begin
	i := lstPersistCache.addItem(pInfo);
	lstPersistCache.itemPicture[i] := btnCreatePersist.picture;
end;
}

addSharedTransientToCache
{
addSharedTransientToCache(pInfo : String);

vars
	i : Integer;
begin
	i := lstTransCache.addItem(pInfo);
	lstTransCache.itemPicture[i] := btnCreateShared.picture;
end;
}

addTransientToCache
{
addTransientToCache(pInfo : String);

vars
	i : Integer;
begin
	i := lstTransCache.addItem(pInfo);
	lstTransCache.itemPicture[i] := btnCreateTrans.picture;
end;
}

btnAddProcess_click
{
btnAddProcess_click(btn : Button input) updating;

begin
	self.issueCommand(AddProcess);
end;
}

btnClassNotify_click
{
btnClassNotify_click(btn : Button input) updating;

begin
	self.issueCommandToObject(SubscribeObject);
end;
}

btnCreatePersist_click
{
btnCreatePersist_click(btn : Button input) updating;

begin
	self.issueCommand(CreatePersistent);
end;
}

btnCreateShared_click
{
btnCreateShared_click(btn : Button input) updating;

begin
	self.issueCommand(CreateSharedTransient);
end;
}

btnCreateTrans_click
{
btnCreateTrans_click(btn : Button input) updating;

begin
	self.issueCommand(CreateTransient);
end;
}

btnDelete_click
{
btnDelete_click(btn : Button input) updating;

begin
	self.issueCommandToObject(DeleteObject);
end;
}

btnLock_click
{
btnLock_click(btn : Button input) updating;

begin
	self.issueCommandToObject(LockObject);
end;
}

btnObjectNotify_click
{
btnObjectNotify_click(btn : Button input) updating;

begin
	self.issueCommandToObject(SubscribeClass);
end;
}

btnRemoveProcess_click
{
btnRemoveProcess_click(btn : Button input) updating;

begin
	self.issueCommand(RemoveProcess);
end;
}

btnResynch_click
{
btnResynch_click(btn : Button input) updating;

begin
	self.issueCommandToObject(ResynchObject);
end;
}

btnTouch_click
{
btnTouch_click(btn : Button input) updating;

begin
	self.issueCommandToObject(ReadObject);
end;
}

btnUnlock_click
{
btnUnlock_click(btn : Button input) updating;

begin
	self.issueCommandToObject(UnlockObject);
end;
}

btnUpdate_click
{
btnUpdate_click(btn : Button input) updating;

begin
	self.issueCommandToObject(UpdateObject);
end;
}

isObjectSelected
{
isObjectSelected() : Boolean;

begin
	if not txtObject.text.isDecimal then
		status.caption := 'Select an object first';
		return false;
	else
		return true;
	endif;
end;
}

isProcessSelected
{
isProcessSelected() : Boolean;

begin
	if lstProcesses.listObject.Process = null then
		status.caption := 'Select a process first';
		return false;
	else
		return true;
	endif;
end;
}

issueCommand
{
issueCommand(pClass : Class);

vars
	cmd : Command;
begin
	if isProcessSelected() then
		status.caption := null;
		status.bubbleHelp := null;
		beginTransaction;
		create cmd as pClass persistent;
		cmd.setPropertiesOnCreate(null, processOid());
		cmd.causeEvent(Command.Issued, false, null);
		commitTransaction;
	endif;
end;
}

issueCommandToObject
{
issueCommandToObject(pClass : Class);

vars
	cmd : Command;
begin
	if isProcessSelected() and isObjectSelected() then
		status.caption := null;
		status.bubbleHelp := null;
		beginTransaction;
		create cmd as pClass persistent;
		cmd.setPropertiesOnCreate(txtObject.text, processOid());
		cmd.causeEvent(Command.Issued, false, null);
		commitTransaction;
	endif;
end;
}

load
{
load() updating;

begin
	self.caption := myNode.String;
	self.centreWindow();
	lstProcesses.listCollection(myNode.processes, true, 0);
	self.beginNotification(myNode, Object_Delete_Event, Response_Continuous, null);
	self.beginClassNotification(CreatePersistent, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(CreateSharedTransient, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(CreateTransient, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(DeleteObject, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(LockObject, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(ReadObject, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(RemoveProcess, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(SelectProcess, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(UnlockObject, false, Command.Completed, Response_Continuous, null);
	self.beginClassNotification(UpdateObject, false, Command.Completed, Response_Continuous, null);
end;
}

lstPersistCache_click
{
lstPersistCache_click(listbox : ListBox input) updating;

begin
	status.caption := null;
	status.bubbleHelp := null;
	txtObject.text := listbox.itemText[listbox.listIndex].Decimal.String;
	lstTransCache.listIndex := -1;
end;
}

lstProcesses_click
{
lstProcesses_click(listbox : ListBox input) updating;

begin
	status.caption := null;
	status.bubbleHelp := null;
	self.issueCommand(SelectProcess);
end;
}

lstProcesses_displayEntry
{
lstProcesses_displayEntry(listbox : ListBox input; obj : Any; lstIndex : Integer) : String updating;

vars
	proc : Process;
begin
	proc := obj.Process;
	if proc.type = #'2' then
		return '  ' & proc.String;
	endif;
end;
}

lstProcesses_paint
{
lstProcesses_paint(listbox: ListBox input) updating;

begin
	listbox.drawLine(0, 20, 105, 20, Black);
	listbox.drawLine(0, 40, 105, 40, Black);
	listbox.drawLine(0, 60, 105, 60, Black);
end;
}

lstTransCache_click
{
lstTransCache_click(listbox : ListBox input) updating;

begin
	status.caption := null;
	status.bubbleHelp := null;
	txtObject.text := listbox.itemText[listbox.listIndex].Decimal.String;
	lstPersistCache.listIndex := -1;
end;
}

processOid
{
processOid() : String;

vars
	index : Integer;
begin
	index := lstProcesses.listIndex;
	if index > 0 then
		return lstProcesses.itemText[index][11 : end];
	endif;
end;
}

releaseLocksOnPersistents
{
releaseLocksOnPersistents();

vars
	i : Integer;
	pos : Integer;
begin
	foreach i in 1 to lstPersistCache.listCount() do
		pos := lstPersistCache.itemText[i].pos(', locked by ' & processOid, 1);
		if pos > 0 then
			lstPersistCache.itemText[i] := lstPersistCache.itemText[i][1 : pos - 1] & ')';
		endif;
	endforeach;
end;
}

releaseLocksOnSharedTransients
{
releaseLocksOnSharedTransients();

vars
	i : Integer;
	pos : Integer;
begin
	foreach i in 1 to lstTransCache.listCount() do
		pos := lstTransCache.itemText[i].pos(', locked by ' & processOid, 1);
		if pos > 0 then
			lstTransCache.itemText[i] := lstTransCache.itemText[i][1 : pos - 1] & ')';
		endif;
	endforeach;
end;
}

removeFromPersistentCache
{
removeFromPersistentCache(pInfo : String);

vars
	strListBox : String;
	i : Integer;
begin
	txtObject.text := null;
	while i < lstPersistCache.listCount() do
		i := i + 1;
		strListBox := lstPersistCache.itemText[i];
		if pInfo.Decimal.String = strListBox.Decimal.String then
			lstPersistCache.removeItem(i);
		endif;
	endwhile;
end;
}

removeFromTransientCache
{
removeFromTransientCache(pInfo : String);

vars
	strListBox : String;
	i : Integer;
begin
	txtObject.text := null;
	while i < lstTransCache.listCount() do
		i := i + 1;
		strListBox := lstTransCache.itemText[i];
		if pInfo.Decimal.String = strListBox.Decimal.String then
			lstTransCache.removeItem(i);
		endif;
	endwhile;
end;
}

showAccessibleTransients
{
showAccessibleTransients(pInfo : String);

vars
	strListBox : String;
	i : Integer;
begin
	foreach i in 1 to lstTransCache.listCount() do
		strListBox := '*' & lstTransCache.itemText[i].Decimal.String & '*';
		if pInfo.pos(strListBox, 1) > 0 then
			lstTransCache.itemForeColor[i] := Black;
		else
			lstTransCache.itemForeColor[i] := Gray;
		endif;
	endforeach;
end;
}

showRemainingTransients
{
showRemainingTransients(pInfo : String);

vars
	strListBox : String;
	i : Integer;
begin
	i := 1;
	while i <= lstTransCache.listCount() do
		strListBox := '*' & lstTransCache.itemText[i].Decimal.String & '*';
		if pInfo.pos(strListBox, 1) > 0 then
			lstTransCache.removeItem(i);
		else
			lstTransCache.itemForeColor[i] := Gray;
			i := i + 1;
		endif;
	endwhile;
end;
}

sysNotify
{
sysNotify(eventType : Integer; theObject : Object; eventTag : Integer) updating;

begin
	self.unloadForm();
	delete self;
end;
}

txtObject_click
{
txtObject_click(textbox : TextBox input) updating;

begin
	status.caption := null;
	status.bubbleHelp := null;
end;
}

txtObject_dragDrop
{
txtObject_dragDrop(textbox : TextBox input; win : Window input; x : Real; y : Real) updating;

begin
	textbox.text := self.getMdiFrame().FrmSystem.oid;
end;
}

unload
{
unload() updating;

begin
	self.endNotificationForSubscriber(self);
	system.removeNode(myNode);
end;
}

updatePersistentCache
{
updatePersistentCache(pInfo : String);

vars
	strListBox : String;
	i : Integer;
begin
	foreach i in 1 to lstPersistCache.listCount() do
		strListBox := lstPersistCache.itemText[i];
		if pInfo.Decimal.String = strListBox.Decimal.String then
			lstPersistCache.itemText[i] := pInfo;
			return;
		endif;
	endforeach;
	self.addPersistentToCache(pInfo);
end;
}

updateTransientCache
{
updateTransientCache(pInfo : String);

vars
	strListBox : String;
	i : Integer;
begin
	foreach i in 1 to lstTransCache.listCount() do
		strListBox := lstTransCache.itemText[i];
		if pInfo.Decimal.String = strListBox.Decimal.String then
			lstTransCache.itemText[i] := pInfo;
			return;
		endif;
	endforeach;
end;
}

userNotify
{
userNotify(eventType : Integer; theObject : Object; eventTag : Integer; userInfo : Any) updating;

vars
	cmd : Command;
	type : Character;
	info : String;
begin
	cmd := theObject.Command;
	// The message is not for this form
	if not myNode.processes.includes(cmd.processOid.asOid().Process) then
		return;
	endif;

	type := userInfo.String[1];
	info := userInfo.String[2 : end];

	if type = Command.Exception_InTranState then
		self.releaseLocksOnPersistents();
		status.caption := info;
		status.bubbleHelp := info;
		if info = '4: Object not found' then
			self.removeFromPersistentCache(cmd.objectOid);
		endif;
	elseif type = Command.Exception_InTransientTranState then
		self.releaseLocksOnSharedTransients();
		status.caption := info;
		status.bubbleHelp := info;
	elseif type = Command.Exception_NoTransaction then
		status.caption := info;
		status.bubbleHelp := info;
		if info = '4: Object not found' then
			self.removeFromPersistentCache(cmd.objectOid);
		endif;
	else
		cmd.response_FrmNode(type, info, self);
	endif;
end;
}

	)
	FrmSystem (
	jadeMethodSources
load
{
load() updating;

vars
	form : FrmDatabase;
begin
	if not app.isMultiUser() then
		app.msgBox('This application can only be run in multiuser mode', 'Restriction', MsgBox_OK_Only);
		terminate;
	endif;
	app.mdiFrame := FrmSystem;
	self.move(0, 0, getSystemMetrics(SM_cxFullScreen), getSystemMetrics(SM_cyFullScreen));
	create form;
	form.show;
end;
}

	)
