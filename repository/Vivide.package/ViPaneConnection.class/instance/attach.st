as yet unclassified
attach

	self attachSilently ifTrue: [
		self notify.
		self checkTargetScript].