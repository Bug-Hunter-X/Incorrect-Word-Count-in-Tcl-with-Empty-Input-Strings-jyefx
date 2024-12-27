proc count_words {text} {
    if {[string length $text] == 0} {
        return 0
    }
    set words [regexp -all -inline {\S+} $text]
    return [llength $words]
}

puts [count_words {This is a test string.}]
puts [count_words {}] 