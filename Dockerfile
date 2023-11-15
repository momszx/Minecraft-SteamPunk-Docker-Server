FROM eclipse-temurin:17-jre-focal
RUN apt-get update && apt-get install -y wget unzip
WORKDIR /minecraft
RUN wget https://www.curseforge.com/api/v1/mods/643605/files/4850601/download -O modpack.zip
RUN unzip modpack.zip -d .
RUN chmod +x start.sh
EXPOSE 25565
# RUN sed -i 's/JAVA_ARGS=""/JAVA_ARGS="-Xms4G -Xmx8G"/' variables.txt
CMD ["./start.sh"]

