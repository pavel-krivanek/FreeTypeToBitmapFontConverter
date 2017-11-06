instance creation
computeXTable
	
	| xStart w |

	xTable := Array new: 258.
	xStart := 0.
	maxWidth := 0.

	0 to: 255
		do: 
			[ :i | 
			xTable 
				at: i + 1
				put: xStart.
			w := (font widthOf: (Character value: i)) ceiling.
			w > maxWidth ifTrue: [ maxWidth := w ].
			xStart := xStart + w ].
		
	xTable 
			at: 256
			put: xStart.
		xTable 
			at: 257
			put: xStart.
		xTable 
			at: 258
			put: xStart.	