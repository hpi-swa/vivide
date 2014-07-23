as yet unclassified
showEvaluationResult: anObject

	"| m |
	m := UiItemViewMorph new
		form: (ViIconService doObject: anObject);
		label: (ViLabelService doObject: anObject);
		font: UiPlatform current standardListFont;
		labelColor: Color black;
		color: nil.
	m
		formPosition: 0@0;
		labelPosition: m form width @ 0;
		extent: 50@20."
	
	(ViQueryInterpreter isCollection: self context)
		ifFalse: [	ViObjectChangeNotifier uniqueInstance
			objectChanged: self context]
		ifTrue: [self context do: [:obj |
			ViObjectChangeNotifier uniqueInstance
				objectChanged: obj]].

	ViAnimatedImageMorph
		flyOutOn: self
		with: UiFugueIcons controlIcon "m imageForm".