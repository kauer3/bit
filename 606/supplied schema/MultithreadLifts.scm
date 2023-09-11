jadeVersionNumber "5.2.08";
schemaDefinition
MultithreadLifts subschemaOf RootSchema completeDefinition, patchVersion=1, patchVersioningEnabled = false;
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
	MultithreadLiftsApp subclassOf RootSchemaApp number = 2109;
	MultithreadLiftsGlobal subclassOf RootSchemaGlobal number = 2127;
	ModelEntity subclassOf Object abstract, number = 2133;
	Building subclassOf ModelEntity highestSubId = 2, number = 2134;
	Floor subclassOf ModelEntity highestSubId = 3, number = 2135;
	Lift subclassOf ModelEntity highestSubId = 2, number = 2146;
	LiftState subclassOf ModelEntity abstract, transient, number = 2147;
	MovingDown_BetweenFloors subclassOf LiftState number = 2151;
	MovingDown_NearFloor subclassOf LiftState number = 2152;
	MovingDown_StoppedAtFloor subclassOf LiftState number = 2216;
	MovingUp_BetweenFloors subclassOf LiftState number = 2217;
	MovingUp_NearFloor subclassOf LiftState number = 2218;
	MovingUp_StoppedAtFloor subclassOf LiftState number = 2220;
	StoppedAtFloor subclassOf LiftState number = 2221;
	PressButton subclassOf ModelEntity abstract, number = 2222;
	GoToFloorPressButton subclassOf PressButton number = 2223;
	UpOrDownPressButton subclassOf PressButton number = 2224;
	MultithreadLiftsSession subclassOf RootSchemaSession transient, number = 2132;
	ControlButton subclassOf Button transient, number = 2228;
	BuildingForm subclassOf Form transient, number = 2229;
	LiftForm subclassOf Form transient, number = 2232;
	FloorArray subclassOf Array number = 2233;
	GoToFloorButtonArray subclassOf Array number = 2234;
	LiftArray subclassOf Array number = 2236;
 
membershipDefinitions
	FloorArray of Floor ;
	GoToFloorButtonArray of GoToFloorPressButton ;
	LiftArray of Lift ;
 
