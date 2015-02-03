dropping/grabbing
lockSize
	"Allows the caller to freely set the extent of the editor."

	"self resizeHandle target ifNil: [^ self]."

	self artifact
		scrollingMode: #none;  
		verticalScrollBarPolicy: #asNeeded;
		height: 300.
		
	super lockSize.