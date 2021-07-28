cil1:
	./hex2raw < ctarget_l1/ctarget.l1.txt > ctarget_l1/cil1raw.txt
	./ctarget -q < ctarget_l1/cil1raw.txt
cil2:
	./hex2raw < ctarget_l2/ctarget.l2.txt > ctarget_l2/cil2raw.txt
	./ctarget -q < ctarget_l2/cil2raw.txt

cil2_tool:
	gcc -c ctarget_l2/ctargetl2.s -o ctarget_l2/ctargetl2.o
	objdump -d ctarget_l2/ctargetl2.o > ctarget_l2/ctargetl2.d

clean:
	rm ctarget_l2/*.o ctarget_l2/*.d