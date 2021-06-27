#!/bin/bash

core(){
  cat <<- EOF
    [1]Install Package(without apt-get update)
    [2]Install Package(with apt-get update)
    [3]Just Update
    [4] Search Package
EOF
  selects
}

selects(){
  echo -e '[?]Please select and type the number :'
  read nm
  
  if [[ $nm == '1' ]]; then
    echo -e '[?] Type name of package :'
    read -a ans
    sudo apt install ${ans[0]} ${ans[1]} ${ans[2]} ${ans[3]} ${ans[4]}
  elif [[ $nm == '2' ]]; then
    sudo apt-get update
    echo -e '[?] Type name of package :'
    read -a ans
    sudo apt install ${ans[0]} ${ans[1]} ${ans[2]} ${ans[3]} ${ans[4]}
  elif [[ $nm == '3' ]]; then
    sudo apt-get update
  elif [[ $nm == '4' ]]; then
    search
  else
    exit
  fi
}

search(){
  echo -e '[?] Type name of package :'
  read ans
  sudo apt search $ans
}

installs(){
  echo -e '[?] Type name of package :'
  read -a ans
  sudo apt install ${ans[0]} ${ans[1]} ${ans[2]} ${ans[3]} ${ans[4]} ${ans[5]} ${ans[6]} ${ans[7]} ${ans[8]} ${ans[9]} ${ans[10]} ${ans[11]} ${ans[12]} ${ans[13]} ${ans[14]}
}
core
