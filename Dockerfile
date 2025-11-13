# Use the official n8n image from Docker Hub
FROM n8nio/n8n:latest

# Set environment variables for Railway
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://Hrikmen.up.railway.app/

# Expose the port that n8n will use
EXPOSE 5678

# Start n8n when the app runs
CMD ["n8n", "start"]
