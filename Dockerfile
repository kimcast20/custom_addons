FROM odoo:20.0

USER root

COPY ./ventas_unicah /mnt/extra-addons/ventas_unicah

RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo