define(`QREG', `ifelse(
	$1, d0, q0,
	$1, d2, q1,
	$1, d4, q2,
	$1, d6, q3,
	$1, d8, q4,
	$1, d10, q5,
	$1, d12, q6,
	$1, d14, q7,
	$1, d16, q8,
	$1, d18, q9,
	$1, d20, q10,
	$1, d22, q11,
	$1, d24, q12,
	$1, d26, q13,
	$1, d28, q14,
	$1, d30, q15,
	`NO REGISTER')')dnl

define(`D0REG', `ifelse(
	$1, q0, d0,
	$1, q1, d2,
	$1, q2, d4,
	$1, q3, d6,
	$1, q4, d8,
	$1, q5, d10,
	$1, q6, d12,
	$1, q7, d14,
	$1, q8, d16,
	$1, q9, d18,
	$1, q10, d20,
	$1, q11, d22,
	$1, q12, d24,
	$1, q13, d26,
	$1, q14, d28,
	$1, q15, d30,
	`NO REGISTER')')dnl

define(`D1REG', `ifelse(
	$1, q0, d1,
	$1, q1, d3,
	$1, q2, d5,
	$1, q3, d7,
	$1, q4, d9,
	$1, q5, d11,
	$1, q6, d13,
	$1, q7, d15,
	$1, q8, d17,
	$1, q9, d19,
	$1, q10, d21,
	$1, q11, d23,
	$1, q12, d25,
	$1, q13, d27,
	$1, q14, d29,
	$1, q15, d31,
	`NO REGISTER')')dnl
