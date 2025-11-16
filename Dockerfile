# Step 1: Use the official Apache HTTP Server image
FROM httpd:2.4

# Step 2: Set working directory
WORKDIR /usr/local/apache2/htdocs/

# Step 3: Copy website files into Apache document root
COPY . /usr/local/apache2/htdocs/

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Run Apache in the foreground
CMD ["httpd-foreground"]
