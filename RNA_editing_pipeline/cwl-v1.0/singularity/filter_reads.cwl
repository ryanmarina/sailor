#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand: [singularity, run, /projects/ps-yeolab/singularity/rnae-ubuntu.img, filter_reads.py]
inputs:
  output_bam:
    type: string
    default: intermediateFile.filtered.bam
    inputBinding:
      position: 2
      prefix: -o
  junction_overhang:
    type: int
    default: 10
    inputBinding:
      position: 3
      prefix: -j
  edge_mutation:
    type: int
    default: 0
    inputBinding:
      position: 4
      prefix: -e
  input_bam:
    type: File
    inputBinding:
      position: 1
      prefix: -i
  non_ag:
    type: int
    default: 1
    inputBinding:
      position: 5
      prefix: -ag
outputs:
  output:
    type: File
    outputBinding:
      glob: '*.filtered.bam'

