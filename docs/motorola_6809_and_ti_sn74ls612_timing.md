# Motorola 6809 and TI SN74LS612 Timing

## Motorola 6809 Timing
Dual phase clock, E and Q. Staggered by half a clock. 
1, 1.5, or 2 mHz. Nanosecond timing will be listed for all 3 speeds.

* On Q rise, address and R/-W output is valid.
* On E rise, data output is valid.
* Time between Q rise and E rise is (approx) minimum 200/130/80ns and max 250/166/125ns.
	* Time between address and R/-W output to data output.
* On E fall, data input is read. Address and R/-W output become invalid.
	* Data input must be valid for minimum 80/60/40ns before E fall.
	* Output data on Q fall to ensure data input is valid.

## TI SN74LS612 Timing
Async

### Write mode:

* -Strobe occurs to perform write.
* -Strobe pulse must be at least 75ns.
* Data must be valid 75ns before -strobe fall.
* -CS, R/-W, RS must be low at least 20ns before -strobe fall.
* -CS, R/-W, RS, Data must be valid at least 20ns after -strobe rise.

## Interface

### 6809 Write to SN74LS612




## Sources

* Motorola MC6809 Datasheet, undated
* Motorola MC6809E Datasheet, 1984
* TI SN54LS610, SN54LS612, SN74LS610 THRU SN74LS613 Datasheet, 1981-1988
