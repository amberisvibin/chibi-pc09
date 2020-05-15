SamacSys ECAD Model
796887/230744/2.46/20/3/Integrated Circuit

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c115_h75"
		(holeDiam 0.75)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.15) (shapeHeight 1.15))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.15) (shapeHeight 1.15))
	)
	(padStyleDef "s115_h75"
		(holeDiam 0.75)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.15) (shapeHeight 1.15))
		(padShape (layerNumRef 16) (padShapeType Rect)  (shapeWidth 1.15) (shapeHeight 1.15))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "DIP762W55P254L2642H457Q20N" (originalName "DIP762W55P254L2642H457Q20N")
		(multiLayer
			(pad (padNum 1) (padStyleRef s115_h75) (pt -3.81, 11.43) (rotation 90))
			(pad (padNum 2) (padStyleRef c115_h75) (pt -3.81, 8.89) (rotation 90))
			(pad (padNum 3) (padStyleRef c115_h75) (pt -3.81, 6.35) (rotation 90))
			(pad (padNum 4) (padStyleRef c115_h75) (pt -3.81, 3.81) (rotation 90))
			(pad (padNum 5) (padStyleRef c115_h75) (pt -3.81, 1.27) (rotation 90))
			(pad (padNum 6) (padStyleRef c115_h75) (pt -3.81, -1.27) (rotation 90))
			(pad (padNum 7) (padStyleRef c115_h75) (pt -3.81, -3.81) (rotation 90))
			(pad (padNum 8) (padStyleRef c115_h75) (pt -3.81, -6.35) (rotation 90))
			(pad (padNum 9) (padStyleRef c115_h75) (pt -3.81, -8.89) (rotation 90))
			(pad (padNum 10) (padStyleRef c115_h75) (pt -3.81, -11.43) (rotation 90))
			(pad (padNum 11) (padStyleRef c115_h75) (pt 3.81, -11.43) (rotation 90))
			(pad (padNum 12) (padStyleRef c115_h75) (pt 3.81, -8.89) (rotation 90))
			(pad (padNum 13) (padStyleRef c115_h75) (pt 3.81, -6.35) (rotation 90))
			(pad (padNum 14) (padStyleRef c115_h75) (pt 3.81, -3.81) (rotation 90))
			(pad (padNum 15) (padStyleRef c115_h75) (pt 3.81, -1.27) (rotation 90))
			(pad (padNum 16) (padStyleRef c115_h75) (pt 3.81, 1.27) (rotation 90))
			(pad (padNum 17) (padStyleRef c115_h75) (pt 3.81, 3.81) (rotation 90))
			(pad (padNum 18) (padStyleRef c115_h75) (pt 3.81, 6.35) (rotation 90))
			(pad (padNum 19) (padStyleRef c115_h75) (pt 3.81, 8.89) (rotation 90))
			(pad (padNum 20) (padStyleRef c115_h75) (pt 3.81, 11.43) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.635 13.835) (pt 4.635 13.835) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 4.635 13.835) (pt 4.635 -13.835) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 4.635 -13.835) (pt -4.635 -13.835) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.635 -13.835) (pt -4.635 13.835) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.3 13.585) (pt 3.3 13.585) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 3.3 13.585) (pt 3.3 -13.585) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 3.3 -13.585) (pt -3.3 -13.585) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.3 -13.585) (pt -3.3 13.585) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.3 12.315) (pt -2.03 13.585) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -4.385 13.585) (pt 3.3 13.585) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.3 -13.585) (pt 3.3 -13.585) (width 0.2))
		)
	)
	(symbolDef "SN74LS273NE4" (originalName "SN74LS273NE4")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -325 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 5) (pt 0 mils -400 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -425 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 6) (pt 0 mils -500 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -525 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 7) (pt 0 mils -600 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -625 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 8) (pt 0 mils -700 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -725 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 9) (pt 0 mils -800 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -825 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 10) (pt 0 mils -900 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -925 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 11) (pt 1100 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 12) (pt 1100 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 13) (pt 1100 mils -200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -225 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 14) (pt 1100 mils -300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -325 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 15) (pt 1100 mils -400 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -425 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 16) (pt 1100 mils -500 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -525 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 17) (pt 1100 mils -600 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -625 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 18) (pt 1100 mils -700 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -725 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 19) (pt 1100 mils -800 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -825 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 20) (pt 1100 mils -900 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -925 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(line (pt 200 mils 100 mils) (pt 900 mils 100 mils) (width 6 mils))
		(line (pt 900 mils 100 mils) (pt 900 mils -1000 mils) (width 6 mils))
		(line (pt 900 mils -1000 mils) (pt 200 mils -1000 mils) (width 6 mils))
		(line (pt 200 mils -1000 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 950 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "SN74LS273NE4" (originalName "SN74LS273NE4") (compHeader (numPins 20) (numParts 1) (refDesPrefix IC)
		)
		(compPin "1" (pinName "__CLR") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "1Q") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "1D") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "4" (pinName "2D") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "5" (pinName "2Q") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "6" (pinName "3Q") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "7" (pinName "3D") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "8" (pinName "4D") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "9" (pinName "4Q") (partNum 1) (symPinNum 9) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "10" (pinName "GND") (partNum 1) (symPinNum 10) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "20" (pinName "VCC") (partNum 1) (symPinNum 11) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "19" (pinName "8Q") (partNum 1) (symPinNum 12) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "18" (pinName "8D") (partNum 1) (symPinNum 13) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "17" (pinName "7D") (partNum 1) (symPinNum 14) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "16" (pinName "7Q") (partNum 1) (symPinNum 15) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "15" (pinName "6Q") (partNum 1) (symPinNum 16) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "14" (pinName "6D") (partNum 1) (symPinNum 17) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "13" (pinName "5D") (partNum 1) (symPinNum 18) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "12" (pinName "5Q") (partNum 1) (symPinNum 19) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "11" (pinName "CLK") (partNum 1) (symPinNum 20) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "SN74LS273NE4"))
		(attachedPattern (patternNum 1) (patternName "DIP762W55P254L2642H457Q20N")
			(numPads 20)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
				(padNum 6) (compPinRef "6")
				(padNum 7) (compPinRef "7")
				(padNum 8) (compPinRef "8")
				(padNum 9) (compPinRef "9")
				(padNum 10) (compPinRef "10")
				(padNum 11) (compPinRef "11")
				(padNum 12) (compPinRef "12")
				(padNum 13) (compPinRef "13")
				(padNum 14) (compPinRef "14")
				(padNum 15) (compPinRef "15")
				(padNum 16) (compPinRef "16")
				(padNum 17) (compPinRef "17")
				(padNum 18) (compPinRef "18")
				(padNum 19) (compPinRef "19")
				(padNum 20) (compPinRef "20")
			)
		)
		(attr "Mouser2 Part Number" "595-SN74LS273NE4")
		(attr "Mouser2 Price/Stock" "https://www.mouser.com/Search/Refine.aspx?Keyword=595-SN74LS273NE4")
		(attr "Manufacturer_Name" "Texas Instruments")
		(attr "Manufacturer_Part_Number" "SN74LS273NE4")
		(attr "Description" "Flip Flops Octal D-Type Flip-Flop w/Clear")
		(attr "Datasheet Link" "http://www.ti.com/lit/ds/sdls090/sdls090.pdf")
		(attr "Height" "4.57 mm")
	)

)
