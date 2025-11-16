
apt-get update
apt-get install -y openjdk-11-jre


apt-get update
apt-get install -y docker.io


sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install -y jenkins


echo "This is the Java package - "
java --version

echo "This is Jenkins package - "
jenkins --version

echo "This is Docker package - "
docker --version
