set fp [open "worst_10_setup.txt" w]

set paths [get_timing_paths -max_paths 10 -slack_lesser_than 0]

foreach_in_collection path $paths {

    set slack [get_attribute $path slack]

    set start [get_attribute_name \
        [get_attribute $path startpoint]]

    set end [get_attribute_name \
        [get_attribute $path endpoint]]

    puts $fp "Startpoint: $start"
    puts $fp "Endpoint : $end"
    puts $fp "Slack    : $slack"
    puts $fp "-------------------------"
}

close $fp
