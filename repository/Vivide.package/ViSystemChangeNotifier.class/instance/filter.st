as yet unclassified
filter

	^ [:object :event | (((event item == object
			or: [event itemClass == object])
			or: [event itemMethod == object])
			or: [event itemCategory = object])
			or: [event itemSelector = object]]