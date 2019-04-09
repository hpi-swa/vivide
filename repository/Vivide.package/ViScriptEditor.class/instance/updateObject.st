updating
updateObject

	| spec |
	self setProperty: #isUpdating toValue: true.
	
	spec := Compiler evaluate: self fullSourceCode.
	"<block> -> <array> OR <symbol> -> <array> OR <symbol>"
	
	self
		assert: spec key isBlock;
		assert: spec key numArgs = 2.
	
	self scriptSourceCode
		ifNotNil: [:code | self object sourceCode: code]
		ifNil: [Error signal: 'No code recognized!'].
	
	"If it was new, is is not anymore after its first save operation."
	self thisStep setProperty: #isNew toValue: nil.   
	self updateObjectProperties: (Dictionary newFrom: spec value).

	"Ensure tuple information such as #(nil nil) for pairs."
	(self inputKind size > 1 and: [(self object hasProperty: #inputKind) not])
		ifTrue: [self thisStep setProperty: #inputKind toValue: (Array new: self inputKind size)].

	self thisStep serializeIntoArchive.

	self removeProperty: #isUpdating.