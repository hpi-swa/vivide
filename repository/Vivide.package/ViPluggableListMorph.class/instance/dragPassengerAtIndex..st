as yet unclassified
dragPassengerAtIndex: index

	^ (self model childAt: index inGroup: self model groups first)
		in: [:node | {node at: #object}]