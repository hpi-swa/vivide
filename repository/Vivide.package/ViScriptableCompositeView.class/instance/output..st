as yet unclassified
output: aScriptableView

	output == aScriptableView ifTrue: [^ self].
	
	output ifNotNil: [
		output disconnectSignal: #objectSelectionChanged: from: self selector: #objectSelectionChanged:].
	
	output := aScriptableView.
	
	output ifNotNil: [
		self connect: output signal: #objectSelectionChanged: toSelector: #objectSelectionChanged:].