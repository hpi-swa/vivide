as yet unclassified
storeOn: stream
	"Flatten this script. No support for meta-scripts. Write only the minimal set of properties."

	| isFirst props |
	stream
		nextPut: ${;
		cr.

	isFirst := true.

	self allStepsDo: [:step |
		props := nil.
		step isMeta ifTrue: [Error signal: 'Meta scripts not supported.'].
		step isReference ifFalse: [
			stream nextPutAll: step sourceCode.
			
			isFirst ifTrue: [
				props := OrderedCollection new.
				props add: #view -> step viewClass.
				isFirst := false].
			
			step isPropertyExtraction ifTrue: [
				props ifNil: [props := OrderedCollection new].
				props add: #isProperty -> true].
			
			props ifNotNil: [
				stream nextPutAll: ' -> '; nextPutAll: props asArray compactStoreString].
			
			stream nextPut: $.; cr].
		
		].

	stream nextPut: $}.
	stream nextPutAll: ' asScript '.