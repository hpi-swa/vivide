actions - profile
addScriptToProfile

	ViProfile active addScript: self object.

	ViAnimatedImageMorph
		flyOutOn: self
		with: UiSilkIcons databaseEditIcon. 