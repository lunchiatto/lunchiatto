FROM lunchiatto/base:0.4

RUN npm install -g jade

COPY Gemfile* ${APP_HOME}/
RUN bundle install

# copy code
ADD . $APP_HOME

# this is needed for precompilation to succeed
ENV SECRET_KEY_BASE=for_precompilation
ENV AIRBRAKE_PROJECT_KEY=DUMMYKEY
ENV AIRBRAKE_PROJECT_ID=12345

# precompile assets
RUN rake assets:precompile
