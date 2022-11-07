FROM public.ecr.aws/lambda/python:3.9
RUN pip3 install poetry
COPY poetry.lock pyproject.toml README.md ${LAMBDA_TASK_ROOT}/
COPY app ${LAMBDA_TASK_ROOT}/app
RUN poetry install --no-interaction
CMD [ "app.handler.lambda_handler" ]
