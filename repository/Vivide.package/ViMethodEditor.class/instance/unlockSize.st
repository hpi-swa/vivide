dropping/grabbing
unlockSize

	super unlockSize.
"	self resizeHandle target ifNil: [^ self].
"
	self artifact scrollingMode: #never.
	"self artifact scrollingMode: #limit."