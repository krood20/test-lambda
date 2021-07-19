FROM public.ecr.aws/lambda/python:3.8
RUN yum -y update && \
    yum -y install gcc zip unzip mono-mcs git git-lfs && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["lambda_function.lambda_handler"]