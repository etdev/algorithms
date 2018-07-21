package main

func getSum(a int, b int) int {
	sum, carry := a, b

	// sum part = sum XOR carry
	// carry part = (sum AND carry) shifted left by 1 bit
	for {
		sum, carry = sum^carry, (sum&carry)<<1
		if carry == 0 {
			return sum
		}
	}
}
