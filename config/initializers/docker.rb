require 'docker'

if ENV['DOCKER_URL'].present? && !Rails.env.test? && !ENV['PRECOMPILE']
  Docker.url = ENV['DOCKER_URL']

  # Confirm the Docker daemon is a recent enough version
  Docker.validate_version!
end
