# make

fld=$1
n=$2
p=$3
g++ ./client-phase$p.cpp -lpthread -o ./client-phase$p
mkdir -p output
for ((i=1 ; i<=$n ; i++))
do
	timeout 60 ./client-phase$p ./$fld/client$i-config.txt ./$fld/files/client$i/ > ./output/op-c$i-p$p.txt &
done