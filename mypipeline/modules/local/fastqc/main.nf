// Defining the process
process Fastqc{
    //conda "${moduleDir}"/environment.yaml
    
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
