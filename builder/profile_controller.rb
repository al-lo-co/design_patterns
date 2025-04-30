# frozen_string_literal: true

require_relative './base_controller'

class ProfileController < BaseController
  def index
    builder = build @params[:format]
    builder.body = @params[:body]
    builder.content_type!
    builder.etag!
    builder.created!
    response = builder.response

    puts response
  end

  def delete
    builder = build @params[:format]
    builder.content_type!
    builder.deleted!
    response = builder.response

    puts response
  end
end

params = { body: 'This is some data', format: :html }

ProfileController.new(params: params).index

ProfileController.new(params: { format: :html }).delete
