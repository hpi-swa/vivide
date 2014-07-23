actions - animations
closeWithDeleteAnimation

	ViArtifactToolbar hideAllToolbars.

	(AnimGrayscaleAnimation
		grayOutOn: self
		duration: 500)
		register; start: #deleteWhenFinished.
		
	(AnimBrightnessAnimation
		darkenOn: self
		to: 0.2
		duration: 500)
		finishBlock: [self close];
		register; start: #deleteWhenFinished.
		
	ViAnimatedImageMorph
		flyOutOn: self
		with: UiSilkIcons binIcon.