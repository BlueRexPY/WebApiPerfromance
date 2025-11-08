FROM ruby:3.3.0-alpine AS builder

RUN apk add --no-cache build-base postgresql-dev tzdata

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle config set --local deployment 'true' && \
    bundle config set --local without 'development test' && \
    bundle install --jobs 4

COPY . .

RUN bundle exec bootsnap precompile --gemfile app/ lib/

# Runtime stage
FROM ruby:3.3.0-alpine

RUN apk add --no-cache postgresql-client tzdata

WORKDIR /app

COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY --from=builder /app /app

ENV RAILS_ENV=production \
    RAILS_LOG_TO_STDOUT=false \
    RAILS_SERVE_STATIC_FILES=false \
    PORT=8000

EXPOSE 8000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
