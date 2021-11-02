#!/usr/bin/env bash
MATRICULA=
PASSWD=
DESTDIR=/var/www/matrufsc/capim/data/
./py/get_turmas.py "${MATRICULA}" "${PASSWD}" $1 &&
./py/parse_turmas.py ./db/$1*.xml $1.json &&
make DESTDIR="${DESTDIR}" SEMESTRE=$1 install
cp $PWD/$1* "${DESTDIR}" -v
