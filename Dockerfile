# Use official nginx image
FROM public.ecr.aws/nginx/nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your build output (dist folder) to nginx html folder
COPY dist/ /usr/share/nginx/html/

# Copy custom nginx configuration
COPY dist/nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 3000
EXPOSE 3000

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

