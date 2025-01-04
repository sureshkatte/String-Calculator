class CalculatorsController < ApplicationController
  def add
    input = params[:input]
    result = Calculator.add(input)
    render json: { result: result }

  rescue => e
    render  json: { error: e.message }, status: :unprocessable_entity
  end
end
