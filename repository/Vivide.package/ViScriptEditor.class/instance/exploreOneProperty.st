actions - debugging
exploreOneProperty

	self interpretUpToSelf ifNotNil: [:interpreter |
		interpreter hasObjects ifFalse: [
			self warningSent: 'There are no objects.'.
			^ self].
		interpreter anyObject in: [:obj |
		(interpreter
			propertiesFor: obj
			ifNone: [
				self warningSent: 'Using default properties...'.
				"Just use default properties for the object at hand."
				(ViQueryInterpreter
					on: #defaultProperties asScript
					using:{obj}) upToNextProperties; propertiesFor: obj])
			explore]].