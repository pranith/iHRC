# RUN: not llvm-mc -triple s390x-linux-gnu < %s 2> %t
# RUN: FileCheck < %t %s

#CHECK: error: invalid operand
#CHECK: slgfi	%r0, -1
#CHECK: error: invalid operand
#CHECK: slgfi	%r0, (1 << 32)

	slgfi	%r0, -1
	slgfi	%r0, (1 << 32)
