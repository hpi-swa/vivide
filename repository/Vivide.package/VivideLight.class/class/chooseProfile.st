as yet unclassified
chooseProfile

	| pane script |
	script := {
		[:profiles | profiles sorted: [:a :b | a label < b label or: [a label = b label and: [a id < b id]]]]
			-> { #view -> ViTreePlainView }. 
		[:profile | #text -> profile label].
		[:profile | #text -> profile organization stepsWithLabel size].
		[:profile | #text -> profile organization orderedSteps size].
		[:profile | #text -> profile converter printString].
	} asScript.
	pane := ViPane new
		script: script;
		objects: self profiles.
		
	pane chooseObject ifNotNil: [:profile |
		self openProfile: profile].