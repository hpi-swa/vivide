accessing
icon: aForm

	icon = aForm ifTrue: [^ self].
	
	icon in: [:oldIcon |
		icon := aForm.
		
		self notifier
			step: self
			properties: {#icon -> oldIcon}
			changedTo: {#icon -> self icon}].