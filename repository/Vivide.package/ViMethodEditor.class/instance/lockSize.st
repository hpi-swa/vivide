dropping/grabbing
lockSize

	"self resizeHandle target ifNil: [^ self]."

	self artifact
		scrollingMode: #none;  
		verticalScrollBarPolicy: #asNeeded;
		height: 300.
		
	super lockSize.