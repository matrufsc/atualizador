#!/usr/bin/env bash
DESTDIR=/var/www/matrufsc/capim/data/
SEMESTRE=$1
./py/get_turmas.py ${SEMESTRE} &&
./py/parse_turmas.py ./db/${SEMESTRE}*.xml ${SEMESTRE}.json &&
make DESTDIR="${DESTDIR}" SEMESTRE=${SEMESTRE} install
cp $PWD/${SEMESTRE}* "${DESTDIR}" -v
