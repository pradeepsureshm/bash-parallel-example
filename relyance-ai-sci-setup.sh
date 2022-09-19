sudo yum update -y
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-402.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-cli-402.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh --quiet
export PATH=$PATH:~/google-cloud-sdk/bin

sudo yum install docker -y
sudo usermod -aG docker $USER

which gcloud
gcloud auth configure-docker us-west1-docker.pkg.dev
