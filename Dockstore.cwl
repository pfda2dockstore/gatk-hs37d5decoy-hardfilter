baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: gatk-hs37d5decoy-hardfilter
inputs:
  vcf_in:
    doc: VCF from GATK with SNPs and indels  mapped to GRCh37 with decoy
    inputBinding:
      position: 1
      prefix: --vcf_in
    type: File
label: GATK hard cut-off filtering with GRCh37 hs37d5 decoy
outputs:
  vcf_out:
    doc: 'VCF output file '
    outputBinding:
      glob: vcf_out/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/gatk-hs37d5decoy-hardfilter:7
s:author:
  class: s:Person
  s:name: Justin Zook