typeDefinitions
	MultithreadLiftsApp completeDefinition
	(
 
	jadeMethodDefinitions
		createLiftForm(building: Building) number = 1002;
	)
	MultithreadLiftsGlobal completeDefinition
	(
	)
	Building completeDefinition
	(
	attributeDefinitions
		liftSpeed:                     Integer number = 4;
		numberOfLifts:                 Integer number = 1;
	referenceDefinitions
		floors:                        FloorArray explicitInverse, subId = 1, number = 2;
	)
	Floor completeDefinition
	(
	attributeDefinitions
		number:                        Integer number = 1;
	referenceDefinitions
		building:                      Building explicitEmbeddedInverse, number = 2;
		downButton:                    UpOrDownPressButton number = 3;
		upButton:                      UpOrDownPressButton number = 4;
 
	jadeMethodDefinitions
		create() updating, protected, number = 1001;
		delete() updating, protected, number = 1002;
	)
	Lift completeDefinition
	(
	referenceDefinitions
		building:                      Building number = 3;
		floor:                         Floor number = 2;
		pressButtons:                  GoToFloorButtonArray explicitInverse, subId = 2, number = 4;
		state:                         LiftState explicitEmbeddedInverse, number = 5;
 
	jadeMethodDefinitions
		areHigherFloorButtonsPressed(): Boolean protected, number = 1004;
		areHigherFloorsWaiting(): Boolean protected, number = 1007;
		areLowerFloorButtonsPressed(): Boolean protected, number = 1006;
		areLowerFloorsWaiting(): Boolean protected, number = 1008;
		delete() updating, protected, number = 1002;
		getPressButtonForCurrentFloor(): GoToFloorPressButton number = 1005;
		initialize() updating, number = 1001;
		shouldStartMovingDown(): Boolean number = 1009;
		shouldStartMovingUp(): Boolean number = 1010;
		shouldStopMovingDown(): Boolean number = 1011;
		shouldStopMovingUp(): Boolean number = 1012;
		transition() updating, number = 1003;
	)
	LiftState completeDefinition
	(
	referenceDefinitions
		lift:                          Lift explicitEmbeddedInverse, number = 1;
 
	jadeMethodDefinitions
		transition(): LiftState updating, abstract, number = 1007;
	)
	MovingDown_BetweenFloors completeDefinition
	(
 
	jadeMethodDefinitions
		transition(): LiftState updating, number = 1002;
	)
	MovingDown_NearFloor completeDefinition
	(
 
	jadeMethodDefinitions
		transition(): LiftState updating, number = 1003;
	)
	MovingDown_StoppedAtFloor completeDefinition
	(
 
	jadeMethodDefinitions
		transition(): LiftState updating, number = 1003;
	)
	MovingUp_BetweenFloors completeDefinition
	(
 
	jadeMethodDefinitions
		transition(): LiftState updating, number = 1002;
	)
	MovingUp_NearFloor completeDefinition
	(
 
	jadeMethodDefinitions
		transition(): LiftState updating, number = 1003;
	)
	MovingUp_StoppedAtFloor completeDefinition
	(
 
	jadeMethodDefinitions
		transition(): LiftState updating, number = 1003;
	)
	StoppedAtFloor completeDefinition
	(
 
	jadeMethodDefinitions
		transition(): LiftState updating, number = 1004;
	)
	PressButton completeDefinition
	(
	attributeDefinitions
		pressed:                       Boolean number = 1;
 
	jadeMethodDefinitions
		pressed(
			set: Boolean; 
			_value: Boolean io) mapping, number = 1001;
	)
	GoToFloorPressButton completeDefinition
	(
	referenceDefinitions
		lift:                          Lift explicitEmbeddedInverse, number = 3;
	)
	MultithreadLiftsSession completeDefinition
	(
	)
	ControlButton completeDefinition
	(
	referenceDefinitions
		pressButton:                   PressButton number = 1;
 
	jadeMethodDefinitions
		click(btn: Button input) updating, number = 1001;
		userNotify(
			btn: Button input; 
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer; 
			userInfo: Any) updating, number = 1002;
	)
	Form completeDefinition
	(
	constantDefinitions
		BuildingColour:                Integer = #52945A;
		CloseDown:                     Integer = 16;
		FloorColour:                   Integer = #3931D6;
		PressOrRelease:                Integer = 17;
 
	eventMethodMappings
	)
	BuildingForm completeDefinition
	(
	referenceDefinitions
		btnStartNew:                   Button number = 7;
		building:                      Building protected, number = 16;
		chkMultithread:                CheckBox number = 6;
		fraMessage:                    Frame number = 15;
		grpInfo:                       GroupBox number = 2;
		lblFloors:                     Label number = 9;
		lblFloorsInfo:                 Label number = 12;
		lblLifts:                      Label number = 8;
		lblLiftsInfo:                  Label number = 13;
		lblMultithread:                Label number = 14;
		lblSpeed:                      Label number = 4;
		scrSpeed:                      HScroll number = 3;
		txtFloors:                     TextBox number = 11;
		txtLifts:                      TextBox number = 10;
 
	jadeMethodDefinitions
		btnStartNew_click(btn: Button input) updating, number = 1008;
		createBuilding() updating, number = 1009;
		createDownButton(
			floor: Floor; 
			floorTop: Integer) updating, number = 1005;
		createFloors() number = 1010;
		createLabel(
			floor: Floor; 
			floorTop: Integer) updating, number = 1002;
		createUpButton(
			floor: Floor; 
			floorTop: Integer) updating, number = 1003;
		deleteBuilding() updating, number = 1012;
		displayFloors() updating, number = 1004;
		enterInfo() updating, number = 1013;
		isInputOK(): Boolean number = 1014;
		load() updating, number = 1006;
		scrSpeed_change(scroll: ScrollBar input) updating, number = 1015;
		setColours() updating, number = 1016;
		showInfo() updating, number = 1017;
		startupLifts() number = 1019;
		undisplayFloors() updating, number = 1011;
		unload() updating, number = 1007;
		userNotify(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer; 
			userInfo: Any) updating, number = 1001;
 
	eventMethodMappings
		btnStartNew_click = click of Button;
		load = load of Form;
		scrSpeed_change = change of ScrollBar;
		unload = unload of Form;
		userNotify = userNotify of Form;
	)
	LiftForm completeDefinition
	(
	attributeDefinitions
		distanceBetweenFloors:         Integer protected, number = 2;
	referenceDefinitions
		building:                      Building number = 4;
		fraLift:                       Frame number = 1;
		lift:                          Lift protected, number = 3;
 
	jadeMethodDefinitions
		createButton(button: GoToFloorPressButton) updating, number = 1001;
		createLabel(floor: Floor) updating, number = 1002;
		createLift() updating, number = 1003;
		load() updating, number = 1004;
		timerEvent(eventTag: Integer) updating, number = 1008;
		unload() updating, number = 1010;
		userNotify(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer; 
			userInfo: Any) updating, number = 1005;
 
	eventMethodMappings
		load = load of Form;
		unload = unload of Form;
		userNotify = userNotify of Form;
	)
	Collection completeDefinition
	(
	)
	List completeDefinition
	(
	)
	Array completeDefinition
	(
 
	jadeMethodDefinitions
		oneHigherThan(obj: MemberType): MemberType number = 1001;
		oneLowerThan(obj: MemberType): MemberType number = 1002;
	)
 
