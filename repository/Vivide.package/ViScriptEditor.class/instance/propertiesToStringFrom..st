support - properties
propertiesToStringFrom: someAssociations

	| raw kernelProperties viewProperties otherProperties |
	
	raw := (OrderedDictionary newFromAny: ((someAssociations
		select: [:assoc | (self propertiesToIgnore at: assoc key ifAbsent: [#foo]) in: [:spec |
			spec notNil and: [spec noneSatisfy: [:default | assoc value = default]]]])
		sorted: [:a1 :a2 | a1 key <= a2 key])) associations.
	
	kernelProperties := ViScriptStep kernelProperties in: [:p | 
		raw select: [:ea | p includes: ea key]].
	viewProperties := (ViScriptTemplate lookupScriptPropertiesForView: self allSteps first viewClass) in: [:p |
		raw select: [:ea | p anySatisfy: [:prop | prop key = ea key]]].
	otherProperties := raw copyWithoutAll: kernelProperties, viewProperties.

	^ String streamContents: [:result |
		result nextPutAll: '{'; cr.
		
		{
			{ '"Basic Properties"'. kernelProperties }.
			{ '"View Properties"'. viewProperties }.
			{ '"Other Properties"'. otherProperties }.
		} do: [:spec |
			spec second ifNotEmpty: [
				result tab; nextPutAll: spec first translated; cr.
					
				 spec second
					do: [:property |
						result tab.
						result nextPutAll: property key storeString.
						result nextPutAll: ' -> '.
						result nextPutAll: property value compactStoreString.
						result nextPutAll: '.'; cr]]].
		
		result nextPutAll: '}' ]