as yet unclassified
wrapPaneIntoMultiPaneWidget

	| singlePane metaScript newPane |
	"Copy default scripts on the fly."
	self pane currentQuery ifNotNil: [:script |
		script isDefault ifTrue: [self pane currentQuery: script deepCopy]].
	
	singlePane := self pane.
	metaScript := ViScriptPart convertPanes: {singlePane asDictionary}.
	
	"Adopt organization of single pane's script."
	singlePane currentQuery ifNotNil: [:query |
		metaScript adoptOrganization: query organization].
	
	newPane := ViPane new.
	newPane
		addMorphBack: (ViMultiPaneWidget new
			initializeFor: metaScript in: newPane;
			addPane: singlePane; "preserve state"
			yourself);
		objects: singlePane objects;
		queries: singlePane queries;
		currentQuery: metaScript.
	self pane: newPane.

	"Update connections."
	singlePane connections copy
		do: [:c |
			c detach.
			c source = singlePane ifTrue: [c source: newPane].
			c target = singlePane ifTrue: [c target: newPane].
			c attachSilently].
	(ViResultsConnection from: newPane view to: singlePane) attachSilently.
	(ViSelectionConnection from: singlePane to: newPane view) attachSilently.
	
	"Calculate the initial meta script."
	self pane view in: [:multiPaneWidget |
		^ multiPaneWidget
			setProperty: #isUpdatingScript toValue: true;
			model: self pane model;
			removeProperty: #isUpdatingScript;
			yourself].