as yet unclassified
wrapPaneIntoMultiPaneWidget

	| singlePane metaScript |
	singlePane := self pane.
	metaScript := ViScriptPart convertPanes: {singlePane asDictionary}.
	
	"Adopt organization of single pane's script."
	singlePane currentQuery ifNotNil: [:query |
		metaScript adoptOrganization: query organization].
	
	self pane: (ViPane new
		addMorphBack: (ViMultiPaneWidget new
			initializeFor: metaScript in: self pane;
			addPane: singlePane; "preserve state"
			yourself);
		objects: singlePane objects;
		queries: singlePane queries;
		currentQuery: metaScript;
		yourself).

	"Calculate the initial meta script."
	self pane view in: [:multiPaneWidget |
		^ multiPaneWidget
			setProperty: #isUpdatingScript toValue: true;
			model: self pane model;
			removeProperty: #isUpdatingScript;
			yourself].