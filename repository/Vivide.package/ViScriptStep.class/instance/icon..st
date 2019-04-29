accessing
icon: aForm

	icon = aForm ifTrue: [^ self].
	
	icon in: [:oldIcon |
		icon := aForm.
		
		self notifier
			stepIconChanged: self
			from: oldIcon to: icon].