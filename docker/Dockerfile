FROM odoo:15.0
USER root

COPY ./requirements.txt /
RUN pip3 install -r requirements.txt

ARG HOST_UID
RUN usermod -u 1000 odoo \
        && mkdir /home/odoo \
        && usermod -d /home/odoo odoo \
        && mkdir -p /mnt/extra-addons \
        && chown -R odoo /mnt/extra-addons \
        && chown -R odoo /home/odoo \
        && chown -R odoo /var/lib/odoo

USER odoo

ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]

