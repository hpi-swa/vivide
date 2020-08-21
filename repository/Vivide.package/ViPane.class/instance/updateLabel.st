as yet unclassified
updateLabel
	"Read script properties and update label/title of my enclosing system window."
	
	| newLabel scriptsSummary objectsSummary |
	self script ifNil: [^ self].
			
	newLabel := self script nextLabel.

	"Simplify visual appearance for try-outs."
	(self isExperimentalTool or: [self useSimpleWindowTitle])
		ifTrue: [newLabel := (self script ifNil: [''] ifNotNil: [:q | q nextLabel ifNil: ['']])]
		ifFalse: [
			"Make script editor more explicit."
			self isScriptEditor
				ifTrue: [newLabel := 'Script Editor']
				ifFalse: [	
					scriptsSummary := (ViLabelService doObject: self) asString.
	
					self flag: #noStreamsSupport. "mt: Streams do not have a size..."
	
					"Append summary for objects if there is only one pane/script."
					objectsSummary := self objects size = 1
						ifTrue: ['{1} ({2})' format: {
							(ViLabelService doObject: self objects first) asString.
							(ViObjectOriginService doObject: self objects first) asString}]
						ifFalse: [((self objects
							collect: [:object | (ViLabelService doObject: object) asString])
							ifEmpty: [#('')])
							reduce: [:oneliner :label | oneliner, ', ', label]].
	
					newLabel := (objectsSummary
						ifEmpty: [scriptsSummary]
						ifNotEmpty: ['{1}: {2}' format: {scriptsSummary. objectsSummary}])]].
		
	self decoration window setLabel: newLabel.