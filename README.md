# FHA_screening
Code used in our paper Bordetella pertussis genomes closed using long reads reveal changes in Filamentous Hemagglutinin gene 

## Commands for tools mentioned in manuscript

### Assigning allele type for ACV genes (using custom-made bpertussis ACV genes mlst scheme)
**[mlst](https://github.com/tseemann/mlst)**  
`mlst --legacy --csv --scheme bpertussis input_genomes.fasta > mlst_results.csv `

**[line_break_remover](https://github.com/nataliering/FHA_screening/blob/master/line_break_remover)**
`line_break_remover alleles_from_pubmlst.fas`

