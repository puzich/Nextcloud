FROM nextcloud:apache
RUN apt-get update \
    && apt-get install -y tesseract-ocr tesseract-ocr-all