add/remove - operations
addOperation: aSymbol label: aString icon: aForm argument: anObject group: aGroupLabel

	self objects add: (UiPropertyItemNode new
		at: #operation put: aSymbol;
		at: #argument put: anObject;
		at: #text put: aString;
		at: #icon put: aForm;
		at: #group put: aGroupLabel;
		yourself).