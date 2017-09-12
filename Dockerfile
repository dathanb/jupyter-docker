FROM python:3.6

COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
WORKDIR /app

COPY * /app/

EXPOSE 9999
CMD ["jupyter", "notebook", "--allow-root"]
