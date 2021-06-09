
apiVersion: apps/v1
kind: Deployment
metadata:
  name: moonbank
  labels:
    app: moonbank
spec:
  replicas: 1
  selector:
    matchLabels:
      app: moonbank
  template:
    metadata:
      labels:
        app: moonbank
    spec:
      containers:
      - name: moonbank
        image: gcr.io/GOOGLE_CLOUD_PROJECT/moonbank:COMMIT_SHA
        ports:
        - containerPort: 8080
---
kind: Service
apiVersion: v1
metadata:
  name: moonbank
spec:
  selector:
    app: moonbank
  ports:
  - protocol: TCP
    port: 80
    targetPort: 8080
  type: LoadBalancer
