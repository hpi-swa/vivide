comparing
= other

	^ ((super = other
		and: [self mapType = other mapType])
		and: [self inputKind = other inputKind])
		and: [self outputKind = other outputKind]