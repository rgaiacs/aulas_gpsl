#!/bin/bash
# Copyright (C) 2012  Raniere Silva
#
# This file is part of 'Aprendendo git com bash scripts'.
#
# 'Aprendendo git com bash scripts' is free software: you can
# redistribute it and/or modify it under the terms of the GNU
# General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option)
# any later version.
#
# 'Aprendendo git com bash scripts' is distributed in the hope
# that it will be useful, but WITHOUT ANY WARRANTY; without even
# the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
# PURPOSE.  See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Cria uma pasta para uso e migra para ela.
mkdir temp
cd temp

# Inicializa o versionamento.
git init

# Mostra o estado do projeto.
git status

# Cria um arquivo, marca-o para versionamento e salva uma versao.
echo 'Versao 1.0' > texto.txt
git status  # Veja a diferenca.
git add texto.txt
git status  # Veja a diferenca.
git commit -m 'Versao 1.0'
git status  # Veja a diferenca.

# Mostra o historico de versoes salvas.
git log

# Altera texto.txt, marca-o para versionamento e salva uma versao.
echo 'Versao 2.0' >> texto.txt
git status  # Veja a diferenca.
git add texto.txt
git status  # Veja a diferenca.
git commit -m 'Versao 2.0'
git status  # Veja a diferenca.
git log  # Veja a diferenca.
