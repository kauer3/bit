jadeVersionNumber "22.0.02";
schemaDefinition
BankingViewSchema subschemaOf BankingModelSchema completeDefinition;
	setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:31:22.860;
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
	setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:31:22.848;
typeHeaders
	BankingViewSchema subclassOf BankingModelSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2051;
	GBankingViewSchema subclassOf GBankingModelSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2052;
	SBankingViewSchema subclassOf SBankingModelSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2053;
	CustomerDetails subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 9, number = 2054;
	Logon subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 3, number = 2049;
	MainMenu subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 2, number = 2056;
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
	BankingViewSchema completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:31:22.859;
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
	GBankingViewSchema completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:31:22.860;
	jadeMethodDefinitions
		getAndValidateUser(
			usercode: String output; 
			password: String output): Boolean number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:09:05:10:25:02.609;
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
	SBankingViewSchema completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:31:22.860;
	)
	Window completeDefinition
	(
	)
	Form completeDefinition
	(
	)
	CustomerDetails completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:10:13:14.938;
	referenceDefinitions
		address:                       Label  number = 5, ordinal = 5;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:49:34.273;
		btnCancel:                     Button  number = 8, ordinal = 8;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:10:10:10.865;
		btnOk:                         Button  number = 7, ordinal = 7;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:10:10:10.865;
		firstNames:                    Label  number = 3, ordinal = 3;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:49:34.272;
		lastName:                      Label  number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:49:34.272;
		statusLine:                    StatusLine  number = 9, ordinal = 9;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:10:10:10.865;
		txtAddress:                    TextBox  number = 6, ordinal = 6;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:49:34.273;
		txtFirstNames:                 TextBox  number = 4, ordinal = 4;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:49:34.273;
		txtLastName:                   TextBox  number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:49:34.272;
	jadeMethodDefinitions
		btnCancel_click(btn: Button input) updating, number = 1003;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:10:29:27.219;
		btnOk_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:11:15:51.059;
		createCustomer() number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:11:15:35.402;
	eventMethodMappings
		btnCancel_click = click of Button;
		btnOk_click = click of Button;
	)
	Logon completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:09:05:10:15:18.992;
	referenceDefinitions
		btnOK:                         Button  number = 3, ordinal = 3;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:09:05:10:15:08.701;
		passwordLabel:                 Label  number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:09:05:10:15:08.701;
		txtPassword:                   TextBox  number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:09:05:10:15:08.701;
	jadeMethodDefinitions
		btnOK_click(btn: Button input) updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:09:05:10:18:13.565;
	eventMethodMappings
		btnOK_click = click of Button;
	)
	MainMenu completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:11:26:55.004;
	referenceDefinitions
		mnuCustomer:                   MenuItem  number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:10:40:13.678;
		mnuCustomerAdd:                MenuItem  number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:10:40:13.678;
	jadeMethodDefinitions
		load() updating, number = 1002;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:10:53:23.099;
		mnuCustomerAdd_click(menuItem: MenuItem input) updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:10:43:13.829;
	eventMethodMappings
		load = load of Form;
		mnuCustomerAdd_click = click of MenuItem;
	)
databaseDefinitions
	BankingViewSchemaDb
	(
	setModifiedTimeStamp "kaue" "22.0.02" 2023:08:22:09:31:22.860;
	databaseFileDefinitions
		"bank" number = 52;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:07:25:10:06:56;
	defaultFileDefinition "bank";
	classMapDefinitions
		BankingViewSchema in "_usergui";
		GBankingViewSchema in "bank";
		SBankingViewSchema in "_environ";
	)
typeSources
	GBankingViewSchema (
	jadeMethodSources
getAndValidateUser
{
getAndValidateUser(usercode: String output; password: String output): Boolean;

vars
	form : Logon;
	accept : Boolean;
begin
	create form transient;
	form.showModal();
	accept := form.txtPassword.text.toLower = '0000';
	if not accept then
		app.msgBox('Please enter your password again', 'Access Denied', MsgBox_OK_Only);
	endif;
	return accept;
end;
}
	)
	CustomerDetails (
	jadeMethodSources
btnCancel_click
{
btnCancel_click(btn: Button input) updating;

vars

begin
	self.unloadForm();
	delete self;
end;
}
btnOk_click
{
btnOk_click(btn: Button input) updating;

vars

begin
	self.createCustomer();
	statusLine.setPropertyValue(caption, "New customer created successfully");
end;
}
createCustomer
{
createCustomer();

vars
	cust: Customer;
begin
	beginTransaction;
	create cust persistent;
	cust.setpropertiesoncreate(txtAddress.text, txtFirstNames.text, txtLastName.text);
	commitTransaction;
end;
}
	)
	Logon (
	jadeMethodSources
btnOK_click
{
btnOK_click(btn: Button input) updating;

vars

begin
	self.unloadForm();
end;
}
	)
	MainMenu (
	jadeMethodSources
load
{
load() updating;

vars

begin
	app.mdiFrame := MainMenu;
end;
}
mnuCustomerAdd_click
{
mnuCustomerAdd_click(menuItem: MenuItem input) updating;

vars
	form: CustomerDetails;
begin
	create form transient;
	form.show();
end;
}
	)
