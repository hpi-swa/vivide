enumerating
nextStepsDo: aBlock
	"Enumerate all steps up to the next property extraction."
	
	(ViScriptEnumerator on: self) upToExtractionDo: aBlock.