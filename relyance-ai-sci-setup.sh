sudo yum update -y
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-402.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-cli-402.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh --quiet
export PATH=$PATH:$(pwd)/google-cloud-sdk/bin

sudo yum install docker -y
sudo usermod -aG docker $USER

which gcloud
#gcloud auth configure-docker us-west1-docker.pkg.dev --quiet

gcloud auth configure-docker us-docker.pkg.dev --quiet

#docker pull us-west1-docker.pkg.dev/relyance-ext/pentest1/sci:planetscale

docker pull us-docker.pkg.dev/relyance-ext/pentest1/sci:latest

#git clone https://github.com/GoogleCloudPlatform/microservices-demo.git

unset CLOUDSDK_CORE_PROJECT
unset CLOUDSDK_AUTH_CREDENTIAL_FILE_OVERRIDE

echo "Hello" $CLOUDSDK_CORE_PROJECT

docker run --rm -v `pwd`:/repo us-docker.pkg.dev/relyance-ext/pentest1/sci:latest
