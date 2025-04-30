# frozen_string_literal: true

require 'json'
require_relative './status'

class Response
  attr_accessor :status, :body, :headers

  def initialize
    @status = Status.new
    @headers = {}
    @body = body
  end

  def to_s
    <<~HTTP
      #{@status}
      #{headers_string}

      #{format_body}
    HTTP
  end

  private

  def headers_string
    @headers.map { |k, v| "#{k}: #{v}" }.join("\n")
  end

  def format_body
    return '' if @body.nil?

    if @headers['Content-Type'] == 'text/html'
      html_body
    else
      json_body
    end
  end

  def html_body
    "<html><body>#{@body}</body></html>"
  end

  def json_body
    { content: @body }.to_json
  end
end
