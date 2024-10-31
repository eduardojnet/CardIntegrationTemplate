# CardIntegration
        Este é o serviço CardIntegration, parte da arquitetura de microserviços.

        ## Pré-requisitos
        - Docker
        - Kubernetes
        - Maven

        ## Construção da Imagem Docker
        ```bash
        docker build -t your-docker-repo/cardintegration .
        ```

        ## Deploy no Kubernetes
        ```bash
        kubectl apply -f k8s/configmap.yaml
        kubectl apply -f k8s/deployment.yaml
        kubectl apply -f k8s/service.yaml
        ```