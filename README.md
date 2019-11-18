# FHA_screening
Code used in thesis chapter "Closed Bordetella pertussis genomes uncover changes in Filamentous Hemagglutinin gene" 

## Commands for tools mentioned in manuscript

### Assigning allele type for ACV genes (using custom-made bpertussis ACV genes mlst scheme)
**[mlst](https://github.com/tseemann/mlst)**  
`mlst --legacy --csv --scheme bpertussis input_genomes.fasta > mlst_results.csv `

**[tfa_prepper](https://github.com/nataliering/FHA_screening/blob/master/tfa_preparer)**                                       
`tfa_prepper BORD00XXXX gene_name`

