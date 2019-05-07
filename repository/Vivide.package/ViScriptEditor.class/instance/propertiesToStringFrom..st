support - properties
propertiesToStringFrom: associations

	^ (((associations
			select: [:assoc | (self propertiesToIgnore at: assoc key ifAbsent: [#foo]) notNil])
			sorted: [:a1 :a2 | a1 key <= a2 key])
		inject: '{', String cr
		into: [:r :a |
			r := r, String tab, a key storeString, ' -> ', a value compactStoreString, '.', String cr]), '}'