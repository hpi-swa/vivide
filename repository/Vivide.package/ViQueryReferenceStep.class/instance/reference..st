accessing
reference: aQueryStep

	reference == aQueryStep ifTrue: [^ self].
	
	reference in: [:oldReference |
		reference := aQueryStep.
		
		self notifier
			stepReferenceChanged: self
			from: oldReference to: reference].