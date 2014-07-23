as yet unclassified
details
	"Different scenarios for the details page."
	
	^ {
	{#code. self squeakTextViewCreator} -> {
		[:method | #text -> (SHTextStylerST80 new
				classOrMetaClass: method methodClass;
				styledTextFor: method getSource asText)] -> {CompiledMethod.Object}
	}.
	{#definition. self squeakTextViewCreator} -> {
		[:class | 	#text -> (SHTextStylerST80 new styledTextFor: class definition asText)] -> {ClassDescription.Object}
	}.
	{#documentation. self squeakTextViewCreator} -> {
	[:method | 
	"See CodeHolder >> commentContents"
	| poss aClass aSelector |
	aClass := method methodClass.
	aSelector := method selector.
	#text -> ((poss := aClass precodeCommentOrInheritedCommentFor: aSelector)
		isEmptyOrNil
			ifTrue: [aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), '

Has no comment') asText makeSelectorBoldIn: aClass]
				ifNil: ['Hamna']]
			ifFalse: [aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), '

', poss) asText makeSelectorBoldIn: aClass]
				ifNil: [poss]])
] -> {CompiledMethod.Object}
	}.
	{#byteCodes. self squeakTextViewCreator} -> {
		[:method | #text -> method symbolic] -> {CompiledMethod.Object}}.
	{#decompile. self squeakTextViewCreator} -> {
		[:method | #text -> (method decompileWithTemps decompileString asText makeSelectorBoldIn: method methodClass)] -> {CompiledMethod.Object}}.
	{#prettyPrint. self squeakTextViewCreator} -> {
		[:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
			| class selector sourceString |
			class := method methodClass.
			selector := method selector.
			sourceString := class ultimateSourceCodeAt: selector ifAbsent: ['error'].
			#text -> (SHTextStylerST80 new
				classOrMetaClass: class;
				styledTextFor: (class prettyPrinterClass format: sourceString in: class notifying: nil) asText)] -> {CompiledMethod.Object}}.
	{#prettyPrintDiff. self squeakTextViewCreator} -> {
		[:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
			| class selector sourceString prior |
			class := method methodClass.
			selector := method selector.
			sourceString := class ultimateSourceCodeAt: selector ifAbsent: ['error'].
			prior := (class changeRecordsAt: selector) in: [:records |
				(records == nil or: [records size <= 1])
					ifTrue: [nil]
					ifFalse: [(records at: 2) string]].
			sourceString := class prettyPrinterClass format: sourceString in: class notifying: nil.
	
			#text -> (prior ifNil: [sourceString] ifNotNil: [
					TextDiffBuilder
						buildDisplayPatchFrom: prior
						to: sourceString
						inClass: class
						prettyDiffs: true]) asText] -> {CompiledMethod.Object}}
	}