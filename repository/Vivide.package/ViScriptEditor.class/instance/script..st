as yet unclassified
script: aString
	"Reset the whole script to be edited."

	script := aString.
	scriptPointer := nil. "Reset"
	self updateSourceCode.