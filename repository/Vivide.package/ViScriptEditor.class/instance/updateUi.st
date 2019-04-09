updating
updateUi

	self object ifNil: [^ self].

	self updatePropertyBar.
	self updateNavigationBar.

	"General colors."
	self isScriptInaccessible
		ifTrue: [
			self color: (Color fromString: '#FFCFCF'). 
			self textField color: (Color fromString: '#FFCFCF')]
		ifFalse: [
			self color: Color white.
			self textField color: Color white].