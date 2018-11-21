# Node image
FROM node:latest
# Create code directory
RUN mkdir /code
RUN mkdir /project
ADD build.sh /root/build.sh
RUN chmod +x /root/build.sh
# Set working directory
WORKDIR /project
# Install Truffle & SolC
RUN npm install -g truffle

#ENTRYPOINT /root/build.sh
