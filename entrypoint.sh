#!/bin/sh -e

apt update
apt install -y graphviz default-jre
apt install -y curl

mkdir -p /opt/plantuml
cd /opt/plantuml
UML=http://sourceforge.net/projects/plantuml/files/plantuml.jar/download
curl -JLO ${UML}

cat <<EOF | tee /usr/local/bin/plantuml
#!/bin/sh
java -jar /opt/plantuml/plantuml.jar "\$@"
EOF
chmod a+x /usr/local/bin/plantuml