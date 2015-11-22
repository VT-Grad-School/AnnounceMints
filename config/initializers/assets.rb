# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


Rails.application.config.assets.precompile += %w( bootstrap/dist/css/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( directives/nav/nav.html )
Rails.application.config.assets.precompile += %w( home.html )
Rails.application.config.assets.precompile += %w( new.html )
Rails.application.config.assets.precompile += %w( new-announcement.html )
Rails.application.config.assets.precompile += %w( new-call.html )
Rails.application.config.assets.precompile += %w( new-event.html )
Rails.application.config.assets.precompile += %w( new-job.html )
Rails.application.config.assets.precompile += %w( theme.min.css )