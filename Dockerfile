FROM nextcloud:apache
RUN apt-get update \
    && apt-get install -y tesseract-ocr tesseract-ocr-all supervisor imagemagick-6.q16 libmagickcore-6.q16-*-extra \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /var/log/supervisord /var/run/supervisord

COPY supervisord.conf /etc/supervisor/supervisord.conf

ENV NEXTCLOUD_UPDATE=1

CMD ["/usr/bin/supervisord"]