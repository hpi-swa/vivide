instance creation
newFrom: someSourceMorphs to: someTargetMorphs in: aContainer

	| instance |
	instance := self new
		addAllSourceMorphs: someSourceMorphs;
		addAllTargetMorphs: someTargetMorphs.
	aContainer addMorphFront: instance.
	^ instance
		