#!/usr/bin/env nextflow



/*
========================================================================================
    Workflow parameters are written as params.<parameter>
    and can be initialised using the `=` operator.
========================================================================================
*/

params.input = "data/yeast/reads/ref1_1.fq.gz"

/*
========================================================================================
    Input data is received through channels
========================================================================================
*/

input_ch = Channel.fromPath(params.input)

/*
========================================================================================
   Main Workflow
========================================================================================
*/

workflow {
    //  The script to execute is called by it's process name, and input is provided between brackets.

    NUM_LINES(input_ch)

    /*  Process output is accessed using the `out` channel.
        The channel operator view() is used to print process output to the terminal. */

    NUM_LINES.out.view()

}

/*
========================================================================================
    A Nextflow process block. Process names are written, by convention, in uppercase.
    This convention is used to enhance workflow readability.
========================================================================================
*/
process NUM_LINES {

    input:
    path read

    output:
    stdout

    script:
    """
    # Print file name
    printf '${read}\\t'

    # Unzip file and count number of lines
    gunzip -c ${read} | wc -l
    """
}
