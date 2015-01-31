as yet unclassified
migrate
	"Temporary. Merge current information to profile and return that profile.
	
	self migrate explore."
 
	| profile |
	profile := self new.
	profile
		name: 'Migrated on ', TimeStamp now asString;
		organization: ViQueryOrganizer default;
		bookmarks: VivideLight editorStates;
		closedObjects: ViObjectHistory closedObjects;
		recentClasses: ViObjectHistory recentClasses;
		recentMethods: ViObjectHistory recentMethods;
		recentPackages: ViObjectHistory recentPackages;
		transcriptHistory: ViObjectHistory transcriptHistory.
	self assert: profile isValid.
	
	VivideLight profiles add: profile.
	VivideLight active ifNotNil: [:vivide | vivide profile: profile].
	
	^ profile    