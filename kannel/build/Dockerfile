# Use the official Ubuntu 12.04 base image
FROM product2/kannelmysqlssl:2.0


# Update the package list and install necessary packages
RUN sed -i 's/archive.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
RUN apt-get update 
RUN apt-get install -y telnet iputils-ping traceroute
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/*

# Set the default command to bash (optional)
CMD ["/bin/bash"]
