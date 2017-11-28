package require Tcl 8.5
package require struct::list

#bubble sort algorithm
proc bsort {A} {
    #list length
    set length [llength $A]
    #indicates if numbers swapped
    set isswapped true
    while {$isswapped} {
        set isswapped false
        for {set i 0} {$i < $length - 1} {incr i} {
            set j [expr {$i + 1}]
            if {[lindex $A $i] > [lindex $A $j]} {
                struct::list swap A $i $j
                set isswapped true
            }
        }
        incr len -1
    }
    return $A
}

puts "****Bubble Sort****"
#puts "How many numbers do you want to sort? "
puts "This program sorts these numbers: {8 6 4 2 1 3 5 7 9}"
#set count [gets stdin]
#set numbers(0) 0
#set index 0
#while { $index < $count } {
#   set numbers($index) [gets stdin]
#   incr index 
#}
#upvar $numbers args
#puts [bsort $numbers]
puts [bsort {8 6 4 2 1 3 5 7 9}]
