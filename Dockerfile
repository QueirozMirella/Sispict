FROM ruby:2.3.3
# ENV http_proxy "http://10.131.188.1:80" 
# ENV https_proxy "http://10.131.188.1:80"
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get install -y aptitude
RUN aptitude install -y graphviz
RUN mkdir /sispict
WORKDIR /sispict
ADD Gemfile /sispict/Gemfile
ADD Gemfile.lock /sispict/Gemfile.lock
RUN bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java
RUN bundle install
ADD . /sispict 
