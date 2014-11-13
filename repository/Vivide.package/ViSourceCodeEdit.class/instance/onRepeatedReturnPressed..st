actions
onRepeatedReturnPressed: count

	self autoCreateArtifacts ifFalse: [^ self].

	count == 2 ifTrue: [
		(UiMessage information: 'Tap once more for new object.')
			setKillDuration: 2;  
			bottomLeft: (self textMorph localPointToGlobal: (
				UiPlatform current textEditorPointBlock: self textMorph editor)
					topLeft) - (0@5);
			openInWorld].
		
	count == 3 ifTrue: [
		self textMorph undoRepeatedReturnPress.
		self newArtifactRequested].