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
	
	self context asList do: [:obj |
		ViObjectChangeNotifier uniqueInstance
			objectChanged: obj].

	ViAnimatedImageMorph
		flyOutOn: self
		with: UiFugueIcons controlIcon "m imageForm".