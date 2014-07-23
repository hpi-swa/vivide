preview handling
triggerPreview: aNode

	(ActiveHand submorphs notEmpty or: [aNode isNil])
		ifTrue: [^ self removeAlarm: #showPreview].

	previewHandler object = (aNode at: #state)
		ifTrue: [^ self].

	previewHandler discardPreview.
		
	previewHandler
		object: (aNode at: #state);
		objectBounds: self bounds.

	self
		removeAlarm: #showPreview;
		addAlarm: #showPreview
		after: 750.