updating
updateObject

	| spec |
	self setProperty: #isUpdating toValue: true.
	
	spec := Compiler evaluate: self script.
	"<block> -> <array> OR <symbol> -> <array> OR <symbol>"
	
	self sourceCode
		ifNotNil: [:code | self object sourceCode: code]
		ifNil: [spec isSymbol
			ifTrue: ["Reference to query step"]
			ifFalse: [spec key isSymbol
				ifTrue: [self flag: #todo "Reference to definition"]
				ifFalse: [Error signal: 'No code recognized!']]].
	
	"If it was new, is is not anymore after its first save operation."
	self object setProperty: #isNew toValue: nil.   
	
	self propertiesFromList: (Dictionary newFrom: spec value).

	"Ensure tuple information."
	(self inputKind size > 1 and: [(self object hasProperty: #inputKind) not])
		ifTrue: [self object setProperty: #inputKind toValue: (Array new: self inputKind size)].

	"Remind the user to set the input kind."
	self hasInputKind ifFalse: [self addHintForInputKindTuple].

	self removeProperty: #isUpdating.