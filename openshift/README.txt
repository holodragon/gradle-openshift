openshift-chinalife-eap64:1.0
vagrant scp /cygdrive/c/Users/rhlab/OCP_SRC/chinalife-eap64/Dockerfile default:/home/vagrant/chinalife-eap64/

docker history docker.io/holodragon/openshift-eap64-gradle:1.0
 
docker build -t docker.io/holodragon/openshift-eap64-gradle:1.0 .
docker push docker.io/holodragon/openshift-eap64-gradle:1.0
oc import-image openshift-chinalife-eap64:1.0