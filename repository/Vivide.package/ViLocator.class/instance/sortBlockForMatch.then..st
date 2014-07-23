sorting
sortBlockForMatch: primaryMatch then: sortBlock
	"Sorts the results into two categories: one that matches and one that doesn't. Within those categories, sort after sortblock."

	^ [:o1 :o2 |
		((primaryMatch value: o1) and: [(primaryMatch value: o2) not])
			or: [((primaryMatch value: o1) == (primaryMatch value: o2))
				and: [sortBlock value: o1 value: o2]]].