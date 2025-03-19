#!/usr/bin/env nextflow

/*
Creating a nextflow pipeline to perform QC and assembly
*/

params.input="/workspaces/pre-hackathon_training/data/SRR*"

input_ch=Channel.fromPath(params.input)

// Defining the process
process Fastqc{

    container "${workflow.containerEngine == 'singularity' ?
        "docker://staphb/fastqc:latest" :
        "staphb/fastqc:latest"}"
    
    publishDir 'results/fastqc', mode:'copy'

    input:
    path read

    output:
    path "*"
    
    script:
    """
    fastqc ${read} 

    """

}
//Defining the multiqc process
process multiqc{
    publishDir 'results/multiqc', mode:'copy'
    
    container "${workflow.containerEngine == 'singularity' ?
        "docker://multiqc/multiqc:dev" :
        "multiqc/multiqc:dev"}"
   
    input:
    path fastqc_out
    
    output:
    path "*"

    script:
    """
    multiqc ${fastqc_out}
    """

}
workflow{
    Fastqc(input_ch)
    Fastqc.out.view()
    multiqc(Fastqc.out.collect())
}