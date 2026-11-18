FROM odoo:20.0

USER root

COPY ./ventas_unicah /mnt/extra-addons/ventas_unicah
COPY ./start.sh /usr/local/bin/start.sh

RUN chown -R odoo:odoo /mnt/extra-addons \
    && chmod +x /usr/local/bin/start.sh

USER odoo

EXPOSE 8069

CMD ["/usr/local/bin/start.sh"]
