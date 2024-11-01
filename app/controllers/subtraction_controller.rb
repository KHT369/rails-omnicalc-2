class SubtractionController < ApplicationController
  def show_subtraction_form
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def subtract_these
    @first_numb = params.fetch("first_num").to_f
    @second_numb = params.fetch("second_num").to_f

    @result = @second_numb - @first_numb 

    render({ :template => "subtraction_templates/sub_results" })
  end
end
