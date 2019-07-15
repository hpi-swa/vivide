steps
step99cac90068fd1449966b015ed7762e86
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | | loc |
	loc := (Smalltalk at: #LinesOfCode ifAbsentPut: [Dictionary new])
		at: method methodReference ifAbsentPut: [OrderedCollection new].
	Array streamContents: [:strm | | source lineIndex |
		lineIndex := 0.
		ViToolSet linesOfCodeForMethod: method do: [:code :start :stop | | line |
			lineIndex := lineIndex + 1.
			line := (loc size < lineIndex
				ifTrue: [loc add: ViLineOfCode new]
				ifFalse: [loc at: lineIndex]).
			line checkHashForCode: code.
			
			source ifNil: [
				source := ViTextStyler new
					classOrMetaClass: method methodClass;
					styledTextFor: code asText.
				].
			strm nextPut: line -> (source copyFrom: start to: stop)].
		"Remove trailing old lines."
		lineIndex < loc size ifTrue: [
			(Smalltalk at: #LinesOfCode)
				at: method methodReference
				put: (loc first: lineIndex)]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'0adbab9d-1596-f94b-a7f9-9d3429abda97').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 9:28:02 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | | loc |
	loc := (Smalltalk at: #LinesOfCode ifAbsentPut: [Dictionary new])
		at: method methodReference ifAbsentPut: [OrderedCollection new].
	Array streamContents: [:strm | | source lineIndex |
		lineIndex := 0.
		ViToolSet linesOfCodeForMethod: method do: [:code :start :stop | | line |
			lineIndex := lineIndex + 1.
			line := (loc size < lineIndex
				ifTrue: [loc add: ViLineOfCode new]
				ifFalse: [loc at: lineIndex]).
			line checkHashForCode: code.
			
			source ifNil: [
				source := ViTextStyler new
					classOrMetaClass: method methodClass;
					styledTextFor: code asText.
				].
			strm nextPut: line -> (source copyFrom: start to: stop)].
		"Remove trailing old lines."
		lineIndex < loc size ifTrue: [
			(Smalltalk at: #LinesOfCode)
				at: method methodReference
				put: (loc first: lineIndex)]]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0adbab9d-1596-f94b-a7f9-9d3429abda97').
(#iconCode -> 'nil').
(#id -> #'99cac900-68fd-1449-966b-015ed7762e86').
(#isProperty -> false).
(#label -> '[DEBUG] Categorize lines of code').
(#next -> #'56b2492f-f394-db42-ade3-e2d633f5230d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> CompiledMethod).
(#priority -> 5130).
(#view -> ViTreeViewExtended)
}))
})