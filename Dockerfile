# Use official Elixir image
FROM elixir:latest

# Create app dir and copy our project into it
RUN mkdir /app
COPY . /app
WORKDIR /app


# Install hex pkg manager
# --force to skip typing "Y" to confirm installation
RUN mix local.hex --force

# Compile
RUN mix do compile

CMD ["/app/startup.sh"]

