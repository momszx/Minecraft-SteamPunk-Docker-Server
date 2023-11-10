FROM openjdk:alpine
RUN apk --update add wget
WORKDIR /minecraft
RUN wget https://www.curseforge.com/api/v1/mods/643605/files/4850601/download -O modpack.zip
RUN unzip modpack.zip -d .
RUN echo eula=true > eula.txt
EXPOSE 25565
CMD ["java", "-Xms4G", "-Xmx16G", "-jar", "server.jar"]
