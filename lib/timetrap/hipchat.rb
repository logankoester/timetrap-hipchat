require 'hipchat'

module Timetrap
  class Hipchat
    VERSION = '1.0.0'

    include Timetrap::Helpers

    def initialize(api_token, room, user)
      @client = HipChat::Client.new api_token, api_version: 'v2'
      @room = room
      @user = user
    end

    def in
      entry = Timetrap::Timer.active_entry
      image = shield 'started', 'green'

      send 'green', <<-MSG
        <img src="#{image}" /> 
        <strong>#{entry.note}</strong>
      MSG
    end

    def out
      entry = Timetrap::Timer.last_checkout
      duration = format_seconds entry.duration
      image = shield 'stopped', 'red'

      send 'red', <<-MSG
        <img src="#{image}" /> 
        <strong>#{entry.note}</strong> after <em>#{duration}</em>
      MSG
    end

    def resume
      entry = Timetrap::Timer.active_entry
      image = shield 'resumed', 'yellow'

      send 'yellow', <<-MSG
        <img src="#{image}" /> 
        <strong>#{entry.note}</strong>
      MSG
    end

    private

    def shield(subject = @user, status, color)
      "http://img.shields.io/badge/#{subject}-#{status}-#{color}.svg?style=flat"
    end

    def send(color, msg)
      @client[@room].send 'Timetrap', msg, color: color
    end

  end
end
