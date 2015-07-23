#!/bin/sh

mkdir milc
cd milc

wget http://www.physics.utah.edu/~detar/milc/MILC_SC15.tgz
tar zxvf MILC_SC15.tgz
cd MILC_SC15/

#sudo apt-get install libmpich-dev
cd ks_imp_rhmc/
make su3_rhmd_hisq

cp su3_rhmd_hisq ./test/
cd test/

./su3_rhmd_hisq su3_rhmd_hisq.2.sample-in
