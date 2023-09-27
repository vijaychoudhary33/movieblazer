    # config/initializers/pusher.rb
    require 'pusher'
    
    Pusher.app_id = '1675833'
    Pusher.key = 'e011588101e7d34afb63'
    Pusher.secret = '43bfa68a9c2a15de5f25'
    Pusher.cluster = 'ap2'
    Pusher.logger = Rails.logger
    Pusher.encrypted = true
