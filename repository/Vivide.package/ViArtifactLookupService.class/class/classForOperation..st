as yet unclassified
classForOperation: aSymbol

	^ ((Dictionary newFrom: {
		#createClass -> [ViArtifactLookupService doObject: Object].
		#createMemo -> [ViArtifactLookupService doObject: Text new].
		#createTag -> [ViArtifactLookupService doObject: SdTag new].
		#createSnippet -> [ViArtifactLookupService doObject: ViSourceCodeSnippet new]})
			at: aSymbol ifAbsent: []) value