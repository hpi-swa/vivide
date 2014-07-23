accessing
groupNamed: label

	^ (self groups detect: [:assoc | assoc key = label]) value