selection
selectGroup: aModel

	self currentGroup value == aModel ifTrue: [^ self].

	secondaryList model: aModel.
	secondaryList helpText: aModel helpText.
	secondaryList selectNone.
	self redrawLater.