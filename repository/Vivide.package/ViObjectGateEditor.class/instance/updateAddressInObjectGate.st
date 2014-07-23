updating
updateAddressInObjectGate

	(self ui addressEdit theText asString findTokens: ':') in: [:tokens |
		objectGate
			hostAddress: (NetNameResolver addressFromString: tokens first);
			port: tokens second asInteger].
		
"	ViAnimatedImageMorph
		flyOutOn: self ui addressEdit
		with: UiFugueIcons tickIcon."