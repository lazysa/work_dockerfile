# Nexus3 build script
cd /srv/scripts/dockerfile/nexus && docker build -t nexus/nexus_init-1.0 .

# Old run command 
#docker run -u root -dit --name nexus --hostname nexus --restart always -p 40022:22 -p 8081:8081 --name nexus -v /srv/nexus-data:/nexus-data -e INSTALL4J_ADD_VM_PARAMS="-Xms2g -Xmx2g -XX:MaxDirectMemorySize=3g  -Djava.util.prefs.userRoot=/nexus-data/javaprefs" sonatype/nexus3:3.7.1

