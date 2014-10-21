as yet unclassified
specialProperties

	^ {
			#id -> (self object id size = 36 ifTrue: [nil] ifFalse: [self object id]).
			#label -> self object label.
			"#icon -> self iconCode"} select: [:assoc | assoc value notNil]