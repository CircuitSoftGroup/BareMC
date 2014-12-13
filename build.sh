cd tools
wget https://ci.destroystokyo.com/job/PaperSpigot-BuildTools/lastSuccessfulBuild/artifact/target/PaperTools.jar -N
java -jar PaperTools.jar
cd ..
cp tools/PaperSpigot/PaperSpigot-Server/target/paperspigot-*.jar ./spigot.jar -f
cd plugins
wget -Ni plugins.txt