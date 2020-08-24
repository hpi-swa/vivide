as yet unclassified
animateGrowingBars

	| delay |
	delay :=  animationDelay // self columns size.
	self columns withIndexDo: [:column :index |
		| bar |
		bar := column submorphs second.
		self animateGrowingBar: bar after: index * delay]. 