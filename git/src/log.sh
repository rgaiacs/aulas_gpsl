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

# Lista todos os commits.
git log

# Lista apenas um numero limitado de commits.
git log -1                      # Apenas um commit.
git log -3                      # Apenas tres commits.

# Ignora um dado numero de commits.
git log --skip=1                 # Apenas um commit.
git log --skip=3                 # Apenas tres commits.

# Filtra commits de acordo com o usuario.
# git log --author=<pattern>
# git log -i --author=<pattern>  # Ignore case.

# Filtra commits de acordo com a mensagem.
# git log --grep=<pattern>
# git log -i --grep=<pattern>     # Ignore case.

# Mostra versao simplificada dos commits.
git log --oneline

# Deseja uma representacao grafica em texto dos commits.
git log --graph
# Pode ser combinada com --oneline
git log --graph --online
