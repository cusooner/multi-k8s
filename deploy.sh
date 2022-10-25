docker build -t culater/multi-client:latest -t culater/multi-client:$SHA -f ./client/Dockerfile ./client 
docker build -t culater/multi-server:latest -t culater/multi-server:$SHA -f ./server/Dockerfile ./server 
docker build -t culater/multi-worker:latest -t culater/multi-worker:$SHA -f ./worker/Dockerfile ./worker 

docker push culater/multi-client:latest 
docker push culater/multi-client:$SHA
docker push culater/multi-server:latest
docker push culater/multi-server:$SHA
docker push culater/multi-worker:latest
docker push culater/multi-worker:$SHA

#kubectl apply -f k8s/

#kubectl set image deployments/server-deployment server=culater/multi-server