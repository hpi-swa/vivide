private
labelFor: anObject

	^ (ViLabelService doObject: anObject) asString withoutLineEndingsTruncatedTo: 30