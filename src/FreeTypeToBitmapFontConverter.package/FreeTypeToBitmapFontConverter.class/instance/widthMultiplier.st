instance creation
widthMultiplier

	^ (font emphasis > 1)
		ifTrue: [ 1.15 ]
		ifFalse: [ 1.0 ].