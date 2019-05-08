support - properties
propertiesToStringFrom: associations

	^ ((OrderedDictionary newFromAny: ((associations
			select: [:assoc | (self propertiesToIgnore at: assoc key ifAbsent: [#foo]) in: [:spec |
				spec notNil and: [spec noneSatisfy: [:default | assoc value = default]]]])
			sorted: [:a1 :a2 | a1 key <= a2 key])) associations
			
		inject: '{', String cr
		into: [:r :a |
			r := r, String tab, a key storeString, ' -> ', a value compactStoreString, '.', String cr]), '}'