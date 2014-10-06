as yet unclassified
updateObject

	| spec |
	spec := Compiler evaluate: self script.
	"<block> -> <array> OR <symbol> -> <array> OR <symbol>"
	
	self sourceCode
		ifNotNil: [:code | self object definition sourceCode: code]
		ifNil: [spec isSymbol
			ifTrue: ["Reference to query step"]
			ifFalse: [spec key isSymbol
				ifTrue: ["Reference to definition"]
				ifFalse: [Error signal: 'No code recognized!']]].
	
	self propertiesFromList: (Dictionary newFrom: spec value).