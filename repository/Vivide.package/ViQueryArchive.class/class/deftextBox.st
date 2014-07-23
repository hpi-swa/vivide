definitions
deftextBox
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 June 2014 10:17:40 am'); yourself)); add: (#id->#textBox); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #textBox ifTrue: [view] ifFalse: [
		ViInputField newTextEdit in: [:v |
			v setProperty: #viewId toValue: #textBox.
			v hResizing: #spaceFill; vResizing: #spaceFill.
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			v]].
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #textBox ifTrue: [view] ifFalse: [
		ViInputField newTextEdit in: [:v |
			v setProperty: #viewId toValue: #textBox.
			v hResizing: #spaceFill; vResizing: #spaceFill.
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			v]].
	newView]'); yourself)