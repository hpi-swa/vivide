definitions
def187d2c6efa015d4ab7481a739c679b7b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:method | | loc |
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
				put: (loc first: lineIndex)]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'187d2c6e-fa01-5d4a-b748-1a739c679b7b').
(#inputKind -> CompiledMethod).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 9:28:02 am')})).
(#sourceCode -> '[:method | | loc |
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
				put: (loc first: lineIndex)]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})