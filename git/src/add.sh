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

# Utiliza gitignore.sh.
rm -rf tmp
./gitignore.sh > /dev/null
cd tmp

# Adiciona arquivos.
git add *.txt

# Forca adicao de arquivo.
git add -f *.md

git commit -m 'Adicionado arquivos.'

printf "ameixa\nmamao\n" >> frutas.txt
printf "* preto\n* branco\n" >> cores.md

# Adiciona arquivos alterados.
git add -u
git commit -m 'Mudancas nos arquivos.'

printf "leopardo\npantera\n" >> felinos.txt
printf "beta\nplati\nespada\ncarpa\n" > peixes.txt
printf "papagaio\npombo\ncanario\nperiquito\n" >aves.txt
printf "* debian\n* ubuntu\n* fedora \n* arch" > distros.md

# Adiciona arquivos novos e alterados.
git add -A

# Note que arquivos a serem ignorados nao sao adicionados.
git status

git add -f *.md
git commit -m 'Mais arquivos.'
