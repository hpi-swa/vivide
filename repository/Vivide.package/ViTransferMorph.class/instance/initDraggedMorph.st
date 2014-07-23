private
initDraggedMorph

	self flag: #refactor. "mt: Code duplication."
	(self passenger isKindOf: ViArtifactContainer)
		ifTrue: [self initDraggedMorphFor: {self passenger object}.
			draggedMorph addMorphBack: (self passenger imageForm in: [:form |
				(form width > 300 or: [form height > 200])
					ifTrue: [form scaledToSize: 300@200]
					ifFalse: [form]]) asMorph]
		ifFalse: [
			(self passenger isKindOf: ViPane)
				ifTrue: [self initDraggedMorphFor: {self passenger}.
			draggedMorph addMorphBack: (self passenger imageForm in: [:form |
				(form width > 300 or: [form height > 200])
					ifTrue: [form scaledToSize: 300@200]
					ifFalse: [form]]) asMorph]
				ifFalse: [super initDraggedMorph]].