# Use a lightweight base image
FROM python:3.11-alpine

# Set environment variables
ENV RADICALE_CONFIG=/etc/radicale/radicale.conf
ENV INITIAL_PASSWORD=k8sRadicale

# Install necessary packages and Radicale
RUN apk add --no-cache bash && \
    pip install --no-cache-dir radicale

# Create directories for Radicale data and configuration
RUN mkdir -p /etc/radicale /var/lib/radicale

# Copy the configuration file into the container
COPY ./config/radicale.conf /etc/radicale/radicale.conf

# Expose the default Radicale port
EXPOSE 5232

# Run Radicale with external configuration
CMD ["radicale", "--config", "/etc/radicale/radicale.conf"]