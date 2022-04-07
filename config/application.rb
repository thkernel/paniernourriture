require_relative "boot"

require "rails/all"
require './lib/shared_utils/utils'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PanierNourriture
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")


    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**','*.{rb,yml}').to_s]

    config.i18n.default_locale = :fr
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)

    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    #config.assets.paths << Rails.root.join("vendor", "assets", "bracket")
  end
end
