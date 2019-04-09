actions - profile
addScriptToProfile

	ViProfile active addScript: self thisStep.

	ViAnimatedImageMorph
		flyOutOn: self
		with: UiSilkIcons databaseEditIcon. 