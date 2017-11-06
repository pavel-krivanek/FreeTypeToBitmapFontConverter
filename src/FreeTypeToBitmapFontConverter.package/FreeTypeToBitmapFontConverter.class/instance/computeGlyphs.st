instance creation
computeGlyphs

	glyphs := Form 
		extent: xTable last @ (fontHeight)
		depth: self depth.
	glyphs fillWhite.		

	0 to: 255 do: [ :i | 
		| glyphForm xStart |
		glyphForm := self glyphFor: (Character value: i).
		xStart := xTable at: i + 1.
		glyphForm 
			displayOn: glyphs
			at: xStart @ 0.].		
				
	^ glyphs