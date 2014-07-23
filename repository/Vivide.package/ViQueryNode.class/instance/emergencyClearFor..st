private
emergencyClearFor: anException
	
	self at: #errorOnSteps put: true.
	children := Dictionary new.
	groups := OrderedCollection new.