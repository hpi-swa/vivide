actions - debugging
exploreOneProperty

	self interpretUpToSelf ifNotNil: [:interpreter |
		interpreter hasObjects ifFalse: [
			self warningSent: 'There are no objects.'.
			^ self].
		interpreter objects anyOne in: [:obj |
		(interpreter
			propertiesFor: obj
			ifNone: [
				self warningSent: 'Using default properties...'.
				"Just use default properties for the object at hand."
				(ViScriptInterpreter
					on: #defaultProperties asScript
					using:{obj}) upToExtraction; propertiesFor: obj])
			explore]].