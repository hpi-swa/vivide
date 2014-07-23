accessing
widgetProperties

	^ super widgetProperties, {{'Definition Edit'. #yourself} -> {
		#inputKind -> Object.
		#outputKind -> Object.
		#id -> String}}