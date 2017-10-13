*vivide
allClassesImplementingTrait: aTrait

	^ self allClasses select: [:ea | ea withAllSuperclasses anySatisfy: [:foo | foo allTraits includes: aTrait]]