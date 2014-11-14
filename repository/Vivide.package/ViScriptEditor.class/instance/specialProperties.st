as yet unclassified
specialProperties

	^ {
			#id -> (self object id size = 36 ifTrue: [nil] ifFalse: [self object id]).
			#label -> self object label.
			#isProperty -> (self object isProperty ifFalse: [nil] ifTrue: [true]).  
			"#icon -> self iconCode"} select: [:assoc | assoc value notNil]