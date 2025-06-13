# Use python 3.6
FROM python:3.6
LABEL maintainer="Max Kratz <github@maxkratz.com>"
ENV DEBIAN_FRONTEND=noninteractive

# Update various packages
RUN apt-get update -q && \
    apt-get upgrade -yq

# Install all requirements from file
COPY requirements.txt /
RUN pip install -r requirements.txt

CMD ["python3"]
