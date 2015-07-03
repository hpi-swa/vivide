accessing - properties
currentView: aViewDefinition

	self updateViewList.
	self ui viewCombo currentItem: (self ui viewCombo list detect: [:i |
			aViewDefinition isNil or: [(i at: #object) id = aViewDefinition id]]).