FROM python

# Install nltk
RUN pip install nltk

# Download stopwords
RUN python -c "import nltk; nltk.download('stopwords')"


ADD . /match-source

WORKDIR /match-source


# docker build -t my_image .
# docker run -it my_image /bin/bash