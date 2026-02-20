FROM ruby:3.3.0-alpine AS builder

RUN apk add --no-cache build-base postgresql-dev tzdata

WORKDIR /app

COPY Gemfile ./
RUN bundle config set force_ruby_platform true && \
    bundle install --jobs 4

COPY . .

FROM ruby:3.3.0-alpine

RUN apk add --no-cache postgresql-client tzdata

WORKDIR /app

COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY --from=builder /app /app

ENV RACK_ENV=production \
    PORT=8000

EXPOSE 8000

CMD ["bundle", "exec", "puma", "-C", "puma.rb"]
