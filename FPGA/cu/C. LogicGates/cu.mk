
do: $(PROJ).bin
	@
	
%.blif: %.v
	yosys -p 'synth_$(FAMILY) -blif $@' $<

%.asc: $(PINS) %.blif
	arachne-pnr -d $(subst hx,,$(subst lp,,$(TYPE))) -P $(PACKAGE) -o $@ -p $^

%.bin: %.asc
	icepack $< $@

%.rpt: %.asc
	icetime -d $(TYPE) -mtr $@ $<

load: $(PROJ).bin
	iceprog $<

sudo-load: $(PROJ).bin
	@echo 'Executing prog as root!!!'
	sudo iceprog $<

erase:
	rm -f $(PROJ).blif $(PROJ).asc $(PROJ).rpt $(PROJ).bin

.SECONDARY:
.PHONY: do load erase
