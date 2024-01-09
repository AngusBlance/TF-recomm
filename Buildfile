git add *.py
git add Dockerfile
git add Buildfile
git commit -m "From Buildfile"
git push
docker rmi tfrecomm
docker build -t tfrecomm .
docker tag tfrecomm AngusBlance/tfrecomm
docker push AngusBlance/tfrecomm
docker rm runtfrecomm
docker run --name runtfrecomm -p 81:81 -i -t AngusBlance/tfrecomm bash
