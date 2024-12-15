FROM odoo:14

# Set working directory
WORKDIR /opt/odoo

# Copy Odoo source code and custom modules (if any)
COPY . .

# Copy Odoo configuration file (make sure odoo.conf is in the same directory as Dockerfile)
COPY ./odoo.conf /etc/odoo/odoo.conf

# Set environment variables for Odoo
ENV ADDONS_PATH=/opt/odoo/addons,/mnt/extra-addons
ENV ODOO_CONF=/etc/odoo/odoo.conf

# Expose Odoo port
EXPOSE 8069

# Command to run Odoo
CMD ["./odoo-bin", "-c", "/etc/odoo/odoo.conf"]
