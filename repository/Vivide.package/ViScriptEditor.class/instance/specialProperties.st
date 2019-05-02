support - properties
specialProperties

	^ {
			#id -> (self thisStep id size = 36 ifTrue: [nil] ifFalse: [self thisStep id]).
			#label -> self thisStep label.
			#isProperty -> (self thisStep isPropertyExtraction ifFalse: [nil] ifTrue: [true]).
			
			"#after -> (self thisStep after ifEmpty: [nil]).
			#before -> (self thisStep before ifEmpty: [nil])."
			
			"#icon -> self iconCode"} select: [:assoc | assoc value notNil]