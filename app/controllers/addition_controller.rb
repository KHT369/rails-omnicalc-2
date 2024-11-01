class AdditionController < ApplicationController
  def show_addition_form
    render({ :template => "addition_templates/addition_form" })
  end

  def add_these
    @first_numb = params.fetch("first_number").to_f
    @second_numb = params.fetch("second_number").to_f

    @result = @first_numb + @second_numb

    render({ :template => "addition_templates/add_results" })
  end
end
