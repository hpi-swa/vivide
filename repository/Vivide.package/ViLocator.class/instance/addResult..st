actions - results
addResult: anObject

	resultList model addChild: (
		UiPropertyItemNode new
			at: #object put: anObject;
			at: #source put: currentSource;
			yourself).