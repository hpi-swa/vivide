adding pages
addOutputPageWithoutAnimation: query

	self ui stack animated in: [:oldAnimated |
		self ui stack animated: false.
		self addOutputPage: query.
		self ui stack animated: oldAnimated].