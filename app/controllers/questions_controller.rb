class QuestionsController < ApplicationController
  POSSIBLE_RESPONSES = ['It is certain', 'It is decidedly so.', 'Yes definitely.', 'Without a doubt.', ' You may rely on it.','As I see it, yes.','Most likely.','Outlook good.','Yes.', 'Signs point to yes.','Reply hazy, try again.', 'Ask again later.', 'Better not tell you now.', 'Cannot predict now.', 'Concentrate and ask again.', "Don't count on it.", 'My reply is no.', 'My sources say no.', 'Outlook not so good.', 'Very doubtful.']

  ASK_BEGINNINGS = ['are', 'will', 'is', 'should', 'am', 'did', 'does']

  def ask
  end

  def reply
    if params[:question] != "" &&  params[:question].downcase.starts_with?(*ASK_BEGINNINGS)
      @reply = POSSIBLE_RESPONSES.sample
    else
      @reply = "Please ask a yes or no question that deals with your future decisions"
    end
  end
end
