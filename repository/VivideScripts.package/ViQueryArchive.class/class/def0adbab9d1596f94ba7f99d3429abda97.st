definitions
def0adbab9d1596f94ba7f99d3429abda97
	<definition>

	^ (Dictionary newFrom: {
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
(#class -> ViQueryStepDefinition).
(#id -> #'0adbab9d-1596-f94b-a7f9-9d3429abda97').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 9:28:02 am')})).
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
		value: in) do: [:result | out addAll: result asList]]')})