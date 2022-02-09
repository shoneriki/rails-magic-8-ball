class QuestionsController < ApplicationController
  POSSIBLE_RESPONSES = ['It is certain', 'It is decidedly so.', 'Yes definitely.', 'Without a doubt.', ' You may rely on it.','As I see it, yes.','Most likely.','Outlook good.','Yes.', 'Signs point to yes.','Reply hazy, try again.', 'Ask again later.', 'Better not tell you now.', 'Cannot predict now.', 'Concentrate and ask again.',]

  def ask
  end

  def reply
    if params[:question] != ""
      @reply = POSSIBLE_RESPONSES.sample
    else
      @reply = "ask something"
    end
  end
end
