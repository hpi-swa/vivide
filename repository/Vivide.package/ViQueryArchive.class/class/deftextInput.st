definitions
deftextInput
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 May 2014 5:31:37 pm'); yourself)); add: (#id->#textInput); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #textInput ifTrue: [view] ifFalse: [
		ViInputField newLineEdit in: [:v |
			v setProperty: #viewId toValue: #textInput.
		
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			v]].
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #textInput ifTrue: [view] ifFalse: [
		ViInputField newLineEdit in: [:v |
			v setProperty: #viewId toValue: #textInput.
		
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			v]].
	newView]'); yourself)