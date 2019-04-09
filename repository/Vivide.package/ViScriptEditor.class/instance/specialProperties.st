support - properties
specialProperties

	^ {
			#id -> (self thisStep id size = 36 ifTrue: [nil] ifFalse: [self thisStep id]).
			#label -> self thisStep label.
			#isProperty -> (self thisStep isPropertyExtraction ifFalse: [nil] ifTrue: [true]).
			#isReference -> (self thisStep isReference ifFalse: [nil] ifTrue: [true]).  
			"#icon -> self iconCode"} select: [:assoc | assoc value notNil]