FROM public.ecr.aws/lambda/provided:latest

RUN yum install awscli -y

# Copy over runtime files
COPY src/bash_lambda/bootstrap ${LAMBDA_RUNTIME_DIR}/bootstrap

# Make runtime bootstrap executable
RUN chmod +x ${LAMBDA_RUNTIME_DIR}/bootstrap

# Copy over code
COPY src/bash_lambda/index.sh ${LAMBDA_TASK_ROOT}/index.sh

# Handler
CMD ["index.handler"]
