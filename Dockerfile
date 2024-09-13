# Use a lightweight base image
FROM python:3.11-alpine

# Set environment variables
ENV RADICALE_CONFIG=/etc/radicale/config
ENV INITIAL_PASSWORD=k8sRadicale

# Install Radicale
RUN pip install radicale

# Create directories for Radicale data and configuration
RUN mkdir -p /etc/radicale /var/lib/radicale

# Copy configuration files into the container
COPY config /etc/radicale/config

# Expose Radicale default port
EXPOSE 5232

# Run Radicale with external configuration
CMD radicale --config $RADICALE_CONFIG
