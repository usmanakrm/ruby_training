class CalController < ApplicationController
	def calView
		@title = "blah blah"
	end
	def operation
		@operator = params[:operator]
		if @operator == "+"
			@result = params[:num1].to_i + params[:num2].to_i
		elsif @operator == "-"
			@result = params[:num1].to_i - params[:num2].to_i
		elsif @operator == "/"
			@result = params[:num1].to_i / params[:num2].to_i
		elsif @operator == "*"
			@result = params[:num1].to_i * params[:num2].to_i
		elsif @operator == "%"
			@result = params[:num1].to_i % params[:num2].to_i
		else	
			@result = "something goes wrong! :p"
		end
		render json: {"result" => @result}
	end
end
