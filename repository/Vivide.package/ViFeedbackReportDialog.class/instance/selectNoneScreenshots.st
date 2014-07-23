actions
selectNoneScreenshots

	self screenshots childrenInDefaultGroup do: [:node |
		node checked: false].