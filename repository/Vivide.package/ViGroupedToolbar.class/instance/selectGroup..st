selection
selectGroup: aModel

	self currentGroup value == aModel ifTrue: [^ self].

"	self editor ifNotNil: [:ed |
		aModel refreshFromEditor: ed].
"
	secondaryList model: aModel.
	secondaryList helpText: aModel helpText.
	secondaryList selectNone.
	self redrawLater.