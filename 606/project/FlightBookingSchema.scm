jadeVersionNumber "22.0.02";
schemaDefinition
FlightBookingSchema subschemaOf RootSchema completeDefinition;
	setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:31:11.724;
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
	setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:31:11.708;
typeHeaders
	Airport subclassOf Object highestOrdinal = 3, number = 2052;
	FlightBookingSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2048;
	Flight subclassOf Object highestOrdinal = 6, number = 2054;
	FlightPath subclassOf Object highestOrdinal = 3, number = 2053;
	GFlightBookingSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2049;
	Passenger subclassOf Object highestOrdinal = 10, number = 2055;
	Plane subclassOf Object highestOrdinal = 3, number = 2051;
	Ticket subclassOf Object highestOrdinal = 7, number = 2056;
	SFlightBookingSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2050;
membershipDefinitions
typeDefinitions
	Object completeDefinition
	(
	)
	Airport completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:49:34.088;
	attributeDefinitions
		cityCode:                      String[4] readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:53:09.597;
		cityName:                      String[26] readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:52:33.107;
		code:                          String[4] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:51:27.969;
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	FlightBookingSchema completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:31:11.724;
	)
	Flight completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:56:43.290;
	attributeDefinitions
		date:                          Date readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:57:29.526;
		flightPath:                    Integer readonly, number = 5, ordinal = 5;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:58:44.715;
		flightStatus:                  String[26] readonly, number = 6, ordinal = 6;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:59:31.988;
		id:                            Integer readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:57:00.878;
		plane:                         String[31] readonly, number = 4, ordinal = 4;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:58:29.533;
		time:                          Time readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:57:18.116;
	)
	FlightPath completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:53:42.277;
	attributeDefinitions
		arrivalAirport:                String[4] readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:56:23.693;
		departureAirport:              String[4] readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:56:08.087;
		id:                            Integer readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:55:27.519;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GFlightBookingSchema completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:31:11.724;
	)
	Passenger completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:59:54.048;
	attributeDefinitions
		address:                       String[31] readonly, number = 8, ordinal = 8;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:03:05.829;
		dateOfBirth:                   Date readonly, number = 4, ordinal = 4;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:01:05.079;
		email:                         String[31] readonly, number = 10, ordinal = 10;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:05:28.237;
		fullName:                      String[31] readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:00:47.313;
		id:                            Integer readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:00:17.184;
		nationality:                   String[26] readonly, number = 7, ordinal = 7;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:02:59.168;
		passport:                      String[26] readonly, number = 6, ordinal = 6;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:02:38.968;
		phoneNumber:                   String[26] readonly, number = 9, ordinal = 9;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:05:04.081;
		staff:                         Boolean readonly, number = 5, ordinal = 5;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:01:40.240;
		title:                         String[31] readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:00:32.611;
	jadeMethodDefinitions
		setPropertiesOnCreate(
			pAddress: String; 
			pDateOfBirth: Date; 
			pEmail: String; 
			pFullName: String; 
			pNationality: String; 
			pPassport: String; 
			pPhoneNumber: String; 
			pStaff: Boolean; 
			pTitle: String) updating, number = 1001;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:09:25:14:12:53.908;
	)
	Plane completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:35:02.899;
	attributeDefinitions
		numberOfSeats:                 Integer readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:46:33.231;
		size:                          String[11] readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:44:34.535;
		type:                          String[26] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:37:51.332;
	)
	Ticket completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:07:12.952;
	attributeDefinitions
		baggage:                       String[26] readonly, number = 5, ordinal = 5;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:09:28.214;
		flightId:                      Integer readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:08:36.332;
		id:                            Integer readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:07:26.520;
		passengerId:                   Integer readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:08:08.045;
		paymentStatus:                 String[26] readonly, number = 6, ordinal = 6;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:10:12.726;
		price:                         Decimal[12] readonly, number = 7, ordinal = 7;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:10:35.330;
		seatNumber:                    String[9] readonly, number = 4, ordinal = 4;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:11:08:59.721;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SFlightBookingSchema completeDefinition
	(
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:31:11.724;
	)
databaseDefinitions
	FlightBookingSchemaDb
	(
	setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:31:11.724;
	databaseFileDefinitions
		"flightbook" number = 51;
		setModifiedTimeStamp "kaue" "22.0.02" 2023:08:14:10:31:11.724;
	defaultFileDefinition "flightbook";
	classMapDefinitions
		Airport in "flightbook";
		Flight in "flightbook";
		FlightBookingSchema in "_usergui";
		FlightPath in "flightbook";
		GFlightBookingSchema in "flightbook";
		Passenger in "flightbook";
		Plane in "flightbook";
		SFlightBookingSchema in "_environ";
		Ticket in "flightbook";
	)
typeSources
	Passenger (
	jadeMethodSources
setPropertiesOnCreate
{
setPropertiesOnCreate(pAddress : String; pDateOfBirth : Date; pEmail : String; pFullName : String; pNationality : String; pPassport : String; pPhoneNumber : String; pStaff : Boolean; pTitle : String) updating;

vars

begin
	self.address := pAddress;
	self.dateOfBirth := pDateOfBirth;
	self.email := pEmail;
	self.fullName := pFullName;
	self.nationality := pNationality;
	self.passport := pPassport;
	self.phoneNumber := pPhoneNumber;
	self.staff := pStaff;
	self.title := pTitle;
end;
}
	)
