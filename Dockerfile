# Use official lightweight Nginx image
FROM nginx:alpine
# Remove default nginx website files
RUN rm -rf /usr/share/nginx/html/*
# Copy HTML files
COPY about.html /usr/share/nginx/html/
COPY deals.html /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/
COPY reservation.html /usr/share/nginx/html/
# Copy folders
COPY assets/ /usr/share/nginx/html/assets/
COPY vendor/ /usr/share/nginx/html/vendor/
# Expose port 80
EXPOSE 80
# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
