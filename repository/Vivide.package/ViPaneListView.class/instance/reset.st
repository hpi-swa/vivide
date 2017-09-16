as yet unclassified
reset

	| defaultScript |
	
	self connections copy do: [:c | c detach].
	self content removeAllMorphs.
	
	self model ifNil: [^ self].

	defaultScript := (self organization stepById: #defaultInPaneList)
		ifNil: [ [:object | object] asScript
				id: #defaultInPaneList;
				setProperty: #isNew toValue: true;
				adoptOrganization: self organization;
				yourself].

	self model nodes do: [:node | | customScript newPane |
		self flag: #fixRecursion. "mt: Avoid using scripts of owner panes. Risk of endless recursion."
		
		customScript := (node at: #script ifAbsent: [defaultScript]).
		customScript isSymbol "Just identifier given?" ifTrue: [
			(ViActiveOrganizer value: self organization during: [customScript asScript])
				ifNil: [customScript := [:object | object] asScript
							id: customScript;
							setProperty: #isNew toValue: true;
							adoptOrganization: self organization;
							yourself]
				ifNotNil: [:script | customScript := script]].			
		
		newPane := (
			ViPane new
				currentQuery: customScript;
				queries: [self organization orderedSteps];
				height: (node at: #height ifAbsent: [200]); "changeable via halo"
				balloonText: (node at: #balloonText ifAbsent: [node at: #text ifAbsent: [nil]]);
				yourself).
				
		(node includesKey: #objects) "Tuples?"
			ifFalse: [newPane objects: (node at: #object ifAbsent: [nil]) asList]
			ifTrue: [
				(node at: #objects) do: [:ea |
					(ViPaneConnection kind: #fixed from: self to: newPane)
						objects: {ea};
						attachSilently]].
				
		self content addMorphBack: newPane].
	
	self connections do: [:c | c notify].