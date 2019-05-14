FROM nextcloud:apache
RUN apt-get update \
    && apt-get install -y tesseract-ocr tesseract-ocr-all supervisor imagick libmagickcore-6.q16-3-extra \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /var/log/supervisord /var/run/supervisord

COPY supervisord.conf /etc/supervisor/supervisord.conf

ENV NEXTCLOUD_UPDATE=1

CMD ["/usr/bin/supervisord"]