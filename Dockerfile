# Starting from a minimalist image
FROM ruby:2.7
# Reference for help contact me
LABEL maintainer="instructors@adadev.org"

# Create a directory for the app
RUN mkdir /app

# Set the working directory for RUN, ADD and COPY
WORKDIR /app

# Add entire student fork (overwrites previously added files)
ARG SUBMISSION_SUBFOLDER
ADD $SUBMISSION_SUBFOLDER /app


COPY ./Gemfile .
RUN gem install bundler
RUN gem uninstall json -v 2.3.0
RUN bundle install
RUN echo "SLACK_TOKEN=BOGUS" >> /app/.env  

# Overwrite the script
ADD test.sh /app
# ADD test /app  # uncomment to use instructor tests instead

RUN chmod +x test.sh
