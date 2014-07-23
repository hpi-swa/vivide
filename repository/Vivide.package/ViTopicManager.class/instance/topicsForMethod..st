as yet unclassified
topicsForMethod: aMethodReference

	| scanner d |
	d := Dictionary new.
	scanner := RBScanner on: aMethodReference compiledMethod getSource asString readStream.
	[scanner atEnd] whileFalse: [
		
	
		| v |
		v := [scanner next] on: Error do: [^ d].
		
		((v isIdentifier or: [v isKeyword]) or: [v isLiteralToken]) ifTrue: [
			v := v value asString.
		
		((v findTokens: ' ') gather: [:token | 
			| t |
			t := OrderedCollection new.
			(token endsWith: '=' "base64") ifFalse: [
				'([[:upper:]]|[[:lower:]])[[:lower:]]*' asRegex matchesIn: token do: [:tk | 
					t add: tk withBlanksTrimmed asLowercase].		
				'[[:upper:]][[:upper:]]*' asRegex matchesIn: token do: [:tk |
					tk size > 1 ifTrue: [t add: tk withBlanksTrimmed asLowercase]]].		

			t asSet]) ifNotEmpty: [:tokens |
		
		tokens do: [:t |
			
	d at: t put: (d at: t ifAbsentPut: [0]) + 1]]]].

	"Clean up."
	#('self' 'true' 'false' 'nil' 'and' 'all' 'boolean' 'morph' 'rba') do: [:k | d removeKey: k ifAbsent: []].
	d keys copy do: [:k | k size < 3 ifTrue: [d removeKey: k]].

	^ d