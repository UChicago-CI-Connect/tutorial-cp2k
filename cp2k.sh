#!/bin/bash
  source /cvmfs/oasis.opensciencegrid.org/osg/modules/lmod/5.6.2/init/bash
  module load cp2k
  cp2k.x $1 > cs_cell_opt_direct_lbfgs.out
  mkdir -p OutPutDir
  cp * OutPutDir/.
  tar cvzf OutPutDir.tar.gz OutPutDir
