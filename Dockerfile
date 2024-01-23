# Use an official Node runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Install create-react-app globally
RUN npm install -g create-react-app


# Copy the existing React app to the container
COPY my-react-app /app/kaur_ravleen_site

# Set the working directory to the React app
WORKDIR /app/kaur_ravleen_site


# Add the following line to modify the index.html file
RUN echo '<h1>Codin 1</h1>' > public/index.html

# Expose the port that the app will run on
EXPOSE 7775

# Start the React app
CMD ["npm", "start"]
