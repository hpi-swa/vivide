actions
selectAllScreenshots

	self screenshots childrenInDefaultGroup do: [:node |
		node checked: true].