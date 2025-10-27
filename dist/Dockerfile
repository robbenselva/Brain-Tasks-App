# Step 1: Use an official Nginx image to serve the build
FROM nginx:stable-alpine

# Step 2: Copy the production build from the dist folder
COPY dist/ /usr/share/nginx/html

# Step 3: Copy a custom Nginx config (optional, if you need routing)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Step 4: Expose port 80 for web traffic
EXPOSE 80

# Step 5: Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
