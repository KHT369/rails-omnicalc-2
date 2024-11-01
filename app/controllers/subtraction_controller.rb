class SubtractionController < ApplicationController
  def show_subtraction_form
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def subtract_these
    @first_numb = params.fetch("first_number").to_f
    @second_numb = params.fetch("second_number").to_f

    @result = @second_numb - @first_numb 

    render({ :template => "subtraction_templates/sub_results" })
  end
end
