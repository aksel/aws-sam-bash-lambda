FROM public.ecr.aws/lambda/python:latest

# Install dependencies
COPY src/python_lambda/requirements.txt .
RUN pip install -r requirements.txt

# Copy over code
COPY src/python_lambda/index.py ${LAMBDA_TASK_ROOT}/index.py

# Handler
CMD ["index.handler"]
