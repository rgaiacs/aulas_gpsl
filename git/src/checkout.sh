#!/bin/bash
# Copyright (C) 2012  Raniere Silva
#
# This file is part of 'Aprendendo git com bash scripts'.
#
# 'Aprendendo git com bash scripts' is free software: you can
# redistribute it and/or modify it under the terms of the GNU General
# Public License as published by the Free Software Foundation, either
# version 3 of the License, or (at your option) any later version.
#
# 'Aprendendo git com bash scripts' is distributed in the hope that it
# will be useful, but WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See
# the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Utiliza init.sh.
rm -rf tmp
./mv_rm.sh > /dev/null
cd tmp

# Retorna a versao pai.
cat texto.txt
commit_hash=(git log -1 | grep -m 1 commit | sed 's/commit //')
git checkout $commit_hash
cat texto.txt

# Retorna para a ultima versao salva.
git checkout master
cat texto.txt

# Retorna para terceira versao anterior.
commit_hash=(git log | grep commit | sed -n '3 s/commit //p')
git checkout $commit_hash
cat texto.txt
git checkout master

# Retorna a versao pai.
cat texto.txt
# <rev>^, e.g. HEAD^, v1.5.1^0
#     A suffix ^ to a revision parameter means
#     the first parent of that commit object.
#     ^<n> means the <n>th parent (i.e.  <rev>^
#     is equivalent to <rev>^1). As a special
#     rule, <rev>^0 means the commit itself and
#     is used when <rev> is the object name of a
#     tag object that refers to a commit object.
git checkout HEAD^
cat texto.txt
git checkout master

# Retorna a versao avo.
cat texto.txt
# <rev>~<n>, e.g. master~3
#     A suffix ~<n> to a revision parameter means
#     the commit object that is the <n>th
#     generation ancestor of the named commit
#     object, following only the first parents.
#     I.e.  <rev>~3 is equivalent to <rev>^^^
#     which is equivalent to <rev>^1^1^1. See
#     below for an illustration of the usage of
#     this form.
git checkout HEAD~2
cat texto.txt
