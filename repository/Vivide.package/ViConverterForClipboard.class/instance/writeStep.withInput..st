write
writeStep: tool withInput: someObjects
	"Flatten this script. No support for meta-scripts. Write only the minimal set of properties."

	| isFirst props |
	self clipboard clipboardText: (String streamContents: [:stream |
		stream
			nextPut: ${;
			cr.

		isFirst := true.

		tool allStepsDo: [:step |
			props := nil.

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
			
			stream nextPut: $.; cr.
			
			].

		stream nextPut: $}.
		stream nextPutAll: ' asScript '.
		
		someObjects ifNotEmpty: [
			| args |
			args := [someObjects asList compactStoreString] on: Error do: [:ex | '#()'].

			stream
				nextPutAll: 'openScriptWith: ';
				nextPutAll: args].
	]).