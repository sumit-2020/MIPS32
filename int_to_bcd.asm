 # GROUP ID- 88 (15116069,15117068) - VEMULA SAI SRI VATHSA ,SUMIT KUMAR YADAV
 # DATE : 3RD NOVEMBER 2016
 # 62.asm - assembly code
 # t0 is used for storing the main number initially and the number divided by 10 afterwards
 # t1 is used for storing the remainder in all cases
 # t2 is used for storing the value 10
 # modulo funtion is used for calculating number%10 and storing the value in $t1
 # "mainwhile" is the funtion used to redirect the program to mainexit when the number(or the number divided by 10) is equal to 0
 # "printbcd" is the function that is invoced after calculating modulo to print the relevant BCD code
 # "mainexit" is to exit the program  
 
 # NOTE:The BCD is printed in the reverse order of digits 
  
  .text
 main:
 
 # storing value 10 in $t2	 	 
  li $t2,10
  
  #prompt for entering input
  li $v0,4
  la $a0,prompt
  syscall
  #prompt printed

  #taking integer input
  
  li $v0,5 	#the integer is stored in $v0
  syscall
  
  #input taken
  
  #storing the decimal integer in $t0
  move $t0,$v0	
  
 	
 modulo:
 	div $t0,$t2
 	mfhi $t1
 	j printbcd

 mainwhile:
 	
 		
 	beq $t0,0,mainexit
 	j modulo
 	
 	printbcd:
 		bne $t1,0,else1
 		la $a0,BCD0
 		li $v0,4
 		syscall
 		
 		div $t0,$t2
 		mflo $t0
 		j mainwhile
 	
 	else1:
 		bne $t1,1,else2
 		la $a0,BCD1
 		li $v0,4
 		syscall
 		
 		div $t0,$t2
 		mflo $t0
 		j mainwhile
 	
 	else2:	
 		bne $t1,2,else3
 		la $a0,BCD2
 		li $v0,4
 		syscall
 		
 		div $t0,$t2
 		mflo $t0
 		j mainwhile
 	
 	else3:	
 		bne $t1,3,else4
 		la $a0,BCD3
 		li $v0,4
 		syscall
 		
 		div $t0,$t2
 		mflo $t0
 		j mainwhile
 			
 	else4:		
 		bne $t1,4,else5
 		la $a0,BCD4
 		li $v0,4
 		syscall
 		
 		div $t0,$t2
 		mflo $t0
 		j mainwhile
 	
 	else5:
 		bne $t1,5,else6
 		la $a0,BCD5
 		li $v0,4
 		syscall
 		
 		div $t0,$t2
 		mflo $t0
 		j mainwhile
 	
 	else6:
 		bne $t1,6,else7
 		la $a0,BCD6
 		li $v0,4
 		syscall
 		
 		div $t0,$t2
 		mflo $t0
 		j mainwhile
 	
 	else7:
 		bne $t1,7,else8
 		la $a0,BCD7
 		li $v0,4
 		syscall
 		
 		div $t0,$t2
 		mflo $t0
 		j mainwhile
 	
 	else8:
 		bne $t1,8,else9
 		la $a0,BCD8
 		li $v0,4
 		syscall
 		
 		div $t0,$t2
 		mflo $t0
 		j mainwhile
 	
 	 else9:
 	 	la $a0,BCD9
 		li $v0,4
 		syscall
 		
 		div $t0,$t2
 		mflo $t0
 		j mainwhile
 	 
mainexit:
	
	li $v0,10
	syscall

 	
.data
 
 prompt: .asciiz "Enter a decimal number : " 	
 
 BCD0: .asciiz "0000"
 BCD1: .asciiz "0001"
 BCD2: .asciiz "0010"
 BCD3: .asciiz "0011"
 BCD4: .asciiz "0100"
 BCD5: .asciiz "0101"
 BCD6: .asciiz "0110"
 BCD7: .asciiz "0111"
 BCD8: .asciiz "1000"
 BCD9: .asciiz "1001"
 

  
      