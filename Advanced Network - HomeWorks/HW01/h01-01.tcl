proc isPrime {x} {
set prime 1
set i 2

while {$i<$x} {
  if { [expr $x%$i] == 0 } {set prime 0
       break
    }
  set i i+1
}

if { $prime==1 } { 
puts "$x Is a prime number"  } else {
puts "$x Is not a prime number " }

}
puts "****Prime Detector****"
puts "Please enter a number: "
set input [gets stdin]
isPrime $input
