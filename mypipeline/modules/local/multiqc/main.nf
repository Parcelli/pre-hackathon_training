//Defining the multiqc process
process multiqc{
    publishDir 'results/multiqc', mode:'copy'
   
    //conda "${moduleDir}"/environment.yaml 
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
