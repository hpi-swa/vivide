styling
styleExpression: aString
	"Convertes the given expression into a styled text."
	
	| result |
	result := aString asText copy.
	self privateStyle: result.
	^ result