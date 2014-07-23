preview handling
triggerPreview: aNode

	(ActiveHand submorphs notEmpty or: [aNode isNil])
		ifTrue: [^ self removeAlarm: #showPreview].

	previewHandler object = (aNode at: #object)
		ifTrue: [^ self].

	previewHandler discardPreview.
		
	previewHandler
		object: (aNode at: #object);
		objectBounds: (resultList viewport hoveredBounds intersect: resultList visibleBounds).

	self
		removeAlarm: #showPreview;
		addAlarm: #showPreview
		after: 750.