include { Fastqc } from './modules/local/fastqc/main.nf'
include { multiqc } from './modules/local/multiqc/main.nf'


workflow{
   input_ch=Channel.fromPath(params.input) 
   
   Fastqc(input_ch)
   Fastqc.out.view()
   multiqc(Fastqc.out.collect())
}
