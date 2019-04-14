updating
updateUi

	self object ifNil: [^ self].

	self layoutInset: (0@0 corner: 0@ ((self isScriptEndOfLevel and: [self isScriptInaccessible not]) ifTrue: [Preferences standardButtonFont height] ifFalse: [0])).

	"General colors."
	self isScriptInaccessible
		ifTrue: [
			self color: (Color fromString: '#FFCFCF'). 
			self textField color: (Color fromString: '#FFCFCF')]
		ifFalse: [
			self color: Color white.
			self textField color: Color white].