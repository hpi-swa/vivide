memento - cleanup
clear

	super clear.
	
	self step
		ifNil: ["Not supported yet..."]
		ifNotNil: [:q |
			self currentType: self currentTypeFromStep.

			self currentIcon: q icon.
			self currentLabel: q label.

			self currentView: q viewDefinition.

			self currentDefinition: q definition.
			q isReferenceStep ifTrue: [
				self currentReference: q reference].
	].

	self updateSummaryLbl.