private
wrapEditorState: aQuery
	"Prepared for specific object editor states. See: #insertObject:after:."

	| node |	
	node := UiPropertyItemNode new
		at: #state put: aQuery;
		at: #icon put: ((ViIconService doObject: aQuery) ifNil: [ViIcons blankIcon]);
		at: #text put: ((ViLabelStringService doObject: aQuery), ' <font color="#AAAAAA">', (ViObjectOriginService doObject: aQuery), '</font>') asHtmlText; 
		yourself.
		
	self connect: node signal: #propertiesChanged: toSelector: #onPropertiesChanged:in: pattern: #(1 0).
	
	^ node