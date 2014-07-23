private
openDebuggers

	^ (ActiveWorld submorphs
		select: [:morph | (morph isKindOf: ViToolWindow) and: [morph editor isDebugger]]
		thenCollect: [:morph | morph editor debugger])