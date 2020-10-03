FROM python:alpine3.12
LABEL author="Tim Robinson"
LABEL version="0.1"

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY data /usr/src/app/data/.
COPY get_pdf_info.py /usr/src/app/.

CMD [ "python", "./get_pdf_info.py" ]