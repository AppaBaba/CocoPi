
do: $(PROJ).bin
	@

%.blif: %.v
	yosys -p 'synth_ice40 -blif $@' $<

%.asc: $(PINS) %.blif
	arachne-pnr -d $(subst hx,,$(subst lp,,$(DEVICE))) -P $(PACKAGE) -o $@ -p $^

%.bin: %.asc
	icepack $< $@

%.rpt: %.asc
	icetime -d $(DEVICE) -mtr $@ $<

load: $(PROJ).bin
	iceprog $<

sudo-prog: $(PROJ).bin
	@echo 'Executing prog as root!!!'
	sudo iceprog $<

erase:
	rm -f $(PROJ).blif $(PROJ).asc $(PROJ).rpt $(PROJ).bin

.SECONDARY:
.PHONY: do load erase