inverseDefinitions
	floors of Building automatic parentOf building of Floor manual;
	pressButtons of Lift automatic parentOf lift of GoToFloorPressButton manual;
	state of Lift peerOf lift of LiftState;
databaseDefinitions
MultithreadLiftsDb
	(
	databaseFileDefinitions
		"lifts" number=111;
	defaultFileDefinition "lifts";
	classMapDefinitions
		MultithreadLiftsApp in "_usergui";
		ControlButton in "_usergui";
		MultithreadLiftsGlobal in "lifts";
		MultithreadLiftsSession in "lifts";
		FloorArray in "lifts";
		GoToFloorButtonArray in "lifts";
		Lift in "lifts";
		LiftState in "lifts";
		LiftArray in "lifts";
		Floor in "lifts";
		Building in "lifts";
		StoppedAtFloor in "lifts";
		MovingDown_BetweenFloors in "lifts";
		MovingDown_NearFloor in "lifts";
		MovingDown_StoppedAtFloor in "lifts";
		MovingUp_BetweenFloors in "lifts";
		MovingUp_NearFloor in "lifts";
		MovingUp_StoppedAtFloor in "lifts";
		PressButton in "lifts";
		GoToFloorPressButton in "lifts";
		UpOrDownPressButton in "lifts";
		ModelEntity in "lifts";
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
	MultithreadLiftsApp (
	jadeMethodSources
createLiftForm
{
createLiftForm(building : Building);

vars
	form : LiftForm;
begin
	create form;
	form.building := building;
	form.show;
end;
}

	)
	Floor (
	jadeMethodSources
create
{
create() updating, protected;

begin
	create upButton sharedTransient;
	create downButton sharedTransient;
end;
}

delete
{
delete() updating, protected;

begin
	delete upButton;
	delete downButton;
end;
}

	)
	Lift (
	jadeMethodSources
areHigherFloorButtonsPressed
{
areHigherFloorButtonsPressed() : Boolean protected;

vars
	bn : GoToFloorPressButton;
begin
	// a lift moving up needs to know
	// whether any passenger has pressed
	// a button for a floor above the current one
	bn := getPressButtonForCurrentFloor;
	while bn <> pressButtons.last do
		bn := pressButtons.oneHigherThan(bn);
		if bn.pressed = true then
			return true;
		endif;
	endwhile;
end;
}

areHigherFloorsWaiting
{
areHigherFloorsWaiting() : Boolean protected;

vars
	fl : Floor;
begin
	// a lift moving up needs to know
	// whether any person on a floor above
	// is waiting for a lift
	fl := floor;
	while fl <> building.floors.last do
		fl := building.floors.oneHigherThan(fl);
		if fl.upButton.pressed = true or fl.downButton.pressed = true then
			return true;
		endif;
	endwhile;
end;
}

areLowerFloorButtonsPressed
{
areLowerFloorButtonsPressed() : Boolean protected;

vars
	bn : GoToFloorPressButton;
begin
	// a lift moving down needs to know
	// whether any passenger has pressed
	// a button for a floor below the current one
	bn := getPressButtonForCurrentFloor;
	while bn <> pressButtons.first do
		bn := pressButtons.oneLowerThan(bn);
		if bn.pressed = true then
			return true;
		endif;
	endwhile;
end;
}

areLowerFloorsWaiting
{
areLowerFloorsWaiting() : Boolean protected;

vars
	fl : Floor;
begin
	// a lift moving down needs to know
	// whether any person on a floor below
	// is waiting for a lift
	fl := floor;
	while fl <> building.floors.first do
		fl := building.floors.oneLowerThan(fl);
		if fl.upButton.pressed = true or fl.downButton.pressed = true then
			return true;
		endif;
	endwhile;
end;
}

delete
{
delete() updating, protected;

begin
	delete state;
end;
}

getPressButtonForCurrentFloor
{
getPressButtonForCurrentFloor() : GoToFloorPressButton;

vars
	index : Integer;
begin
	index := building.floors.indexOf(floor);
	return pressButtons[index];
end;
}

initialize
{
initialize() updating;

vars
	fl : Floor;
	bn : GoToFloorPressButton;
begin
	// lifts are created on the ground floor with
	// an associated state of 'going up but stopped'
	create state as MovingUp_StoppedAtFloor transient;
	floor := building.floors.first;

	// buttons are needed to go to each floor
	foreach fl in building.floors do
		create bn transient;
		bn.lift := self;
	endforeach;
end;
}

shouldStartMovingDown
{
shouldStartMovingDown() : Boolean;

begin
	return areLowerFloorButtonsPressed or
		   areLowerFloorsWaiting;
end;
}

shouldStartMovingUp
{
shouldStartMovingUp() : Boolean;

begin
	return areHigherFloorButtonsPressed
		or areHigherFloorsWaiting;
end;
}

shouldStopMovingDown
{
shouldStopMovingDown() : Boolean;

begin
	return getPressButtonForCurrentFloor.pressed = true
		or floor.downButton.pressed = true
		or not (areLowerFloorButtonsPressed or areLowerFloorsWaiting);
end;
}

shouldStopMovingUp
{
shouldStopMovingUp() : Boolean;

begin
	return getPressButtonForCurrentFloor.pressed = true
		or floor.upButton.pressed = true
		or not (areHigherFloorButtonsPressed or areHigherFloorsWaiting);
end;
}

transition
{
transition() updating;

vars
	oldState : LiftState;
	newState : LiftState;
begin
	// if a lift changes from one state to another
	// the old state object must be deleted
	oldState := state;
	newState := state.transition;
	if oldState <> newState then
		state := newState;
		delete oldState;
	endif;
end;
}

	)
	LiftState (
	jadeMethodSources
transition
{
transition(): LiftState updating, abstract, number = 1007;
}

	)
	MovingDown_BetweenFloors (
	jadeMethodSources
transition
{
transition() : LiftState updating;

vars
	state : LiftState;
begin
	create state as MovingDown_NearFloor transient;
	return state;
end;
}

	)
	MovingDown_NearFloor (
	jadeMethodSources
transition
{
transition() : LiftState updating;

vars
	state : LiftState;
begin
	if lift.shouldStopMovingDown then
		lift.getPressButtonForCurrentFloor.pressed := false;
		lift.floor.downButton.pressed := false;
		create state as MovingDown_StoppedAtFloor transient;
	else
		create state as MovingDown_BetweenFloors transient;
		lift.floor := lift.building.floors.oneLowerThan(lift.floor);
	endif;
	return state;
end;
}

	)
	MovingDown_StoppedAtFloor (
	jadeMethodSources
transition
{
transition() : LiftState updating;

vars
	state : LiftState;
begin
	if lift.shouldStartMovingDown then
		create state as MovingDown_BetweenFloors transient;
		lift.floor := lift.building.floors.oneLowerThan(lift.floor);
	else
		lift.floor.upButton.pressed := false;
		create state as StoppedAtFloor transient;
	endif;
	return state;
end;
}

	)
	MovingUp_BetweenFloors (
	jadeMethodSources
transition
{
transition() : LiftState updating;

vars
	state : LiftState;
begin
	create state as MovingUp_NearFloor transient;
	return state;
end;
}

	)
	MovingUp_NearFloor (
	jadeMethodSources
transition
{
transition() : LiftState updating;

vars
	state : LiftState;
begin
	if lift.shouldStopMovingUp then
		lift.getPressButtonForCurrentFloor.pressed := false;
		lift.floor.upButton.pressed := false;
		create state as MovingUp_StoppedAtFloor transient;
	else
		create state as MovingUp_BetweenFloors transient;
		lift.floor := lift.building.floors.oneHigherThan(lift.floor);
	endif;
	return state;
end;
}

	)
	MovingUp_StoppedAtFloor (
	jadeMethodSources
transition
{
transition() : LiftState updating;

vars
	state : LiftState;
begin
	if lift.shouldStartMovingUp then
		create state as MovingUp_BetweenFloors transient;
		lift.floor := lift.building.floors.oneHigherThan(lift.floor);
	else
		lift.floor.downButton.pressed := false;
		create state as StoppedAtFloor transient;
	endif;
	return state;
end;
}

	)
	StoppedAtFloor (
	jadeMethodSources
transition
{
transition() : LiftState updating;

vars
	state : LiftState;
begin
	if lift.shouldStartMovingUp then
		lift.floor.upButton.pressed := false;
		create state as MovingUp_BetweenFloors transient;
		lift.floor := lift.building.floors.oneHigherThan(lift.floor);
	elseif lift.shouldStartMovingDown then
		lift.floor.downButton.pressed := false;
		create state as MovingDown_BetweenFloors transient;
		lift.floor := lift.building.floors.oneLowerThan(lift.floor);
	else
		state := lift.state;
	endif;
	return state;
end;
}

	)
	PressButton (
	jadeMethodSources
pressed
{
pressed(set : Boolean; _value : Boolean io) mapping;

begin
	if set then
		causeEvent(Form.PressOrRelease, true, null);
	endif;
end;
}

	)
	ControlButton (
	jadeMethodSources
click
{
click(btn : Button input) updating;

begin
	beginTransientTransaction;
	pressButton.pressed := true;
	btn.backColor := White;
	commitTransientTransaction;
end;
}

userNotify
{
userNotify(btn : Button input; eventType : Integer; theObject : Object; eventTag : Integer; userInfo : Any) updating;

begin
	if pressButton.pressed = true then
		backColor := White;
	else
		backColor := getSystemColor(Color_3DFace);
	endif;
end;
}

	)
	BuildingForm (
	jadeMethodSources
btnStartNew_click
{
btnStartNew_click(btn : Button input) updating;

begin
	if btnStartNew.caption = 'Start' and isInputOK then
		createBuilding;
		createFloors;
		displayFloors;
		startupLifts;
		showInfo;
	else
		causeEvent(CloseDown, true, null);
		deleteBuilding;
		undisplayFloors;
		enterInfo;
	endif;
end;
}

createBuilding
{
createBuilding() updating;

begin
	beginTransientTransaction;
	create building sharedTransient;
	building.liftSpeed := 40 - 10 * scrSpeed.value;
	commitTransientTransaction;
end;
}

createDownButton
{
createDownButton(floor : Floor; floorTop : Integer) updating;

vars
	bn : ControlButton;
begin
	create bn transient;
	bn.pressButton := floor.downButton;
	addControl(bn);
	bn.caption := 242.Character;
	bn.fontName := 'Wingdings';
	bn.parent := self;
	bn.top := floorTop + 4;
	bn.left := width - 30;
	bn.width := 22;
	bn.zOrder(1);
	bn.beginNotification(bn.pressButton, PressOrRelease, Response_Continuous, 0);
	if bn.pressButton.pressed then
		bn.backColor := White;
	else
		bn.backColor := getSystemColor(Color_3DFace);
	endif; 
	bn.tag := 'Dynamic';
end;
}

createFloors
{
createFloors();

vars
	num : Integer;
	floor : Floor;
begin
	beginTransientTransaction;
	foreach num in 1 to txtFloors.text.Integer do
		create floor sharedTransient;
		floor.number := num;
		floor.building := building;
	endforeach;
	commitTransientTransaction;
end;
}

createLabel
{
createLabel(floor : Floor; floorTop : Integer) updating;

vars
	label : Label;
begin
	create label transient;
	addControl(label);
	label.caption := '  Floor ' & floor.number.String;
	label.fontBold := true;
	label.foreColor := White;
	label.alignment := label.Alignment_Left_Middle;
	label.parent := self;
	label.width := clientWidth;
	label.top := floorTop;
	label.height := 30;
	label.backColor := FloorColour;
	label.tag := 'Dynamic';
end;
}

createUpButton
{
createUpButton(floor : Floor; floorTop : Integer) updating;

vars
	bn : ControlButton;
begin
	create bn transient;
	bn.pressButton := floor.upButton;
	addControl(bn);
	bn.caption := 241.Character;
	bn.fontName := 'Wingdings';
	bn.parent := self;
	bn.top := floorTop + 4;
	bn.left := width - 52;
	bn.width := 22;
	bn.zOrder(1);
	bn.beginNotification(bn.pressButton, PressOrRelease, Response_Continuous, 0);
	if bn.pressButton.pressed then
		bn.backColor := White;
	else
		bn.backColor := getSystemColor(Color_3DFace);
	endif; 
	bn.tag := 'Dynamic';
end;
}

deleteBuilding
{
deleteBuilding() updating;

begin
	beginTransientTransaction;
	delete building;
	commitTransientTransaction;
end;
}

displayFloors
{
displayFloors() updating;

vars
	floor : Floor;
	floors : FloorArray;
	floorTop : Integer;
	distanceBetweenFloors : Integer;
begin
	floors := building.floors;
	distanceBetweenFloors := (height - 55) div (floors.size - 1);

	foreach floor in floors do
		floorTop := (floors.size - floor.number) * distanceBetweenFloors;
		createLabel(floor, floorTop);
		if floor <> floors.last then
			createUpButton(floor, floorTop);
		endif;
		if floor <> floors.first then
			createDownButton(floor, floorTop);
		endif;
	endforeach;
end;
}

enterInfo
{
enterInfo() updating;

begin
	btnStartNew.caption := 'Start';
	chkMultithread.visible := true;
	lblFloors.visible := true;
	lblLifts.visible := true;
	lblFloorsInfo.visible := false;
	lblLiftsInfo.visible := false;
	lblMultithread.visible := false;
	txtFloors.visible := true;
	txtLifts.visible := true;
	txtFloors.setFocus;
end;
}

isInputOK
{
isInputOK() : Boolean;

begin
	if txtFloors.text.Integer < 2 then
		fraMessage.caption := 'Must have at least two floors';
		txtFloors.setFocus;
		return false;
	elseif txtLifts.text.Integer < 1 then
		fraMessage.caption := 'Must have at least one lift';
		txtLifts.setFocus;
		return false;
	else
		return true;
	endif;
end;
}

load
{
load() updating;

begin
	height := getSystemMetrics(SM_cyScreen) - 30;
	setColours;
end;
}

scrSpeed_change
{
scrSpeed_change(scroll : ScrollBar input) updating;

begin
	if building <> null then
		beginTransientTransaction;
		building.liftSpeed := 40 - 10 * scrSpeed.value;
		commitTransientTransaction;
	endif;
end;
}

setColours
{
setColours() updating;

begin
	backColor := BuildingColour;
	lblFloors.backColor := BuildingColour;
	lblLifts.backColor := BuildingColour;
	chkMultithread.backColor := BuildingColour;
	lblFloorsInfo.backColor := BuildingColour;
	lblLiftsInfo.backColor := BuildingColour;
	lblMultithread.backColor := BuildingColour;
end;
}

showInfo
{
showInfo() updating;

begin
	btnStartNew.caption := 'New';
	lblFloors.visible := false;
	lblFloorsInfo.caption := txtFloors.text & ' Floors';
	lblFloorsInfo.visible := true;
	lblLifts.visible := false;
	lblLiftsInfo.caption := txtLifts.text & ' Lifts';
	lblLiftsInfo.visible := true;
	lblMultithread.visible := true;
	chkMultithread.visible := false;
	if chkMultithread.value then
		lblMultithread.caption := 'Multi-threaded';
	else
		lblMultithread.caption := 'Single threaded';
	endif;
	fraMessage.caption := null;
	txtFloors.visible := false;
	txtLifts.visible := false;
end;
}

startupLifts
{
startupLifts();

vars
	num : Integer;
begin
	foreach num in 1 to txtLifts.text.Integer do
		if chkMultithread.value then
			app.startAppMethod(currentSchema.name, 'Lift', 'createLiftForm', building, false);
		else
			app.createLiftForm(building);
		endif;
	endforeach;
end;
}

undisplayFloors
{
undisplayFloors() updating;

vars
	i : Integer;
	ctl : Control;
begin
	i := 1;
	while i <= controlCount do
		ctl := controls(i);
		if ctl.tag = 'Dynamic' then
			delete ctl;
		else
			i := i + 1;
		endif;
	endwhile;
end;
}

unload
{
unload() updating;

begin
	causeEvent(CloseDown, true, null);
end;
}

userNotify
{
userNotify(eventType : Integer; theObject : Object; eventTag : Integer; userInfo : Any) updating;

begin
	unloadForm;
end;
}

	)
	LiftForm (
	jadeMethodSources
createButton
{
createButton(button : GoToFloorPressButton) updating;

vars
	num : Integer;
	ctl : ControlButton;
begin
	num := lift.pressButtons.indexOf(button);
	create ctl transient;
	ctl.pressButton := button;
	ctl.caption := num.String;
	ctl.parent := fraLift;
	ctl.height := 22;
	ctl.width := 22;
	ctl.left := ctl.width * (num - 1);
	addControl(ctl);
	ctl.beginNotification(ctl.pressButton, PressOrRelease, Response_Continuous, 0);
	if button.pressed then
		ctl.backColor := White;
	else
		ctl.backColor := getSystemColor(Color_3DFace);
	endif;
end;
}

createLabel
{
createLabel(floor : Floor) updating;

vars
	label : Label;
begin
	create label transient;
	addControl(label);
	label.parent := self;
	label.width := width;
	label.top := distanceBetweenFloors * (lift.pressButtons.size - floor.number);
	label.height := 30;
	label.caption := null;
	label.backColor := FloorColour;
end;
}

createLift
{
createLift() updating;

begin
	create lift transient;
	beginTransientTransaction;
	building.numberOfLifts := building.numberOfLifts + 1;
	commitTransientTransaction;
	lift.building := building;
	lift.initialize;
end;
}

load
{
load() updating;

vars
	numFloors : Integer;
	bn : GoToFloorPressButton;
	floors : FloorArray;
	floor : Floor;
begin
	createLift;

	backColor := BuildingColour;
	height := getSystemMetrics(SM_cyScreen) - 30;
	floors := lift.building.floors;
	numFloors := floors.size;
	distanceBetweenFloors := (height - 55) div (numFloors - 1);
	width := 80.max(numFloors * 22 + 14);
	left := 206 + (building.numberOfLifts - 1) * width;
	caption := 'Lift ' & building.numberOfLifts.String;

	fraLift.width := width - 6;
	fraLift.top := (numFloors - lift.floor.number) * distanceBetweenFloors;

	foreach floor in floors do
		createLabel(floor);
	endforeach;
	foreach bn in lift.pressButtons do
		createButton(bn);
	endforeach;

	beginClassNotification(BuildingForm, true, CloseDown, Response_Continuous, 0);
	beginTimer(0, Timer_OneShot, 0);
end;
}

timerEvent
{
timerEvent(eventTag : Integer) updating;

vars
	pixel : Integer;
	speed : Integer;
begin
	beginTransientTransaction;
	lift.transition;
	commitTransientTransaction;

	speed := building.liftSpeed;
	if lift.state.isKindOf(MovingUp_BetweenFloors) then
		foreach pixel in 1 to distanceBetweenFloors do
			fraLift.top := fraLift.top - 1;
			doWindowEvents(speed);
		endforeach;
	elseif lift.state.isKindOf(MovingDown_BetweenFloors) then
		foreach pixel in 1 to distanceBetweenFloors do
			fraLift.top := fraLift.top + 1;
			doWindowEvents(speed);
		endforeach;
	elseif lift.state.isKindOf(MovingUp_StoppedAtFloor) or
		   lift.state.isKindOf(MovingDown_StoppedAtFloor) then
		doWindowEvents(2000);
	endif;

	beginTimer(0, Timer_OneShot, 0);
end;
}

unload
{
unload() updating;

begin
	endTimer(0);
	endNotificationForSubscriber(self);
end;
}

userNotify
{
userNotify(eventType : Integer; theObject : Object; eventTag : Integer; userInfo : Any) updating;

begin
	unloadForm;
end;
}

	)
	Array (
	jadeMethodSources
oneHigherThan
{
oneHigherThan(obj : MemberType) : MemberType;

begin
	return self[indexOf(obj) + 1];
end;
}

oneLowerThan
{
oneLowerThan(obj : MemberType) : MemberType;

begin
	return self[indexOf(obj) - 1];
end;
}

	)
