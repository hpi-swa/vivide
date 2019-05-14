private-event lists
allQueryEvents

	^ ((SystemOrganization listAtCategoryNamed: 'Vivide-Queries-Notifications')
		collect: [:nm | Smalltalk at: nm]
		thenSelect: [:cls | cls inheritsFrom: AbstractEvent])
			inject: OrderedCollection new
			into: [:allEvents :eventClass | allEvents addAll: eventClass itemChangeCombinations; yourself]