as yet unclassified
migrate
	"Temporary. Merge current information to profile and return that profile.
	
	self migrate explore."
 
	| profile |
	profile := self newEmpty.
	profile
		label: 'Migrated on ', TimeStamp now date asString;
		organization: ViQueryOrganizer default;
		bookmarks: VivideLight editorStates;
		closedObjects: ViObjectHistory closedObjects;
		recentClasses: ViObjectHistory recentClasses;
		recentMethods: ViObjectHistory recentMethods;
		recentPackages: ViObjectHistory recentPackages;
		transcriptHistory: ViObjectHistory transcriptHistory.
	self assert: profile isValid.
	
	profile
		addBlockForNewSnippet;
		addBlockForNewClass;
		addBlockForNewMemo.
	
	VivideLight profiles add: profile.
	VivideLight openProfile: profile.

	"Overwrite old-style default properties."
	(#defaultProperties asScript isKindOf: ViScriptPart) ifFalse: [
		profile addScript: ([:object | #text -> object printString] asScript
			id: #defaultProperties;
			yourself)].

	^ profile    