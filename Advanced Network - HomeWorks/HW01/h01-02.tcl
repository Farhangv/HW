proc swap {_a _b} { 
         upvar $_a a 
         upvar $_b b 
         set tmp $a 
         set a $b 
         set b $tmp 
} 

proc sortNumbersDesc {x y z} {
	if {$x < $z} {
	   swap z x 
	}
	if {$x < $y} {
	   swap y x
	}
	if {$y < $z} {
	   swap z y
	}
	puts "$x $y $z"
}

#sortNumbersDesc 30 50 10


puts "****Descending Sort****"
puts "Please enter first number: "
set num1 [gets stdin]
puts "Please enter second number: "
set num2 [gets stdin]
puts "Please enter third number: "
set num3 [gets stdin]
sortNumbersDesc $num1 $num2 $num3
