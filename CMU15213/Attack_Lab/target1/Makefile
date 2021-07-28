cil1:
	./hex2raw < ctarget_l1/ctarget.l1.txt > ctarget_l1/cil1raw.txt
	./ctarget -q < ctarget_l1/cil1raw.txt

cil2:
	./hex2raw < ctarget_l2/ctarget.l2.txt > ctarget_l2/cil2raw.txt
	./ctarget -q < ctarget_l2/cil2raw.txt

cil3:
	./hex2raw < ctarget_l3/ctarget.l3.txt > ctarget_l3/cil3raw.txt
	./ctarget -q < ctarget_l3/cil3raw.txt

ril2:
	./hex2raw < rtarget_l2/rtarget.l2.txt > rtarget_l2/ril2raw.txt
	./rtarget -q < rtarget_l2/ril2raw.txt

ril3:
	./hex2raw < rtarget_l3/rtarget.l3.txt > rtarget_l3/ril3raw.txt
	./rtarget -q < rtarget_l3/ril3raw.txt

cil2_tool:
	gcc -c ctarget_l2/ctargetl2.s -o ctarget_l2/ctargetl2.o
	objdump -d ctarget_l2/ctargetl2.o > ctarget_l2/ctargetl2.d

cil3_tool:
	gcc -c ctarget_l3/ctargetl3.s -o ctarget_l3/ctargetl3.o
	objdump -d ctarget_l3/ctargetl3.o > ctarget_l3/ctargetl3.d

clean:
	rm ctarget_l2/*.o ctarget_l2/*.d