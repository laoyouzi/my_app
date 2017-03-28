class SurveysController < ApplicationController
  layout nil
  def new
    @survey = Survey.new
    2.times do
      question = @survey.questions.build
      question.answers.build
    end
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      flash[:notice] = "Successfully create survey"
      redirect_to @survey
    else
      render :action => new
    end
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def update
  end

  def edit
  end

  private

  def survey_params
    params.require(:survey).permit(:name,
                                   questions_attributes: [:id, :content, :_destroy, answers_attributes: [:content, :_destroy]])
  end
end
