FROM nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy everything (HTML + assets folder)
COPY . /usr/share/nginx/html/

# Expose port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
